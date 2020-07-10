<?php
// db functions of Advertisement page are declared here
class AdvertisementModel extends Database {
    private static $db=null;

    function __construct(){
        self::$db=New Database();
    }
    
    public static function getAds(){
        $res=null;
        $res=self::$db->query(
            'SELECT users.name, advertisements.title 
             FROM users, advertisements 
             WHERE users.id=advertisements.userID
             ORDER BY users.name');
        return $res;
    }

    public static function getParamAds(){
        $res=null;
        $res=self::$db->queryParam(
            'SELECT users.name, advertisements.title 
             FROM users, advertisements 
             WHERE users.id = advertisements.userID
             ORDER BY users.name');
        return $res;
    }
    //I could write more functions for CRUD
}
?>