
<?php

$conn = "";
  
try {
    $servername = "localhost:3306";
    $dbname = "Contact";
    $username = "root";
    $password = "sou";
  
    $conn = new PDO(
        "mysql:host=$servername; dbname=Contact",
        $username, $password
    );
     
   $conn->setAttribute(PDO::ATTR_ERRMODE,
                    PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
 
?>