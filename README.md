## Nama : Risa Lestari

## NPM : 2106655274

## Kelas : PBP- C

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak akan pernah berubah. Stateless Widget merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.

Stateful Widget adalah Widget yang dapat berubah-ubah secara dinamis. Jika dianalogikan Statefull Widget seperti sebuah teko yang berisi air, namun air tersebut bisa berubah-ubah. Misalnya di hari pertama si teko isinya air putih, lalu hari kedua isinya air the dan hari ketiga isinya kopi.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

MaterialApp: Widget yang membungkus sejumlah widget yang biasanya diperlukan untuk aplikasi yang mengimplementasikan Desain Material.

Scaffold: Menerapkan struktur tata letak visual Desain Material dasar. Class ini menyediakan API untuk menampilkan laci, snack bar, dan lembaran bawah.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Setiap kali pengguna menekan tombol + pada aplikasi maka aplikasi akan memanggil fungsi void \_increment() yang di dalamnya terdapat suatu fungsi setState() yang akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State atau variabel terdampak \_counter sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah.

Stateful widget cocok kita gunakan ketika kita menampilkan data dari database yang sifatnya akan berubah-ubah atau data apapun yang sifatnya akan berubah dikemudian hari.

## Jelaskan perbedaan antara const dengan final.

Final dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan.

const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan secara langsung.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat sebuah program Flutter baru dengan nama counter_7
2. Mengubah tampilan program menjadi seperti pada contoh tugas
3. Mengimplementasikan logika berikut pada program.
   - Tombol + menambahkan angka sebanyak satu satuan.
   - Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter.
   - Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
   - Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
   - Angka 0 dianggap sebagai angka genap.
   - Menyembunyikan/menghilangkan tombol - apabila counter bernilai 0.
