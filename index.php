<?php
session_start();
//Print out errors, if exists
if(isset($_SESSION['error']) && !empty($_SESSION['error'])){
    $error=$_SESSION['error'];
    echo $error;
    unset($_SESSION['error']);
}
//Get the URL, and save
if( isset($_GET['url']) ) { $url = $_GET['url']; } else { $url=null; }
    //Init Classes - I use __autoload, in case of many files exists, it's the most practical way to require
    function __autoload($class){
        if(file_exists('Classes/'.$class.'.php')){
            require('Classes/'.$class.'.php');
        }
}
//Print the proper content
if(file_exists('Controllers/'.$url.'.php')){
    require 'Controllers/'.$url.'.php';
    $controller=new $url;
} else {
    require 'Controllers/Index.php';
    $controller=new Index;
}
?>