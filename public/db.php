<?php
$servername = "localhost";
// $username = "akonuser";
$username = "trgaz_akonuser";
$password = "akonuserpass";
// $dbname = "akon";
$dbname = "trgaz_akon";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, 'utf8');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$tablename = htmlspecialchars($_GET["tablename"]);

if ($tablename === nomenclaturestest) {
    $channel1 = htmlspecialchars($_GET["channel1"]); 
    $channel2 = htmlspecialchars($_GET["channel2"]);
    $channel3 = htmlspecialchars($_GET["channel3"]);  

    if ($channel1 && $channel2 && $channel3) {
        $sql = "SELECT * FROM `$tablename` WHERE (channels LIKE '$channel1,$channel2,$channel3' AND channels LIKE '%,%,%') OR (channels LIKE '$channel1,$channel2' AND channels NOT LIKE '%,%,%') ";
    } else {        
        echo '
            [
                {"message":"Channel parameters are incorrect"}
            ]
        ';
    }    
    
} else {
    $sql = "SELECT * FROM `$tablename`";
}

if ($sql) {
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    $emparray = array();
    while($row = $result->fetch_assoc()) {
        $emparray[] = $row;
    }
    echo json_encode($emparray);
    } else {
        echo '[
            {
                "message":"0 results"        
            }
        ]';
    }
}

$conn->close();
?>