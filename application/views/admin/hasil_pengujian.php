<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Hasil Pengujian</h1>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped" id="table-1" style="font-size: 10px !important;">
                                <thead>
                                    <tr>
                                        <th width="20px">No.</th>
                                        <th>Username</th>
                                        <th>Tweet kotor</th>
                                        <th>Tweet bersih</th>
                                        <th>Label Awal</th>
                                        <th>Hasil K3</th>
                                        <th>Hasil K5</th>
                                        <th>Hasil K7</th>
                                        <th>Hasil K9</th>
                                        <th>Hasil K11</th>
                                        <th>Hasil K13</th>
                                        <th>Hasil K15</th>
                                        <th>Hasil K17</th>
                                        <th>Hasil K19</th>
                                        <th>Hasil K21</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1;
                                    foreach ($transaksi as $tr) : ?>
                                        <tr>
                                            <td><?= $no++; ?>.</td>
                                            <td><?= $tr['nama']; ?></td>
                                            <td><?= $tr['nama']; ?></td>
                                            <td><?= $tr['nama']; ?></td>
                                            <td><?= $tr['merek']; ?> (<?= $tr['nama_tipe']; ?>)</td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                            <td><?= $tr['no_plat']; ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>