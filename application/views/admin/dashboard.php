<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Dashboard</h1>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="card card-statistic-2">
          <div class="card-stats">
            <div class="card-stats-title">Dataset Pengujian
            </div>
            <div class="card-stats-items">
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">300</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Positif</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">350</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Negativ</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">350</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Netral</b></div>
              </div>
            </div>
          </div>
          <div class="card-icon shadow-primary bg-primary">
            <i class="fas fa-file"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Dataset</h4>
            </div>
            <div class="card-body">
              1000
            </div>
          </div>
        </div>
      </div>
      <!-- card data train  -->
      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="card card-statistic-2">
          <div class="card-stats">
            <div class="card-stats-title">Data Training
            </div>
            <div class="card-stats-items">
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">200</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Positif</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">200</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Negativ</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">200</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Netral</b></div>
              </div>
            </div>
          </div>
          <div class="card-icon shadow-success bg-success">
            <i class="fas fa-file"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total</h4>
            </div>
            <div class="card-body">
              600
            </div>
          </div>
        </div>
      </div>
      <!-- card data testing  -->
      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="card card-statistic-2">
          <div class="card-stats">
            <div class="card-stats-title">Data Testing
            </div>
            <div class="card-stats-items">
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">49</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Positif</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">188</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Negativ</b></div>
              </div>
              <div class="card-stats-item">
                <div class="card-stats-item-count" style="font-size: 13px">163</div>
                <div class="card-stats-item-label" style="font-size: 10px"><b>Netral</b></div>
              </div>
            </div>
          </div>
          <div class="card-icon shadow-warning bg-warning">
            <i class="fas fa-file"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total</h4>
            </div>
            <div class="card-body">
              400
            </div>
          </div>
        </div>
      </div>
      <!-- card k yang digunakan -->
      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="card card-statistic-2">
          <div class="card-stats">
            <div class="card-stats-title">K Yang Digunakan
            </div>
            <div class="card-stats-items">
              <div class="card-stats-item" style="width: calc(100%);">
                <p class="mr-2">K3, K5, K7, K9, K11, K13, K15, K17, K19, K21</p>
              </div>
            </div>
          </div>
          <div class="card-icon shadow-primary bg-primary">
            <i class="fas fa-archive"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total K</h4>
            </div>
            <div class="card-body">
              10
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <?php if ($this->session->flashdata('failed') != null) : ?>
        <div class="row mt-2">
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

      <div class="card-body">
        <form action="<?= base_url('admin/dashboard/importcsv_aksi') ?>" enctype="multipart/form-data" method="post">
          <div class="row">
            <div class="col-lg-10 col-md-10">
              <div class="form-group">
                <label for="">Crawling Data Tweet</label>
                <div class="custom-file mt-3">
                  <!-- <input type="text" name="file_csv"> -->
                  <input type="text" name="keyword" class="form-control" placeholder="Ketik keyword yang dicari. ex: Windows11" value="">
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-md-2">
              <div class="form-group">
                <label for=""></label>
                <div class="coutom-file mt-4">
                  <button type="submit" class="btn btn-primary">Crawling</button>
                </div>
                <!-- <button type="reset" class="btn btn-warning">Reset</button> -->
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="row">
      <div class="col-12 col-sm-12 col-lg-12">
        <div class="card">
          <div class="card-header">
            <h4>Hasil Pengujian</h4>
          </div>
          <div class="card-body">
            <div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
              <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
              </div>
              <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
              </div>
            </div>
            <canvas id="myChart2" height="219" width="366" style="display: block; width: 366px; height: 219px;" class="chartjs-render-monitor"></canvas>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="card">
          <div class="card-header">
            <h4>Grafik Pendapatan Bulanan</h4>
          </div>
          <div class="card-body">
            <div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
              <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
              </div>
              <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
              </div>
            </div>
            <canvas id="myChart" height="424" width="700" style="display: block; width: 700px; height: 424px;" class="chartjs-render-monitor"></canvas>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="card">
          <div class="card-header">
            <h4>Review Mobil</h4>
          </div>
          <div class="card-body">
            <div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
              <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
              </div>
              <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
              </div>
            </div>
            <canvas id="myChartt" height="220" style="display: block; width: 544px; height: 424px;" width="362" class="chartjs-render-monitor"></canvas>
          </div>
        </div>
      </div>
    </div>

    <br>

  </section>
</div>
<script src="<?= base_url() ?>assets/assets_admin/node_modules/chart.js/dist/Chart.min.js"></script>
<script>
  var ctx = document.getElementById("myChartt").getContext('2d');
  var myChartt = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        <?php
        if (count($review_jelek) > 0) {
          foreach ($review_jelek as $rj) {
            echo '"' . $rj['no_plat'] . '", ';
          }
        }
        ?>
      ],
      datasets: [{
          label: 'Baik',
          data: [
            <?php
            $baik = array();
            if (count($review_baik) > 0) {
              foreach ($review_baik as $rb) {
                if ($rb['baik'] == null) {
                  array_push($baik, '0' . ', ');
                } else {
                  array_push($baik, $rb['baik'] . ', ');
                }
              }

              foreach ($baik as $b) {
                echo $b;
              }
            }
            ?>
          ],
          borderWidth: 2,
          backgroundColor: 'rgba(63,82,227,.8)',
          borderWidth: 0,
          borderColor: 'transparent',
          pointBorderWidth: 0,
          pointRadius: 3.5,
          pointBackgroundColor: 'transparent',
          pointHoverBackgroundColor: 'rgba(63,82,227,.8)',
        },
        {
          label: 'Jelek',
          data: [
            <?php
            $jelek = array();
            if (count($review_jelek) > 0) {
              foreach ($review_jelek as $rj) {
                if ($rj['jelek'] == null) {
                  array_push($jelek, '0' . ', ');
                } else {
                  array_push($jelek,  $rj['jelek'] . ', ');
                }
              }

              foreach ($jelek as $j) {
                echo $j;
              }
            }
            ?>
          ],
          borderWidth: 2,
          backgroundColor: 'rgba(254,86,83,.7)',
          borderWidth: 0,
          borderColor: 'transparent',
          pointBorderWidth: 0,
          pointRadius: 3.5,
          pointBackgroundColor: 'transparent',
          pointHoverBackgroundColor: 'rgba(254,86,83,.8)',
        }
      ]
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          gridLines: {
            // display: false,
            drawBorder: false,
            color: '#f2f2f2',
          },
          ticks: {
            beginAtZero: true,
            stepSize: 1,
          },
          scaleLabel: {
            display: true,
            labelString: 'Jumlah'
          }
        }],
        xAxes: [{
          gridLines: {
            display: false,
            tickMarkLength: 15,
          },
          scaleLabel: {
            display: true,
            labelString: 'Plat Nomor'
          }
        }]
      },
    }
  });
</script>


<script type="text/javascript">
  "use strict";

  var statistics_chart = document.getElementById("myChart").getContext('2d');

  var myChart = new Chart(statistics_chart, {
    type: 'line',
    data: {
      labels: [
        <?php
        if (count($transaksi) > 0) {
          foreach ($transaksi as $tr) {
            echo '"' . date('F', mktime(0, 0, 0, $tr['bulan'], 10)) . '", ';
          }
        }
        ?>
      ],
      datasets: [{
        label: 'Total Penghasilan Bulan ini',
        data: [
          <?php
          if (count($transaksi) > 0) {
            foreach ($transaksi as $tr) {
              echo $tr['total'] . ", ";
            }
          }
          ?>
        ],
        borderWidth: 5,
        borderColor: '#6777ef',
        backgroundColor: 'transparent',
        pointBackgroundColor: '#fff',
        pointBorderColor: '#6777ef',
        pointRadius: 4
      }]
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          gridLines: {
            display: false,
            drawBorder: false,
          },
          ticks: {
            stepSize: 10000000,
            callback: function(value, index, values) {
              var total = 'Rp.' + value;
              total = total.substring(0, 5) + ' jt';
              return total;
            }
          },
          scaleLabel: {
            display: true,
            labelString: 'Total'
          }
        }],
        xAxes: [{
          gridLines: {
            color: '#fbfbfb',
            lineWidth: 2
          },
          scaleLabel: {
            display: true,
            labelString: 'Bulan'
          }
        }]
      },
    }
  });
</script>

<script>
  var ctx = document.getElementById("myChart2").getContext('2d');
  var myChart2 = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ["K3", "K5", "K7", "K9", "K11", "K13", "K15", "K17", "K19", "K21"],
      datasets: [{
          label: 'Baik',
          data: [
            <?php
            $baik = array();
            if (count($review_baik) > 0) {
              foreach ($review_baik as $rb) {
                if ($rb['baik'] == null) {
                  array_push($baik, '0' . ', ');
                } else {
                  array_push($baik, $rb['baik'] . ', ');
                }
              }

              foreach ($baik as $b) {
                echo $b;
              }
            }
            ?>
          ],
          borderWidth: 2,
          backgroundColor: 'rgba(63,82,227,.8)',
          borderWidth: 0,
          borderColor: 'transparent',
          pointBorderWidth: 0,
          pointRadius: 3.5,
          pointBackgroundColor: 'transparent',
          pointHoverBackgroundColor: 'rgba(63,82,227,.8)',
        },
        {
          label: 'Jelek',
          data: [
            <?php
            $jelek = array();
            if (count($review_jelek) > 0) {
              foreach ($review_jelek as $rj) {
                if ($rj['jelek'] == null) {
                  array_push($jelek, '0' . ', ');
                } else {
                  array_push($jelek,  $rj['jelek'] . ', ');
                }
              }

              foreach ($jelek as $j) {
                echo $j;
              }
            }
            ?>
          ],
          borderWidth: 2,
          backgroundColor: 'rgba(254,86,83,.7)',
          borderWidth: 0,
          borderColor: 'transparent',
          pointBorderWidth: 0,
          pointRadius: 3.5,
          pointBackgroundColor: 'transparent',
          pointHoverBackgroundColor: 'rgba(254,86,83,.8)',
        }
      ]
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          gridLines: {
            // display: false,
            drawBorder: false,
            color: '#f2f2f2',
          },
          ticks: {
            beginAtZero: true,
            stepSize: 1,
          },
          scaleLabel: {
            display: true,
            labelString: 'Jumlah'
          }
        }],
        xAxes: [{
          gridLines: {
            display: false,
            tickMarkLength: 15,
          },
          scaleLabel: {
            display: true,
            labelString: 'Plat Nomor'
          }
        }]
      },
    }
  });
</script>