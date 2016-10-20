<link href="../../../public/css/app.css" rel="stylesheet" type="text/css"/>
        <?php
        if (isset($_POST['update'])) {
            $dbhost = 'localhost';
            $dbuser = 'root';
            $dbpass = 'root';
            $dbname = "prueba";

            $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

            if (!$conn) {
                die('Could not connect: ' . mysql_error());
            }

            $correo = $_POST['correo'];
            $bitcoin = $_POST['bitcoin'];
//
//            $sql = "UPDATE billetera SET bitcoins = '$bitcoin'
//                    WHERE correo = '$correo'";
//               echo "jey\n".$correo." ".$bitcoin;
//               
//               
//               
 $sql = " call getCompra('$correo','$bitcoin')";
            //  mysql_select_db('test_db');
            $retval = $conn->query($sql);
            //$retval = mysql_query( $sql, $conn );

            if (!$retval) {
                die('Could not update data: ' . mysql_error());
            }
            echo "Updated data successfully\n";
            $conn->close();
            // mysql_close($conn);
            header("Location: http://localhost/Autenticacion/app/consulta.php");
            die();
        } else {
            ?>
            </br>
            </br>
            </br>
            </br>
            </br>

            <form method = "post" action = "<?php $_PHP_SELF ?>">

                <div class="form-group" >
                    <label for="correo">Correo:</label>
                    <input type="text" class="form-control" name="correo"  id = "correo" />
                </div>

                <div class="form-group" >
                    <label for="correo">Cantidad BTC:</label>
                    <input type="text" class="form-control" name="bitcoin"  id = "bitcoin"/>
                </div>

                <div>
                    <button type="submit" name="update" id="update" value="update" class="btn btn-primary">Comprar</button>
                </div>
            </form>
            <?php
        }
        ?>
