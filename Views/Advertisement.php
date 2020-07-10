<!DOCTYPE html>
<html lang="hu">
    <head>
      <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="contain">
            <h2>Hirdetések</h2>
        </div>
        <div class="contain">
            <div>
                <a href="user">Felhasználók</a><br>
            </div>
            <div>
                <a href="index">Vissza</a>
            </div>
        </div>
        <div class="contain">
            <?php $ads=$this->ads;
                if(!is_array($ads)){die("<h3 class='error'>Valami hiba történt!</h3> ");}
            ?>
                <table>
                    <thead>
                        <tr>
                            <th>Feladó</th><th>Hirdetés</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php 
                            for( $i=0 ; $i < sizeof($ads) ; $i++){
                                echo '<tr>
                                        <td>'. $ads[$i]['name'].'</td>
                                        <td>'.$ads[$i]['title'].'</td>
                                    </tr>';
                            }
                    ?>
                    </tbody>
                </table>
        </div>
    </body>
</html>