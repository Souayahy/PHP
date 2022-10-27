<link rel="stylesheet" href="login.css">

<form action="" method="post">
            <h1>Login</h1>
 
            
            <i class="fa fa-user" aria-hidden="true"></i>
            <input type="text" placeholder="Username"
                style="text-align: center;" name="username" value="">
            
 
            
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" placeholder="Password"
                    style="text-align: center;" name="mdp" value=""><br>
        
 
            <input class="button" type="submit"
                     name="username" value="Sign In">
        </div>
    </form>




<?php


 
include_once('admin.php');

  
function test_input($data) {
     
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
  
if ($_SERVER["REQUEST_METHOD"] == "POST") {
     
    $username = test_input($_POST["id"]);
    $password = test_input($_POST["mdp"]);
    $stmt = $conn->prepare("SELECT * FROM admin");
    $stmt->execute();
    $users = $stmt->fetchAll();
     
    foreach($users as $user) {
        
        if(($user['id'] == $username) &&
            ($user['mdp'] == $password)) {
                header("location: adminpage.php");
        }
        else {
            echo "<script language='javascript'>";
            echo "alert('WRONG INFORMATION')";
            echo "</script>";
            die();
            
        }
       
    }
}
 
?>