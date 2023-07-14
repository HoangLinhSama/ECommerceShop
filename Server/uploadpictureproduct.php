<?php
  $filePath="picture/product/";  
  $filePath=$filePath.basename($_FILES['pictureProduct']['name']);
  if(move_uploaded_file($_FILES['pictureProduct']['tmp_name'],$filePath))
  {
    echo $_FILES['pictureProduct']['name'];
  }
  else
    echo "Failed !";
?>