<?php
// Connect to the database
// I used mysqli, xampp -> localhost
class Database {
    private static $con = null;
    private static $host='localhost';
    private static $user='root';
    private static $pwd='';
    private static $db='mvcdatabase';

    function __construct(){
      try {
        self::$con = new mysqli(self::$host, self::$user, self::$pwd, self::$db, "3306");
        if(self::$con -> connect_errno){
          $_SESSION['error']='<h3 class="error">Nem sikerült csatlakozni az adatbázishoz.</h3>';
          header('Location:index.php');
        }
      } catch (Exception $ex) { $_SESSION['error']=$ex->getMessage(); header('Location:index.php'); }
    }//endof construct

    function query($sql){
      $output = null;
      try {
        $result = self::$con->query($sql);
        if($result){
            while($row=mysqli_fetch_assoc($result)){
                $output[]=$row;
            }
        }else{
          $output="Hiba";
        }
      } catch (Exception $ex) { $_SESSION['error']=$ex->getMessage(); header('Location:index.php'); }
      return $output;
    }//endof query

    //against sql injection, a better way usually
    function queryParam($sql){
      $output = null;
      $outputName = null;
      $outputTitle = null;
        try{
            $stmt=self::$con->prepare($sql);
            if(!$stmt->execute()){$output="Hiba";}else{
            $stmt->store_result();
            $stmt->bind_result($outputName,$outputTitle);
            while($stmt->fetch()){
              $aktArray['name']=$outputName;
              $aktArray['title']=$outputTitle;
              $output[]=$aktArray;
            }
          }
        }catch( Exception $ex ){ $_SESSION['error']=$ex->getMessage(); header('Location:index.php'); }
        return $output;
    }//endof queryParam
    //may other function could be here to use (CRUD)
}



