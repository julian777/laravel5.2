
        <?php
        if (isset($_POST['update'])) {
            $dbhost = 'localhost';
            $dbuser = 'root';
            $dbpass = 'root';
            $dbname = "test_db";

            $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

            if (!$conn) {
                die('Could not connect: ' . mysql_error());
            }

            $emp_id = $_POST['emp_id'];
            $emp_salary = $_POST['emp_salary'];

            $sql = "UPDATE employee " . "SET emp_salary = $emp_salary " .
                    "WHERE emp_id = $emp_id";
            //  mysql_select_db('test_db');
            $retval = $conn->query($sql);
            //$retval = mysql_query( $sql, $conn );

            if (!$retval) {
                die('Could not update data: ' . mysql_error());
            }
            echo "Updated data successfully\n";
            $conn->close();
            // mysql_close($conn);
            header("Location: http://localhost/aplicaciones/public/consulta.php");
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
                    <label for="emp_id">ID:</label>
                    <input type="text" class="form-control" name="emp_id"  id = "emp_id" />
                </div>

                <div class="form-group" >
                    <label for="emp_id">Cantidad BTC:</label>
                    <input type="text" class="form-control" name="emp_salary"  id = "emp_salary"/>
                </div>

                <div>
                    <button type="submit" name="update" id="update" value="update" class="btn btn-primary">Registrarme</button>
                </div>
            </form>
            <?php
        }
        ?>

