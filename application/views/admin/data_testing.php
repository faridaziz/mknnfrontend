<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Data Testing</h1>
        </div>

        <div class="card-body bg-light">
            <form action="<?= base_url('admin/dashboard/importcsv_aksi') ?>" enctype="multipart/form-data" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="form-group">
                            <label for="">Upload File CSV *</label>
                            <div class="custom-file mt-3">
                                <!-- <input type="text" name="file_csv"> -->
                                <input type="file" id="file_csv" name="file_csv" class="custom-file-input form-control-lg <?= form_error('file_csv') ? 'is-invalid' : ''; ?>" autofocus onchange="previewLabel()">
                                <?= form_error('file_csv', '<div class="text-small text-danger">', '</div>') ?>
                                <label class="custom-file-label cfcsv" for="file_csv">Pilih File CSV</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-12">
                        <div class="form-group">
                            <label for=""></label>
                            <div class="custom-file mt-4">
                                <button type="submit" class="btn btn-primary">Import</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <button type="reset" class="btn btn-warning ml-5 mt-5">Download Format CSV</button>
                        <button type="reset" class="btn btn-danger ml-4 mt-5">Hapus Semua Data</button>
                    </div>
                </div>
            </form>
        </div>

        <?php if ($this->session->flashdata('success') != null) : ?>
            <div class="row">
                <div class="col-md-12 mx-0" id="flash" data-flash="<?= $this->session->flashdata('success'); ?>">
                    <div class="alert alert-success alert-dismissible fade show" role="alert" id="alert1">
                        <?php echo $this->session->flashdata('success') ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        <?php endif ?>

        <?php if ($this->session->flashdata('failed') != null) : ?>
            <div class="row">
                <div class="col-md-12 mx-0" id="flash" data-flash="<?= $this->session->flashdata('failed'); ?>">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert" id="alert1">
                        <?php echo $this->session->flashdata('failed') ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        <?php endif ?>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped" id="table-1">
                                <thead>
                                    <tr>
                                        <th width="20px">
                                            No.
                                        </th>
                                        <th>Username</th>
                                        <th>Tweet Kotor</th>
                                        <th>Tweet Bersih</th>
                                        <th>Label Awal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1;
                                    foreach ($mobil as $mb) : ?>
                                        <tr>
                                            <td><?= $no++; ?></td>
                                            <td><?= $mb['merek']; ?></td>
                                            <td><?= $mb['nama_tipe']; ?></td>
                                            <td><?= $mb['tahun']; ?></td>
                                            <td><?= $mb['no_plat']; ?></td>
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