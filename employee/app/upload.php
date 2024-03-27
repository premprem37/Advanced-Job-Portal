<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$uploadDirectory = 'uploads/'; // Directory where uploaded videos will be stored

if ($_FILES['video']['error'] === UPLOAD_ERR_OK) {
    $tempFile = $_FILES['video']['tmp_name'];
    $targetFile = $uploadDirectory . basename($_FILES['video']['name']);
//echo "filename".$targetFile;exit;
    // Move the uploaded file to the desired location
    if (move_uploaded_file($tempFile, $targetFile)) {
        echo "The file " . basename($_FILES['video']['name']) . " has been uploaded.";
  // header("location:../");
    
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
    $stmt = $conn->prepare("UPDATE tbl_users SET video_cv='$targetFile' WHERE member_no='$myid'");
    $stmt->execute();
	
	$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE member_no='$myid'");
    $stmt->execute();
    $result = $stmt->fetchAll();

    foreach($result as $row)
    {
     $_SESSION['avatar'] = $row['avatar'];
	 header("location:../");
	} 
    
    
    
    
    
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
} else {
    echo "Sorry, there was an error uploading your file.";
}
?>