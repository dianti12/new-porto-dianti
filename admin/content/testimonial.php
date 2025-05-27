<?php
    // cara pertama
    // !=1 user tidak boleh ke halaman admin 
    // echo "<h1>Anda tidak berhak kesini !! </h1>";
    // echo "<a href='dashboard.php' class='btn btn-warning'>Kembali</a> ";
    // die;
$query = mysqli_query($config, "SELECT * FROM testimonials ORDER BY id DESC");
$row = mysqli_fetch_all($query, MYSQLI_ASSOC);
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $queryDelete = mysqli_query($config, "DELETE FROM testimonials WHERE id='$id'");
    header("location:?page=testimonial.php&hapus=berhasil");
}
?>
<div class="table-responsive">
    <div align="right" class="mb-3">
        <a href="?page=tambah-testimonial" class="btn btn-primary">Tambah</a>
    </div>
    <table class="table table-bordered table-striped" id="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Judul_testimonial</th>
                <th>Deskripsi_testimonial</th>
              
            </tr>
        </thead>
        <tbody>
            <?php $i = 1;
            foreach ($row as $key => $data): ?>
                <tr>
                    <td><?= $key + 1 ?></td>
                    <td><?= $data['judul_testimoni'] ?></td>
                    <td><?= $data['deskripsi_testimoni'] ?></td>
                    
                    <td>
                        <a href="?page=tambah-testimonial&edit=<?php echo $data['id'] ?>" class="btn btn-success btn-sm">Edit</a>
                        <a onclick="return confirm('Are you sure??')"
                            href="?page=tambah-testimonial&delete=<?php echo $data['id'] ?>" class="btn btn-warning btn-sm">Delete</a>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>