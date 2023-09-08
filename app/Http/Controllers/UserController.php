<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Storage;


class UserController extends Controller
{
    public function hapusUser(Request $request, $id)
    {
        $user = User::find($id);
        $user->delete();
        $request->session()->flash('berhasil', 'Data Berhasil dihapus! ');
        return redirect('/userAdmin');
    }

    public function updateUser(Request $request, $id)
    {

        $username = User::where([
            'username' => $request->username
        ])->count();
        $prodi = User::where([
            'prodi' => $request->prodi
        ])->count();
        $coba = User::where([
            'prodi' => $request->prodi,
            'jabatan' => $request->jabatan
        ])->count();

        if ($username > 0 && User::where([
            'username' => $request->username
        ])->first() == $request->username) {
            $request->session()->flash('error', 'Data Gagal ubah! Username sudah ada!');
            return redirect('/userAdmin');
        }
        if ($coba > 0) {
            $request->session()->flash('error', 'Data Gagal ubah! Data sudah ada!');
            return redirect('/userAdmin');
        }

        if ($prodi == 2) {
            $request->session()->flash('error', 'Data Gagal ubah! Program Studi sudah ada!');
            return redirect('/userAdmin');
        }

        $validateData = $request->validate([
            'username' => 'required',
            'password' => 'required',
            'jabatan' => 'required',
            'prodi' => 'required',
            'nama_lengkap' => 'required'
        ]);

        $user           = User::find($id);
        $user->username    = $validateData['username'];
        $user->password  = $validateData['password'];
        $user->jabatan  = $validateData['jabatan'];
        $user->nama_lengkap  = $validateData['nama_lengkap'];
        $user->prodi  = $validateData['prodi'];
        $user->save();
        $request->session()->flash('berhasil', 'Data Berhasil diedit! ');
        return redirect('/userAdmin');
    }

    public function tambahUser(Request $request)
    {
        $username = User::where([
            'username' => $request->username
        ])->count();
        $prodi = User::where([
            'prodi' => $request->prodi
        ])->count();
        $coba = User::where([
            'prodi' => $request->prodi,
            'jabatan' => $request->jabatan
        ])->count();

        if ($username > 0) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Username sudah ada!');
            return redirect('/userAdmin');
        }
        if ($coba > 0) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Data sudah ada!');
            return redirect('/userAdmin');
        }

        if ($prodi == 2) {
            $request->session()->flash('error', 'Data Gagal ditambahkan! Program Studi sudah ada!');
            return redirect('/userAdmin');
        }

        $validateData = $request->validate([
            'username' => 'required',
            'password' => 'required',
            'jabatan' => 'required',
            'prodi' => 'required',
            'nama_lengkap' => 'required'
        ]);

        User::create($validateData);

        // $guru->save();
        $request->session()->flash('berhasil', 'Data Berhasil ditambahkan! ');
        return redirect('/userAdmin');
    }
}
