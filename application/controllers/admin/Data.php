<?php
// programmer : M. Irvan Alfi Hidayat
// terakhir update syntax : -

class Data extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        check_not_login(); /*pengecekan status login */
        check_admin(); /*pengecekan status level admin atau bukan */
        // load semua model yang dibutuhkan
        $this->load->model('Data_model');
        $this->load->model('Mobil_model');
        $this->load->model('Tipe_model');
        $this->load->model('Fitur_model');
    }

    public function training()
    {
        $data['data_training'] = $this->Data_model->get_all_data_training();
        $this->template->load('templateAdmin', 'admin/data_training', $data);
    }

    public function testing()
    {
        $data['data_testing'] = $this->Data_model->get_all_data_testing();
        $this->template->load('templateAdmin', 'admin/data_testing', $data);
    }

    public function import_csv_train()
    {
    }

    public function download_template_train()
    {
    }

    public function hapus_semua_data_train()
    {
    }

    public function import_csv_test()
    {
    }

    public function download_template_test()
    {
    }

    public function hapus_semua_data_test()
    {
    }



    public function delete_mobil($id)
    {
        $this->hapus_gambar_mobil($id);
        $this->Mobil_model->delete_mobil($id);
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata('success', '<b>Data User berhasil dihapus!</b> Silahkan cek kembali data Anda.');
            redirect('admin/mobil');
        } else {
            $this->session->set_flashdata('failed', '<b>Data User gagal dihapus!</b> Silahkan lakukan kembali.');
            redirect('admin/mobil');
        }
    }

    // function untuk mengupload foto
    private function upload_gambar_mobil()
    {
        $config['upload_path']    = './assets/upload/car/';
        $config['allowed_types']  = 'jpg|jpeg|png';
        $config1['detect_mime']   = TRUE;
        $config['max_size']       = 5120;
        $config['file_name']      = 'car-' . date('dmy') . '-' . substr(md5(rand()), 0, 10);

        $this->upload->initialize($config);
        $uploadGambar = $this->upload->do_upload('gambar');
        $namaGambar   = $this->upload->data('file_name');

        if ($uploadGambar) {
            return $namaGambar;
        } else {
            $this->session->set_flashdata('failed', "<b>Eror !</b> File foto yang dimasukkan tidak sesuai, silahkan pilih gambar yang lain.");
            redirect('admin/mobil/tambah_mobil');
        }
    }

    //funtcion untuk menghapus foto
    private function hapus_gambar_mobil($id)
    {
        $mobil = $this->Mobil_model->get_mobil_by_id($id);
        $fotoMobil = $mobil['gambar'];

        $target_file = 'assets/upload/car/' . $fotoMobil;
        unlink($target_file);
    }
}
