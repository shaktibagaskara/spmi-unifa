<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Prodi;
use Illuminate\Support\Facades\Storage;


class ProdiController extends Controller
{
    public function hapusProdi(Request $request, $id)
    {
        $prodi = Prodi::find($id);
        $prodi->delete();
        $request->session()->flash('berhasil', 'Data Berhasil dihapus! ');
        return redirect('/prodiAdmin');
    }

    public function updateProdi(Request $request, $id)
    {

        $validateData = $request->validate([
            'nama_prodi' => 'required',
            'nama_kaprodi' => 'required'
        ]);

        $prodi           = Prodi::find($id);
        $prodi->nama_prodi    = $validateData['nama_prodi'];
        $prodi->nama_kaprodi  = $validateData['nama_kaprodi'];

        $prodi->save();
        $request->session()->flash('berhasil', 'Data Berhasil diedit! ');
        return redirect('/prodiAdmin');
    }

    public function tambahProdi(Request $request)
    {
        $prodi = Prodi::where([
            'nama_prodi' => $request->nama_prodi,
            'nama_kaprodi' => $request->nama_kaprodi
        ])->count();
        // return $prodi;
        if ($prodi > 0) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Program Studi sudah ada!');
            return redirect('/prodiAdmin');
        }

        $validateData = $request->validate([
            'nama_prodi' => 'required',
            'nama_kaprodi' => 'required'
        ]);

        Prodi::create($validateData);
        $request->session()->flash('berhasil', 'Data Berhasil ditambahkan! ');
        // $guru->save();
        return redirect('/prodiAdmin');
    }
}
