<?php
require_once 'include/convert.php';

if (isset($_FILES) && !empty($_FILES)) {
    // Check csv file
    $file = $_FILES['input_data']['tmp_name'];

    Convert::ConvertDataFromFile($file);

    die;
}
?>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Convert tools</title>
    </head>
    <body>
        <div class="container">
            <form method="post" enctype="multipart/form-data">
                <label>Choose csv</label><input type="file" name="input_data"/>
                <button type="submit">Convert</button>
            </form>
            <div class="content-wrapper">

            </div>
        </div>
    </body>
</html>