<?php
// programmer : M. Irvan Alfi Hidayat
// terakhir update syntax : -

class Hasil extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        check_not_login(); /*pengecekan status login */
        check_admin(); /*pengecekan status level admin atau bukan */
        // load semua model yang dibutuhkan
        $this->load->model('Transaksi_model');
        $this->load->model('User_model');
        $this->load->model('Mobil_model');
    }

    public function proses_pengujian()
    {
        $data['transaksi'] = $this->Transaksi_model->get_all_transaksi();
        $this->template->load('templateAdmin', 'admin/proses_pengujian', $data);
    }

    public function hasil_pengujian()
    {
        $data['transaksi'] = $this->Transaksi_model->get_all_transaksi();
        $this->template->load('templateAdmin', 'admin/hasil_pengujian', $data);
    }

    public function hasil_akurasi()
    {
        $data['transaksi'] = $this->Transaksi_model->get_all_transaksi();
        $this->template->load('templateAdmin', 'admin/hasil_akurasi', $data);
    }

    public function pengujian_akurasi()
    {
    }
}
