<?php
include 'config/koneksi.php';



//select * from users, levels seakan akan nyari dua 
//levels.id, users.id
$query = mysqli_query($config, "SELECT * FROM services 
ORDER BY id DESC");
$row = mysqli_fetch_all($query, MYSQLI_ASSOC);


if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $queryDelete = mysqli_query($config, "DELETE FROM services WHERE id='$id'");
    header("location:?page=services&hapus=berhasil");
}
?>
<div class="table-responsive">
    <div align="right" class="mb-3">
        <a href="?page=tambah-services" class="btn btn-primary">Tambah</a>
    </div>
    <table class="table table-bordered table-striped" id="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Ikon</th>
                <th>judul</th>
                <th>deskripsi</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1;
            foreach ($row as $key => $data): ?>
                <tr>
                    <!-- <td><?= $i++ ?></td> -->
                    <td><?= $key + 1 ?></td>
                    <td><?= $data['photo'] ?></td>
                    <td><?= $data['title'] ?></td>
                    <td><?= $data['description'] ?></td>
                    <td>
                        <a href="?page=tambah-services&edit=<?php echo $data['id'] ?>" class="btn btn-success btn-sm">Edit</a>
                        <a onclick="return confirm('Are you sure??')"
                            href="?page=services&delete=<?php echo $data['id'] ?>" class="btn btn-warning btn-sm">Delete</a>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>


</div>