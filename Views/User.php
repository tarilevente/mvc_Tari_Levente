<!-- Notice that not all user have advertisement -->
<!DOCTYPE html>
<html lang="hu">
    <head>
      <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="contain">
            <h2>Felhasználók</h2>
        </div>
        <div class="contain">
            <div>
                <a href="index">Vissza</a>
            </div>
            <div>
                <a href="advertisement">Hirdetések</a><br>
            </div>
        </div>
        <div class="contain">
            <?php $users=$this->users; 
                if(!is_array($users)){die("<h3 class='error'>Valami hiba történt!</h3> ");}
            ?>
            <table>
                <thead>
                    <tr>
                        <th>Hirdetők listája</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    for($i=0;$i<sizeof($users);$i++){
                        echo '<tr>
                                <td>'. $users[$i]['name'].'</td>
                                </tr>';
                    }
                ?>
                </tbody>
            </table>
        </div>
    </body>
</html>