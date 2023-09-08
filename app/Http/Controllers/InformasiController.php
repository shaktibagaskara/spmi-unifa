<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Informasi;
use App\Models\Prodi;
use Illuminate\Support\Facades\Storage;


class InformasiController extends Controller
{

    public function updateInformasi(Request $request, $id)
    {

        $informasi           = Informasi::find($id);
        $validateData = $request->validate([
            'audit' => 'required',
            'nama_prodi' => 'required',
            'ruang_lingkup' => 'required',
            'tipe_audit' => 'required',
            'standar_yg_digunakan' => 'required',
            'tanggal_audit' => 'required',
            'auditee' => 'required',
            'ketua_audit' => 'required'
        ]);
        $prodi = Informasi::where([
            'nama_prodi' => $request->nama_prodi
        ])->count();
        echo $informasi->nama_prodi . '<br>';
        echo $validateData['nama_prodi'] . '<br>';
        // return $prodi;
        if ($informasi->nama_prodi == $validateData['nama_prodi']) {
            $informasi->audit    = $validateData['audit'];
            $informasi->nama_prodi  = $validateData['nama_prodi'];
            $informasi->ruang_lingkup  = $validateData['ruang_lingkup'];
            $informasi->tipe_audit  = $validateData['tipe_audit'];
            $informasi->standar_yg_digunakan  = $validateData['standar_yg_digunakan'];
            $informasi->tanggal_audit  = $validateData['tanggal_audit'];
            $informasi->auditee  = $validateData['auditee'];
            $informasi->ketua_audit  = $validateData['ketua_audit'];
            $informasi->save();
            $request->session()->flash('berhasil', 'Data Berhasil diubah! ');
            return redirect('/informasiAdmin');
        }
        if ($prodi > 0) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Program Studi sudah ada!');
            return redirect('/informasiAdmin');
        }
        $informasi->audit    = $validateData['audit'];
        $informasi->nama_prodi  = $validateData['nama_prodi'];
        $informasi->ruang_lingkup  = $validateData['ruang_lingkup'];
        $informasi->tipe_audit  = $validateData['tipe_audit'];
        $informasi->standar_yg_digunakan  = $validateData['standar_yg_digunakan'];
        $informasi->tanggal_audit  = $validateData['tanggal_audit'];
        $informasi->auditee  = $validateData['auditee'];
        $informasi->ketua_audit  = $validateData['ketua_audit'];
        $informasi->save();
        $request->session()->flash('berhasil', 'Data Berhasil diubah! ');
        return redirect('/informasiAdmin');
    }

    public function tambahInformasi(Request $request)
    {
        $prodi = Informasi::where([
            'nama_prodi' => $request->nama_prodi
        ])->count();
        // echo $request->audit . '<br>';
        // echo $request->nama_prodi . '<br>';
        // echo $request->ruang_lingkup . '<br>';
        // echo $request->tipe_audit . '<br>';
        // echo $request->standar_yg_digunakan . '<br>';
        // echo $request->tanggal_audit . '<br>';
        // echo $request->auditee . '<br>';
        // echo $request->ketua_audit;
        // return;
        $validateData = $request->validate([
            'audit' => 'required',
            'nama_prodi' => 'required',
            'ruang_lingkup' => 'required',
            'tipe_audit' => 'required',
            'standar_yg_digunakan' => 'required',
            'tanggal_audit' => 'required',
            'auditee' => 'required',
            'ketua_audit' => 'required'
        ]);
        // return 'gagal';
        if ($prodi > 0) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Program Studi sudah ada!');
            return redirect('/informasiAdmin');
        }
        Informasi::create($validateData);

        // $guru->save();
        $request->session()->flash('berhasil', 'Data Berhasil ditambahkan! ');
        return redirect('/informasiAdmin');
    }

    public function hapusInformasi(Request $request, $id)
    {
        $informasi = Informasi::find($id);
        $informasi->delete();
        $request->session()->flash('berhasil', 'Data Berhasil dihapus! ');
        return redirect('/informasiAdmin');
    }
}
