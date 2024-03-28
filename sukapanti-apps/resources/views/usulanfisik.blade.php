<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Data Usulan Fisik</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/dashboard.css" />
  </head>
  <body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="gambar/logo jateng.png" alt="Bootstrap" width="50" height="50" /></a>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link mx-lg-2 " href="/usulanbelanjamodal">Usulan Belanja Modal</a>
              </li>
              <li class="nav-item">
                <a class="nav-link mx-lg-2 active" aria-current="page" href="#">Usulan Rehab Fisik</a>
              </li>
              <li class="nav-item">
                <a class="nav-link mx-lg-2" href="/usulaninovasi">Usulan Inovasi</a>
              </li>
            </ul>
          </div>
        </div>
        <a href="/portal" class="logout-button">Kembali</a>
        <button class="navbar-toggler pe-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </nav>

    <!-- navbar akhir -->

    <!-- tabel -->
        <div class="container">
        <div class="tbl">
          <h1 class="text-center mb-4">Data Usulan Fisik</h1>
        </div>
            <div class="tombol">
            <a href="/formusulanfisik" class="btn btn-success">Tambah Data</a>
            @if (auth()->user() <> null)
              <!-- if pertama untuk ngecek apakah sudah login atau belum -->
                @if (auth()->user()->username == 'admin')
                <!-- if yg kdua ini utk ngecek login sebagai apa, apakah admin atau panti -->
                <a href="/cetakrehabfisik" target="_blank" class="btn btn-primary">Cetak Data</a>
                <div class="row g-3 align-items-center mt-2">
                  <div class="col-auto">
                    <!-- <form action="/usulanbelanjamodal" method="GET">  
                      <input type="search" id="inputPassword6" name="search" class="form-control" aria-describedby="passwordHelpInline" placeholder="search unit kerja">
                    </form>-->
                  </div>
                </div>
                @endif
              @endif
              <!-- <div class="row g-3 align-items-center mt-2"> 
                <div class="col-auto">
                  <form action="/usulanfisik" method="GET">
                    <input type="search" id="inputPassword6" name="search" class="form-control" aria-describedby="passwordHelpInline" placeholder="search unit kerja">
                  </form>
                </div>
              </div> -->
            </div>

        <div class="row">
          @if ($message = Session::get('success'))
          <div class="alert alert-success" role="alert">
            {{ $message }}
          </div>
          @endif
          <div class="outer-wrapper">
          <div class="table-wrapper">
            <table class="table table-striped table-hover table-bordered">
            <thead>
                <tr>
                <th scope="col">No</th>
                <th scope="col">Unit Kerja</th>
                <th scope="col">Usulan Rehab</th>
                <th scope="col">Luas Bangunan</th>
                <th scope="col">Bukti Dukung</th>
                <th scope="col">Di Input</th>
                <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
              @php
                $no = 1;
              @endphp
              @foreach ($data as $index => $row)
                <tr>
                <th scope="row"> {{ $loop->iteration }} </th>
                <td>{{ $row->namaunit }}</td>
                <td>{{ $row->usulanrehab }}</td>
                <td>{{ $row->volume }}</td>
                <td><a href="/download/{{ $row->file }}" class="btn btn-success">Download</a></td>
                <td>{{ $row->created_at->format('D M Y') }}</td>
                <td>
                    <!-- <a href="/tampilkandata/{{ $row->id }}" class="btn btn-info">Edit</a> -->
                    <a href="/deletedatafisik/{{ $row->id }}" class="btn btn-danger">Hapus</a>
                </td>
                </tr>
              @endforeach
            </tbody>
            </table>
          </div>
          </div>
        </div>
        </div>
    <!-- tabel end -->

    <!-- footer -->
    <footer>
      <p>copyright&copyDinas Sosial - Provinsi Jawa Tengah 2024</p>
    </footer>
    <!-- footer end -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>