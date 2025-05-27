<?php
include "config/koneksi.php";

if (isset($_POST['simpan'])) {
    $judul_testimoni = $_POST['judul_testimoni'];
    $deskripsi_testimoni = $_POST['deskripsi_testimoni'];
 

    $query = mysqli_query($config, "INSERT INTO testimonials (judul_testimoni, deskripsi_testimoni)
     VALUES ('$judul_testimoni','$deskripsi_testimoni')");
    if ($query) {
        header("location:?page=testimonials&tambah=berhasil");
    }
}

$header = isset($_GET['edit']) ? "Edit" : "Tambah";
$id_user = isset($_GET['edit']) ? $_GET['edit'] : '';
$queryEdit = mysqli_query($config, "SELECT * FROM testimonials WHERE id='$id_user'");
$rowEdit  = mysqli_fetch_assoc($queryEdit);

if (isset($_POST['edit'])) {
    $judul_testimoni = $_POST['judul_testimoni'];
    $deskripsi_testimoni = $_POST['deskripsi_testimoni'];


    $queryUpdate = mysqli_query($config, "UPDATE testimonials SET judul_testimoni='$judul_testimoni', deskripsi_testimoni='$deskripsi_testimoni'   WHERE id='$id_user'");
    if ($queryUpdate) {
        header("location:?page=testimonials&ubah=berhasil");
    }
}


?>

<form action="" method="post">

    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="">Judul_testimonial </label>
        </div>
        <div class="col-sm-10">
            <input required name="judul_testimoni" type="text"
                class="form-control"
                placeholder="Masukkan ikon anda"
                value="<?= isset($_GET['edit']) ? $rowEdit['judul_testimoni'] : '' ?>">
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="">Judul </label>
        </div>
        <div class="col-sm-10">
            <input required name="deskripsi_testimoni" type="text"
                class="form-control"
                placeholder="Masukkan deskripsi"
                value="<?= isset($_GET['edit']) ? $rowEdit['deskripsi_testimoni'] : '' ?>">
        </div>
    </div>
    
    </div>
    <div class="mb-3 row">
        <div class="col-sm-12">
            <button name="<?= isset($_GET['edit']) ? 'edit' : 'simpan'; ?>" type="submit"
                class="btn btn-primary">Simpan</button>
        </div>
    </div>
</form>