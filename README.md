## Nama : Risa Lestari

## NPM : 2106655274

## Kelas : PBP- C

# **TUGAS 7**

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

# **TUGAS 8**

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Perbedaan Navigator.push dan Navigator.pushReplacement adalah Navigator.push digunakan untuk menambahkan route ke stack, sedangkan Navigator.pushReplacement digunakan untuk mengganti route yang ada di stack. Navigator.pushReplacement akan menghapus semua route yang ada di stack kecuali route pertama.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Text, Center, Drawer, Scaffold, AppBar, Column, MaterialApp, FloatingActionButton.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

`onTapDown`, `onTapUp`, `onTapCancel`, `onScaleStart`, `onScaleUpdate`, `onScaleEnd`,
`onPressed`, `onTap`, `onChanged`, `onSubmitted`, `onLongPress`, `onDoubleTap`, `onVerticalDragStart`, `onVerticalDragUpdate`, `onVerticalDragEnd`, `onPanStart`,`onSemanticsTap`, `onSemanticsLongPress`, `onSemanticsScrollLeft`, `onDismissed`, `onResize`, `onReorder`, `onRefresh`, `onLoading`, `onError`, `onEditingComplete`.

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator mengatur stack of route dan menyediakan dua cara untuk mengatur stack of route, yaitu declarative dan imperative. Declarative menggunakan Navigator.pages, sedangkan imperative Navigator.push dan Navigator.pop

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.
- Menambahkan tiga tombol navigasi pada drawer/hamburger.
  - Navigasi pertama untuk ke halaman counter.
  - Navigasi kedua untuk ke halaman form.
  - Navigasi ketiga untuk ke halaman yang menampilkan data budget yang telah di-input melalui form.
- Menambahkan halaman form
  - Menambahkan elemen input dengan tipe data String berupa judul budget.
  - Menambahkan elemen input dengan tipe data int berupa nominal budget.
  - Menambahkan elemen dropdown yang berisi tipe budget dengan pilihan pemasukan dan pengeluaran.
  - Menambahkan button untuk menyimpan budget.
- Menambahkan halaman data budget
  - Menampilkan semua judul, nominal, dan tipe budget yang telah ditambahkan pada form.
- Menambahkan elemen date picker pada halaman form.
- Menampilkan elemen date (format bebas) pada setiap elemen budget yang ada pada halaman data budget.
- Refactor widget Drawer ke sebuah file terpisah.
- Melakukan add-commit-push ke GitHub.

# **TUGAS 9**

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya bisa, hanya saja data yang didapat bisa jadi strukturnya tidak sesuai dengan apa yang diinginkan. Oleh karena itu, sebaiknya menentukan model terlebih dahulu agar data yang didapat mempunyai struktur yang baik dan mudah untuk digunakan.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `FutureBuilder`: Widget yang digunakan untuk menampilkan data yang akan diambil dari web service oleh `Future`.
- `RichText`: menambahkan teks dengan formatting yang berbeda-beda

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Fungsi yang mereturn class `Future` akan melakukan _fetch_ data JSON dari web service secara _async_.
2. Widget `FutureBuilder` dengan parameter `future` yang berisi fungsi tersebut akan menampilkan data yang telah di-_fetch_. Widget tersebut akan menampilkan widget lainnya sesuai dengan kondisi `future` yang ada, yakni `snapshot.hasData` saat future berisi data, `snapshot.hasError` saat future mendapati error, dan `snapshot.data == null` saat future tidak berisi data apapun (disini dimanfaatkan untuk menunjukkan bahwa data sedang di-_fetch_ / masih _loading_).

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist.
- Membuat satu file dart yang berisi model mywatchlist.
- Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah dideploy ke Heroku (Tugas 3).
- Membuat navigasi dari setiap judul watch list ke halaman detail
- Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum).
- Menambahkan tombol untuk kembali ke daftar mywatchlist
