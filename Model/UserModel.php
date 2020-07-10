<?php
// db functions of Users page are declared here
class UserModel extends Database {
    private static $db=null;

    function __construct(){
        self::$db=New Database();
    }
    
    public static function getUsers(){
        $res=null;
        $res=self::$db->query(
            'SELECT users.name
             FROM users');
        return $res;
    }
}
?>