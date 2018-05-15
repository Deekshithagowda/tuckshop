
<?php // upload.php
echo <<<_END
<html><head><title>PHP Form Upload</title></head><body>
<form method='post' action='upload.php' enctype='multipart/form-data'>
Select File: <input type='file' name='filename' size='10'>
<input type='submit' value='Upload'>
</form>
_END;
if ($_FILES)
{
$name = $_FILES['filename']['name'];
move_uploaded_file($_FILES['filename']['tmp_name'], $name);
echo "Uploaded image '$name'<br><img src='$name'>";
}



$_FILES['file']['name'] The name of the uploaded file (e.g., smiley.jpg)
$_FILES['file']['type'] The content type of the file (e.g., image/jpeg)
$_FILES['file']['size'] The file’s size in bytes
$_FILES['file']['tmp_name'] The name of the temporary file stored on the server
$_FILES['file']['error'] The error code resulting from the file upload



<?php // upload2.php
echo <<<_END
<html><head><title>PHP Form Upload</title></head><body>
<form method='post' action='upload2.php' enctype='multipart/form-data'>
Select a JPG, GIF, PNG or TIF File:
<input type='file' name='filename' size='10'>
<input type='submit' value='Upload'></form>
_END;
if ($_FILES)
{
$name = $_FILES['filename']['name'];
switch($_FILES['filename']['type'])
{
case 'image/jpeg': $ext = 'jpg'; break;
case 'image/gif': $ext = 'gif'; break;
case 'image/png': $ext = 'png'; break;
case 'image/tiff': $ext = 'tif'; break;
default: $ext = ''; break;
}
if ($ext)
{
$n = "image.$ext";
move_uploaded_file($_FILES['filename']['tmp_name'], $n);
echo "Uploaded image '$name' as '$n':<br>";
echo "<img src='$n'>";
}
else echo "'$name' is not an accepted image file";
}
else echo "No image has been uploaded";
echo "</body></html>";
?>
