<?php

if (isset($_POST['simpan'])) {
    $photo = $_POST['photo'];
    $title = $_POST['title'];
    $description = $_POST['description'];


    $query = mysqli_query($config, "INSERT INTO services (photo, title, description)
     VALUES ('$photo','$title','$description')");
    if ($query) {
        header("location:?page=services&tambah=berhasil");
    }
}

$header = isset($_GET['edit']) ? "Edit" : "Tambah";
$id_user = isset($_GET['edit']) ? $_GET['edit'] : '';
$queryEdit = mysqli_query($config, "SELECT * FROM services WHERE id='$id_user'");
$rowEdit  = mysqli_fetch_assoc($queryEdit);

if (isset($_POST['edit'])) {
    $photo = $_POST['photo'];
    $title = $_POST['title'];
    $description = $_POST['description'];


    $queryUpdate = mysqli_query($config, "UPDATE services SET photo='$photo', title='$title', description='$description' 
    WHERE id='$id_user'");
    if ($queryUpdate) {
        header("location:?page=services&ubah=berhasil");
    }
}


?>

<form action="" method="post">

    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="">Photo </label>
        </div>
        <div class="col-sm-10">
            <input required name="photo" type="text"
                class="form-control"
                placeholder="Masukkan ikon anda"
                value="<?= isset($_GET['edit']) ? $rowEdit['photo'] : '' ?>">
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="">Judul </label>
        </div>
        <div class="col-sm-10">
            <input required name="title" type="text"
                class="form-control"
                placeholder="Masukkan judul"
                value="<?= isset($_GET['edit']) ? $rowEdit['title'] : '' ?>">
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="">Deskripsi</label>
        </div>
        <div class="col-sm-10">
            <input required name="description" type="text"
                class="form-control"
                placeholder="Masukkan deskripsi"
                value="<?= isset($_GET['edit']) ? $rowEdit['description'] : '' ?>">
        </div>
    </div>
    <div class="col-sm-10">

    </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-12">
            <button name="<?= isset($_GET['edit']) ? 'edit' : 'simpan'; ?>" type="submit"
                class="btn btn-primary">Simpan</button>
        </div>
    </div>
</form>