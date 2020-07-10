<?php
//Controller of Users page
class User {
    function __construct(){
        $this->view=new View();
        //calls the function of getting datas from database, and set it for the view
        require('Model/UserModel.php');
        $uModel=new UserModel();
        $this->view->users=$uModel->getUsers();
        //prints out View
        $this->view->show('User');
    }
}
?>