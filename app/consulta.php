 
    <link href="../public/css/app.css" rel="stylesheet" type="text/css"/>

        </br>
        </br>
        </br>
        </br>

        </br>
        </br>
        </br>
        </br>

        </br>
        </br>
        </br>
        </br>
    <center><p>

            <?php
            $servername = "localhost";
            $username = "root";
            $password = "root";
            $dbname = "prueba";

// Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT correo, bitcoins, dolar FROM billetera";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "Cliente: " . $row["correo"] . "</br> Saldo en USD: " . $row["dolar"] . "</br> Saldo en BTC: " . $row["bitcoins"] . "<br>";
                }
            } else {
                echo "0 results";
            }
            $conn->close();
            ?>

        </p></center> 
