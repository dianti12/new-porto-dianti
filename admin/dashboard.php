<?php
session_start();
ob_start();
include 'config/koneksi.php';

$_name = isset($_SESSION['NAME']) ? $_SESSION['NAME'] : '';
// if(isset($_SESSION['NAME'])){ $_name = $_SESSION['name']};
if (!$_name) {
    header("location:index.php?access=failed");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

    <!-- <title>without bootstrap</title> - https://summernote.org/getting-started/#without-bootstrap-lite -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
    <!-- ini link datatables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.3.1/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.3.1/js/dataTables.js"></script>


</head>

<body>


    <div class="wrapper">
        <?php include 'inc/header.php'; ?>
        <div class="content mt-5">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <?php echo isset($_GET['page']) ? str_replace("-", " ", ucfirst($_GET['page'])) : 'Home' ?>
                            </div>
                            <div class="card-body">
                                <?php
                                if (isset($_GET['page'])) {
                                    // jika file ada 
                                    if (file_exists("content/" . $_GET['page'] . ".php")) {
                                        include('content/' . $_GET['page'] . ".php");
                                    } else {
                                        include "content/notfound.php";
                                    }
                                } else {
                                    include 'content/home.php';
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    <!-- <div class="card-header">
                        Dashboard
                    </div>
                    <div class="card-body">

                    </div> -->

                </div>
            </div>
        </div>
    </div>
    <!-- ini file https://summernote.org/getting-started/#without-bootstrap-lite - body -->
    <script>
        $('#summernote').summernote({
            placeholder: 'Hello stand alone ui',
            tabsize: 2,
            height: 120,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ]
        });

        $('#table').DataTable();
    </script>
</body>

</html>