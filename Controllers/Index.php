<?php
//Controller of Index.php
//No datas from database in this page
//I could use a main Controller Class, but this project too small, I just didn't
class Index {
    function __construct(){
          $this->view=new View();
          //prints out View
          $this->view->show('index');
    }
}
?>