<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>SPMI - Universitas Fajar</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

  <link rel="shortcut icon" type="image/x-icon" href="admin2/unifa.png">

  <link href="../../../../css?family=Roboto:300,400,500,700,900" rel="stylesheet">

  <link rel="stylesheet" href="admin2/assets/css/bootstrap.min.css">

  <link rel="stylesheet" href="admin2/assets/plugins/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="admin2/assets/plugins/fontawesome/css/fontawesome.min.css">

  <link rel="stylesheet" href="admin2/assets/css/fullcalendar.min.css">

  <link rel="stylesheet" href="admin2/assets/css/dataTables.bootstrap4.min.css">

  <link rel="stylesheet" href="admin2/assets/plugins/morris/morris.css">

  <link rel="stylesheet" href="admin2/assets/css/style.css">
  <!--[if lt IE 9]>
		<script src="admin2/assets/js/html5shiv.min.js"></script>
		<script src="admin2/assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>

  <div class="main-wrapper">

    <div class="header-outer">
      <div class="header">
        <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fas fa-bars" aria-hidden="true"></i></a>
        <a id="toggle_btn" class="float-left" href="javascript:void(0);">
          <img src="admin2/assets/img/sidebar/icon-21.png" alt="">
        </a>
        <ul class="nav float-left">
          <li>
            <div class="">
              <a href="javascript:void(0);" class="responsive-search">
                <i class="fa fa-search"></i>
              </a>
              <form action="#!" class="mt-2">
                <div class="alert" style="color: #5F8DB0;">SISTEM PENJAMINAN MUTU INTERNAL BESERTA EVALUASI</div>
              </form>
            </div>
          </li>
          <li>
            <a href="/dashboardKaprodi" class="mobile-logo d-md-block d-lg-none d-block"><img src="unifa.png" alt="" width="30" height="30"></a>
          </li>
        </ul>

        <ul class="nav user-menu float-right">
          <li class="nav-item dropdown has-arrow">
            <a href="#" class=" nav-link user-link" data-toggle="dropdown">
              <span class="user-img"><img class="rounded-circle" src="admin2/assets/img/user-06.jpg" width="30" alt="Admin">
                <span class="status online"></span></span>
              <span> {{ session('username') }} - AUDITEE</span>
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="/logout" onclick="return confirm('Apakah Anda yakin ingin meninggalkan halaman ini?')">Logout</a>
            </div>
          </li>
        </ul>
        <div class="dropdown mobile-user-menu float-right">
          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
          <div class="dropdown-menu dropdown-menu-right">
            <a class="dropdown-item" href="/logout" onclick="return confirm('Apakah Anda yakin ingin meninggalkan halaman ini?')">Logout</a>
          </div>
        </div>
      </div>
    </div>


    <div class="sidebar" id="sidebar">
      <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
          <div class="header-left">
            <a href="/dashboardDosen" class="logo">
              <img src="admin2/unifa.png" width="40" height="40" alt="">
              <span class="text-uppercase">SPMI</span>
            </a>
          </div>
          <ul class="sidebar-ul">
            <li class="menu-title">Menu</li>
            <li class="">
              <a href="/dashboardDosen"><img src="admin2/assets/img/sidebar/icon-1.png" alt="icon"><span>Dashboard</span></a>
            </li>
            <li class="active">
              <a href="/hasilDosen"><img src="admin2/assets/img/sidebar/icon-10.png" alt="icon">
                <span>Hasil</span></a>
            </li>
          </ul>
          </li>
          </ul>
        </div>
      </div>
    </div>


    <div class="page-wrapper">
      <div class="content container-fluid">

        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <?php if ($totalHasil < 1) { ?>
                <div class="card-header">
                  <div class="row align-items-center">
                    <div class="col-sm-6">

                      <div class="page-title">
                        <div class="btn btn-sm btn-danger text-white">Kepala Program Studi {{ $prodi }} belum melakukan Audit </div>
                      </div>

                    </div>
                    <div class="col-sm-6 text-sm-right">
                      <div class=" mt-sm-0 mt-2">

                      </div>
                    </div>
                  </div>
                </div>
              <?php  } else { ?>

              <?php } ?>
              <?php if ($totalHasil < 1) { ?>
              <?php  } else { ?>
                <div class="container mt-2 text-center">Berikut Merupakan hasil Audit yang diisi oleh : <br>
                  <b> <span class="btn btn-dark text-white" style=" text-transform: uppercase;">Kepala Program Studi {{ $prodi }} </span> </b>
                </div>

                @if (session()->has('error'))
                <div class="alert alert-danger mt-2" role="alert">
                  {{ session('error') }}
                </div>
                @endif
                @if (session()->has('berhasil'))
                <div class="alert alert-success mt-2" role="alert">
                  {{ session('berhasil') }}
                </div>
                @endif

                <div class="card-body">
                  <div class="">
                    <table class="table custom-table">
                      <thead class="thead-light">
                        <tr>
                          <th>No. </th>
                          <th>Pertanyaan</th>
                          <th>Bukti</th>
                          <th>Referensi</th>
                          <th>Evaluasi</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($hasil as $a)

                        <tr>
                          <td>
                            <h2> {{ $loop->iteration }} </h2>
                          </td>
                          <td> {{ $a->pertanyaan }}</td>
                          <td>
                            {{ $a->bukti }} <br>
                            <?php if ($a->file_bukti == "kosong") { ?>
                              <div class="badge bg-danger text-white">Tidak Ada File Diupload</div>
                            <?php } else { ?>
                              <a target="_blank" class="btn btn-sm btn-primary text-white" href="storage/{{ $a->file_bukti }}">Lihat/Download</a>
                            <?php } ?>
                          </td>
                          <td> {{ $a->referensi }}</td>
                          <td>
                            <?php if ($a->evaluasi == null || $a->evaluasi == "-") { ?>
                              <form action="/tambahEvaluasi" method="post">
                                @csrf
                                <input type="hidden" name="id" value="{{ $a->id }}">
                                <input type="hidden" name="nomor" value="{{ $loop->iteration }}">
                                <textarea required name="evaluasi" placeholder="Ketikkan evaluasi Anda..." class="form-control" id="" cols="110" rows="5"></textarea>
                                <button type="submit" class="btn btn-sm btn-warning"> <i class="far fa-save d-flex"> &nbsp; Simpan</i></button>
                              </form>
                            <?php } else { ?>
                              <table style="width: 100%;">
                                <tr>
                                  <td style="width: 45%;"> {{ $a->evaluasi }}</td>
                                  <td style="width: 55%; font-size:10px" class="text-center">
                                    <div class="btn btn-success btn-sm " data-bs-toggle="modal" data-bs-target="#exampleModal{{ $a->id }}{{ $loop->iteration }}">
                                      <!-- <i class="fa fa-globe"></i> -->
                                      <i class="far fa-edit d-flex"> Ubah</i>
                                    </div>
                                    <div class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#resetModal{{ $a->id }}{{ $loop->iteration }}"> <i class="fas fa-eraser d-flex">Reset</i></div>
                                  </td>
                                </tr>
                              </table>
                            <?php } ?>
                          </td>
                        </tr>


                        @endforeach
                      </tbody>
                    </table>
                    <div class="mt-2 btn btn-primary">Simpan Perubahan</div>

                  </div>
                </div>
              <?php } ?>

              @foreach ($hasil as $a)

              <div class="modal fade" id="resetModal{{ $a->id }}{{ $loop->iteration }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 250px;">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Reset data ini?</h5>
                    </div>
                    <div class="modal-body">
                      <form action="/resetEvaluasi" method="post">
                        @csrf
                        <input type="hidden" name="nomor" value="{{ $loop->iteration }}">
                        <input type="hidden" name="id" value="{{ $a->id }}">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-danger">Reset</button>
                      </form>
                    </div>
                    <div class="modal-footer">

                    </div>
                  </div>
                </div>
              </div>

              <div class="modal fade" id="exampleModal{{ $a->id }}{{ $loop->iteration }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Ubah Evaluasi {{ $loop->iteration }}</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/editEvaluasi" method="post">
                      @csrf
                      <div class="modal-body">
                        <input type="hidden" name="nomor" value="{{ $loop->iteration }}">
                        <input type="hidden" name="id" value="{{ $a->id }}">
                        <label for="">Ubah Evaluasi Anda Sebelumnya</label>
                        <textarea required name="evaluasi" class="form-control" cols="30" rows="10">{{ $a->evaluasi }}</textarea>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="admin2/assets/js/jquery-3.6.0.min.js"></script>

  <script src="admin2/assets/js/bootstrap.bundle.min.js"></script>

  <script src="admin2/assets/js/jquery.slimscroll.js"></script>

  <script src="admin2/assets/js/select2.min.js"></script>
  <script src="admin2/assets/js/moment.min.js"></script>

  <script src="admin2/assets/js/fullcalendar.min.js"></script>
  <script src="admin2/assets/js/jquery.fullcalendar.js"></script>

  <script src="admin2/assets/plugins/morris/morris.min.js"></script>
  <script src="admin2/assets/plugins/raphael/raphael-min.js"></script>
  <script src="admin2/assets/js/apexcharts.js"></script>
  <script src="admin2/assets/js/chart-data.js"></script>

  <script src="admin2/assets/js/app.js"></script>

</body>

</html>