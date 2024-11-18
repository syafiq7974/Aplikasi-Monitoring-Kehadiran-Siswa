 Praktikum Flutter: Aplikasi Monitoring Kehadiran Siswa

 ![download](https://github.com/user-attachments/assets/252fb772-0238-4145-ab31-944e3aaece5e)

NAMA  : Syafiq Burhanuddin
KELAS : 2A TRPL
NIM   : 362358302068

a) Halaman Utama: Pencatatan Kehadiran
  § ListView untuk menampilkan daftar siswa, Setiap item terdiri dari:
     1) Nama siswa.
     2) Checkbox untuk menandai kehadiran.
  § Tombol "Simpan Kehadiran" di bagian bawah halaman. Jika daftar siswa 
  kosong, tombol harus disabled.
   § Ketika tombol "Simpan Kehadiran" ditekan:
1) Status kehadiran siswa disimpan ke riwayat.
2) Checkbox di-reset (semua kembali tidak hadir)
   Halaman Presensi Siswa
   ![image](https://github.com/user-attachments/assets/4b725a5c-58f9-4ed7-a931-256fe591c367)


b) Halaman Riwayat Kehadiran
§ ListView untuk menampilkan riwayat pencatatan, Setiap item terdiri dari :
1) Tanggal pencatatan.
2) Jumlah siswa hadir dan tidak hadir.
§ Data riwayat disusun dari yang terbaru ke yang paling lama.
c) Navigasi
Gunakan BottomNavigationBar dengan dua menu:
§ Pencatatan → Mengarahkan ke halaman utama.
§ Riwayat → Mengarahkan ke halaman riwayat.
d) State Management, Gunakan Provider untuk:
§ Mengelola daftar siswa dan status kehadiran.
§ Mengelola riwayat pencatatan.
e) Daftar Siswa Awal, Daftar siswa diberikan secara statis:
1. [
2. {'name': 'Ali', 'isPresent': false},
3. {'name': 'Budi', 'isPresent': false},
4. {'name': 'Citra', 'isPresent': false},
   Halaman Riwayat Kehadiran
   ![image](https://github.com/user-attachments/assets/fd8c3bea-f838-45ec-a429-4c155cfac66a)




