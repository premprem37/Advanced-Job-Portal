<?php
$uploadDirectory = 'uploads/'; // Directory where uploaded videos will be stored

if ($_FILES['video']['error'] === UPLOAD_ERR_OK) {
    $tempFile = $_FILES['video']['tmp_name'];
    $targetFile = $uploadDirectory . basename($_FILES['video']['name']);

    // Move the uploaded file to the desired location
    if (move_uploaded_file($tempFile, $targetFile)) {
        echo "The file " . basename($_FILES['video']['name']) . " has been uploaded.";
   header("location:../");
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
} else {
    echo "Sorry, there was an error uploading your file.";
}
?>