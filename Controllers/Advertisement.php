<?php
//Controller of Advertisements page
class Advertisement {
    function __construct(){
        $this->view=new View();
        //calls the function of getting datas from database, and set it for the view --Instantiation
        require('Model/AdvertisementModel.php');
        $adModel=new AdvertisementModel();
        $this->view->ads=$adModel->getParamAds();
        //prints out View
        $this->view->show('advertisement');
    }
}
?>