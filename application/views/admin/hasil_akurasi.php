<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Hasil Akurasi</h1>
        </div>
        <!-- <a href="<?= base_url('admin/transaksi/customer'); ?>" class="btn btn-primary mb-3">Tambah Data</a> -->

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
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div class="col-md-10 col-lg-10">
                            <h4>Hasil Pengujian Accuracy, Precission, dan Recall</h4>
                        </div>
                        <div class="col-md-2 col-lg-2">
                            <button type="reset" class="btn btn-success">Uji Akurasi</button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div id="accordion">
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-1" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K3</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-1" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>20%</td>
                                                <td>33%</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-2">
                                    <h4>Pengujian Menggunakan K5</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-2" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>46%</td>
                                                <td>61%</td>
                                                <td rowspan="3">44%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>40%</td>
                                                <td>37%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>29%</td>
                                                <td>33%</td>
                                                <td>44%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-3" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K7</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-3" data-parent="#accordion">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>65%</td>
                                                <td>92%</td>
                                                <td rowspan="3">69%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>80%</td>
                                                <td>64%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>48%</td>
                                                <td>52%</td>
                                                <td>69%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-4" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K9</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-4" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-5" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K11</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-5" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-6">
                                    <h4>Pengujian Menggunakan K13</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-6" data-parent="#accordion">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-7" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K15</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-7" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header collapsed" role="button" data-toggle="collapse" data-target="#panel-body-8" aria-expanded="false">
                                    <h4>Pengujian Menggunakan K17</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-8" data-parent="#accordion" style="">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-9">
                                    <h4>Pengujian Menggunakan K19</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-9" data-parent="#accordion">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="accordion">
                                <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-10">
                                    <h4>Pengujian Menggunakan K21</h4>
                                </div>
                                <div class="accordion-body collapse" id="panel-body-10" data-parent="#accordion">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col">Preccision</th>
                                                <th scope="col">Recall</th>
                                                <th scope="col">Accuracy</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Positif</th>
                                                <td>48%</td>
                                                <td>78%</td>
                                                <td rowspan="3">48%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Negativ</th>
                                                <td>46%</td>
                                                <td>28%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Netral</th>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr class="bg-warning text-dark bold">
                                                <th scope="row">Rata-rata</th>
                                                <td>...</td>
                                                <td>...</td>
                                                <td>48%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>