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
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Formulario convertir USD a BTC</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method = "post" action = "<?php $_PHP_SELF ?>">

                            <div class="form-group" >
                                <label for="correo" class="col-md-4 control-label">Correo:</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="correo"  id = "correo" />
                                </div>
                            </div>

                            <div class="form-group" >
                                <label for="correo" class="col-md-4 control-label">Cantidad BTC:</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="bitcoin"  id = "bitcoin"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" name="update" id="update" value="update" class="btn btn-primary">Comprar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
}
?>
