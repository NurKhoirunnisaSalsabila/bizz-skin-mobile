# TUGAS PBP Mobile Nur Khoirunnisa Salsabila - BIZZ SKIN

Nama: Nur Khoirunnisa Salsabila

NPM: 2306165534

Kelas: PBP A

<details>
  <summary>TUGAS 7</summary>

# 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

#### Stateless Widget
- Widget yang statis/tidak berubah (immutable)
- Tidak memiliki state internal yang bisa berubah selama widget hidup
- Dibuat ulang setiap kali ada perubahan, bukan diupdate
- Cocok untuk UI yang tidak perlu berubah seperti text, icon, atau layout statis
- Contoh di kode saya: `MyApp`, `MyHomePage`, `InfoCard`, `ItemCard`
  ![image](https://github.com/user-attachments/assets/736815ce-0c8b-49b9-88ec-eb1cd5685c4e)
  ![image](https://github.com/user-attachments/assets/5a0e03f9-16e8-4703-b26c-ab072c976e7d)
  ![image](https://github.com/user-attachments/assets/deb019a7-3a57-4f5f-9055-add1f7654a1b)
  ![image](https://github.com/user-attachments/assets/0c3f4b43-e66f-4969-a0a3-f4ed298d611c)

#### Stateful Widget
- Widget yang dinamis dan dapat berubah (mutable)
- Memiliki state internal yang bisa diupdate selama widget hidup
- Dapat memperbarui tampilan ketika ada perubahan data
- Cocok untuk UI yang interaktif seperti form, animasi, atau data yang berubah
- **Contoh**: `Checkbox`, `Slider`, dan `TextField` (dengan perubahan state).

### Perbedaan antara Stateless dan Stateful Widget

| Aspect               | Stateless Widget                            | Stateful Widget                            |
|----------------------|---------------------------------------------|--------------------------------------------|
| **State**            | Tidak memiliki state internal               | Memiliki state yang dapat berubah          |
| **Penggunaan**       | UI statis, tidak berubah                    | UI dinamis, berubah berdasarkan state      |
| **Perubahan Tampilan** | Tidak dapat diperbarui setelah dibuat       | Dapat diperbarui dengan `setState()`       |
| **Contoh**           | `Text`, `Icon`, `Image`                    | `Checkbox`, `Slider`, `TextField`          |

# 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
* **Structural Widgets:**
  - **MaterialApp:** Widget root yang menyediakan framework material design
    ![image](https://github.com/user-attachments/assets/155a3cda-f673-4c7a-8757-64a56eb56af3)
    
  - **Scaffold:** Memberikan struktur layout dasar material design
    ![image](https://github.com/user-attachments/assets/98bc3adf-97e6-4023-8917-c4b69a2f8a4c)

  - **Column:** Mengatur children secara vertikal
    ![image](https://github.com/user-attachments/assets/9d613f5e-cc82-4da3-a41b-65e1a241ceb1)

  - **Row:** Mengatur children secara horizontal
    ![image](https://github.com/user-attachments/assets/e9c66cc7-896f-40f3-b950-31b41292c65c)

  - **Container:** Wadah yang dapat dikustomisasi dengan padding, margin, dll
    ![image](https://github.com/user-attachments/assets/74da29b1-2768-4b9c-8d46-fcc13803ef8e)

  - **Center:** Menempatkan child di tengah
    ![image](https://github.com/user-attachments/assets/0673c116-0953-4c37-b01e-eb1b560c5ef9)

  - **GridView:** Menampilkan items dalam grid layout
    ![image](https://github.com/user-attachments/assets/76d756ca-4c6a-4007-a624-f92d6d23fe40)


* **UI Elements:**
  - **AppBar:** Bar aplikasi di bagian atas
    ![image](https://github.com/user-attachments/assets/1f792a88-c1bd-478f-933a-dad1dc60607e)

  - **Card:** Menampilkan konten dalam bentuk card material design
    ![image](https://github.com/user-attachments/assets/8f64a4d6-fddb-45bb-98a1-635c730ab68d)

  - **Text:** Menampilkan text
    ![image](https://github.com/user-attachments/assets/2bbca2b1-b4fc-4c93-93ba-3bbc6ac602d5)

  - **Icon:** Menampilkan icon
    ![image](https://github.com/user-attachments/assets/a8d35f46-871c-439f-ae06-ee9ca82dd556)

  - **InkWell:** Memberikan efek ripple saat ditekan
  - **Material:** Memberikan visual material design
    ![image](https://github.com/user-attachments/assets/da783f24-53f2-4dfa-b4c6-9528577f171a)


* **Layout Widgets:**
  - **Padding:** Memberikan padding pada widget
  - **SizedBox:** Memberikan space kosong dengan ukuran tertentu
    ![image](https://github.com/user-attachments/assets/e9372c1d-f382-48e3-ae62-19c254742af3)

* **Custom Widgets:**
  - **InfoCard:** Widget kustom yang digunakan untuk menampilkan informasi dalam bentuk kartu.
    ![image](https://github.com/user-attachments/assets/3653bdd7-fe0b-4595-b36a-8b4a8a5932d4)

  - **ItemCard:** Widget kustom yang digunakan untuk menampilkan ikon dan teks dalam bentuk kartu.
    ![image](https://github.com/user-attachments/assets/64250a35-0c01-44a6-bf0f-f56856dac06b)

# **3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

- Fungsi dari `setState()` adalah method yang digunakan dalam `StatefulWidget` untuk memberitahu framework bahwa internal state telah berubah dan perlu melakukan rebuild widget.
- Saat `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` dari widget tersebut untuk memperbarui tampilan sesuai dengan perubahan state.
- Dalam kode saya saat ini tidak ada penggunaan `setState()` karena semua widget adalah stateless. 

**Variabel yang dapat terdampak adalah:**
- Variabel yang dideklarasikan sebagai `non-final` dalam class `State` (Semua variabel yang berada dalam kelas State dari `StatefulWidget` dapat terdampak oleh `setState()`).
- Variabel yang diupdate di dalam fungsi `setState()`

# **4. Jelaskan perbedaan antara const dengan final.**

* `const`:
  - Variabel harus diinisialisasi pada saat compile-time
  - `const` digunakan untuk mendeklarasikan nilai yang bersifat konstan, tidak akan pernah berubah.
  - Nilai harus sudah diketahui sebelum program dijalankan
  - Membuat objek menjadi deeply immutable
  - Contoh: const Text('Hello')

* `final`:
  - Variabel bisa diinisialisasi pada runtime
  - Nilai bisa ditentukan saat program berjalan
  - Hanya membuat referensi variabel immutable, bukan nilai dalamnya
  - `final` digunakan untuk mendeklarasikan variabel yang nilainya hanya dapat diinisialisasi sekali dan tidak dapat diubah setelah itu.
  - Nilai yang dideklarasikan dengan `final` dapat ditentukan pada saat di-compile (runtime).
  - `final` sering digunakan untuk variabel yang nilainya baru diketahui pada saat runtime.
Contoh: final String name = getName()

| Aspect               | `const`                                 | `final`                                |
|----------------------|-----------------------------------------|----------------------------------------|
| **Saat Kompilasi**   | Harus sudah diketahui nilainya          | Bisa ditentukan saat runtime           |
| **Perubahan Nilai**  | Tidak bisa diubah setelah diinisialisasi | Tidak bisa diubah setelah diinisialisasi |

- **Const**: Digunakan untuk nilai yang sudah diketahui saat kompilasi dan bersifat konstan, tidak dapat diubah selama runtime.
- **Final**: Menyimpan nilai yang hanya dapat diinisialisasi sekali, namun nilainya bisa ditentukan selama runtime.

# **5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**

**1. Membuat Projek Flutter dengan command:**
``flutter create bizz_skin_mobile``

**2. Membuat tiga tombol sederhana dengan ikon dan teks**
- Membuka file menu.dart dan menambahkan daftar item dengan ikon dan teks:
  ```dart
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.production_quantity_limits_rounded, Colors.pink), 
    ItemHomepage("Tambah Produk", Icons.add, Colors.purple), 
    ItemHomepage("Logout", Icons.logout, Colors.blue), 
  ];
  
- Menggunakan GridView untuk menampilkan tombol-tombol dalam bentuk grid:
  ```dart
  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),

**3. Membuat Warna-warna yang berbeda untuk setiap tombol**
- Buka file `menu.dart` kemudian atur warna latar belakang untuk setiap ombol di dalam `ItemCard`:
  ```dart
    class ItemCard extends StatelessWidget {
    final ItemHomepage item;
  
    const ItemCard(this.item, {super.key});
  
    @override
    Widget build(BuildContext context) {
      return Material(
        color: item.color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!")));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

**4. Memunculkan Snackbar**
- Menambahkan 'action' pada setiap tombol di dalam ItemCard agar dapat memunculkan Snackbar:
  ```dart
  onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },

**5. Personalized Tema untuk BizzSkin**
 - Buka file `main.dart` dan atur warna tema aplikasi:
   ```dart
   colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF800000),
          secondary: const Color(0xFF600000),
        ),
        useMaterial3: true,
     ),

 - Mengatur `home` untuk menampilkan `MyHomePage`:
   ```dart
   home: MyHomePage(),
   
 - Membuka file `menu.dart` dan menambahkan `AppBar`:
   ```dart
   appBar: AppBar(
        title: const Text(
          'Bizz Skin',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
   
 - Menambahkan `InfoCard` untuk menampilkan informasi user:
   ```dart
   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
   

**6. Melakukan add, commit, dan push.**




</details>


<details>
  <summary>TUGAS 8</summary>

# 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter? Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

## - Kegunaan `const` di Flutter?
Pada Flutter, `const` digunakan untuk membuat objek atau widget bersifat immutable (tidak berubah) dan pada waktu kompilasi (compile-time). Ketika sebuah widget atau objek diinisialisasi dengan `const`, Flutter mengalokasikan memori hanya sekali dan dapat melakukan optimisasi untuk tidak membuat ulang objek tersebut jika digunakan berulang kali.

## - Keuntungan ketika menggunakan `const` pada Flutter?
* Dengan mendefinisikan widget sebagai `const`, Flutter dapat menggunakan objek yang sama di beberapa tempat tanpa membuat ulang widget, menghemat memori (memori lebih efisien).
* Karena widget `const` tidak berubah, Flutter dapat menghindari rendering ulang pada setiap perubahan state yang tidak mempengaruhi widget tersebut (mengoptimalkan performa aplikasi).
* Kode menjadi lebih mudah diprediksi dan stabil, karena nilai const tidak bisa diubah setelah diinisialisasi.


## - Kapan sebaiknya kita menggunakan `const`?
* Ketika kita tahu bahwa widget tidak akan berubah atau ketika kita tidak ingin widget tersebut dirender ulang setiap kali ada perubahan state di atasnya.
* Widget yang tidak bergantung pada data dinamis

## - Kapan sebaiknya kita tidak menggunakan `const`?
* Jika widget atau objek memiliki nilai yang berubah selama runtime atau bergantung pada input yang tidak diketahui saat compile-time.
* Widget yang bergantung pada data dinamis

## Contoh penggunaan `const` pada kode saya:
```dart
 const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Bizz Skin!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
```

# 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

## Column
* Widget yang digunakan untuk menata anak-anaknya secara vertikal. Setiap widget anak akan ditempatkan di bawah widget anak yang sebelumnya.
* Menggunakan mainAxisAlignment untuk pengaturan vertikal
* Menggunakan crossAxisAlignment untuk pengaturan horizontal

* Contoh implementasi column pada kode saya:
  ```dart
  Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Bizz Skin!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
Pada `MenuScreen`, `Column` digunakan untuk menata widget secara vertikal, seperti teks "Welcome to Bizz Skin!" dan `GridView` yang menampilkan item-item menu.
  
## Row
* Widget yang digunakan untuk menata anak-anaknya secara horizontal. Setiap widget anak akan ditempatkan di sebelah kanan widget anak sebelumnya.
* Menggunakan mainAxisAlignment untuk pengaturan horizontal
* Menggunakan crossAxisAlignment untuk pengaturan vertikal

*Contoh implementasi dari kode saya:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: userId),
    InfoCard(title: 'Username', content: userName),
    InfoCard(title: 'Class', content: className),
  ],
```
Pada halaman `MenuScreen`, `Row` digunakan untuk menata `InfoCard` secara horizontal. Dengan demikian, informasi pengguna ditampilkan dalam satu baris.

## Perbandingan penggunaan Column dan Row pada Flutter
- Gunakan Column ketika:
  * Menampilkan daftar item secara vertikal
  * Membuat form dengan input fields
  * Menyusun konten dari atas ke bawah

- Gunakan Row ketika:
  * Membuat navigation bar
  * Menampilkan item secara horizontal
  * Menyusun tombol berdampingan
  * Membuat layout dengan elemen sejajar horizontal
 
- Perbandingan properties penting column dan row:
  1. mainAxisAlignment:
     * Column: Mengatur posisi vertikal (top, center, bottom, spaceEvenly, etc.)
     * Row: Mengatur posisi horizontal (start, center, end, spaceEvenly, etc.)
  2. crossAxisAlignment:
     * Column: Mengatur posisi horizontal (start, center, end, stretch)
     * Row: Mengatur posisi vertikal (start, center, end, stretch)
   3. mainAxisSize:
      * min: Mengambil ruang minimal yang dibutuhkan
      * max: Mengambil seluruh ruang yang tersedia
        
- Kesimpulan:
  * Column:
    1. Arah: Vertikal (atas ke bawah)
    2. Main Axis: Vertikal
    3. Cross Axis: Horizontal
  * Row:
    1. Arah: Horizontal (kiri ke kanan)
    2. Main Axis: Horizontal
    3. Cross Axis: Vertikal

# 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

**Pada halaman form   ProductEntryFormPage   di aplikasi Bizz Skin, elemen input yang digunakan adalah sebagai berikut:**

* TextFormField untuk input teks umum (nama produk dan deskripsi produk):
  - Nama produk diinput menggunakan TextFormField dengan validasi yang memastikan bahwa input tidak kosong, memiliki panjang minimal 3 karakter, dan maksimal 50 karakter.
  - Deskripsi produk juga menggunakan TextFormField dengan validasi untuk memastikan input tidak kosong, memiliki panjang minimal 5 karakter, dan maksimal 500 karakter.
* TextFormField untuk input angka (jumlah produk):
  - Jumlah produk diinput menggunakan TextFormField dengan tipe input angka (number) serta validasi yang memastikan input tidak kosong, berupa angka, bernilai non-negatif, tidak boleh 0, dan tidak lebih dari 10,000.
* ElevatedButton untuk menyimpan data yang telah dimasukkan ke dalam form.

**Elemen input flutter lain yang tidak saya gunakan pada tugas ini**
* `Checkbox`:
  - untuk input boolean, misal opsi ya/tidak.
  - Cocok untuk multiple selection
  - Contoh: daftar todo, pemilihan fitur/opsi
* `DropdownButton`:
  - Untuk memilih satu item dari daftar opsi
  - Hemat ruang karena opsi tersembunyi
  - Contoh: pemilihan kategori, filter
* `DatePicker`:
  - Untuk memilih tanggal
  - Interface kalender yang user-friendly
  - Contoh: tanggal lahir, jadwal appointment
* `TimePicker`:
  - Untuk memilih waktu
  - Interface jam yang user-friendly
  - Contoh: pengaturan alarm, jadwal meeting
* `Radio Button`:
  - Untuk memilih satu opsi dari beberapa pilihan
  - Hanya satu pilihan yang bisa dipilih
  - Contoh: pemilihan gender, tingkat pendidikan
* `Switch`:
  -  Toggle on/off (untuk input boolean dengan tampilan switch)
  -  Biasanya untuk pengaturan
  -  Contoh: dark mode, notifikasi
* `Slider`:
  - Untuk memilih nilai dalam rentang tertentu (untuk input angka dalam rentang tertentu dengan cara menggeser)
  - Cocok untuk input numerik dengan range
  - Contoh: volume, brightness, filter strength
* `ColorPicker`:
  - Untuk memilih warna
  - Biasanya untuk customization
  - Contoh: tema aplikasi, pengaturan tampilan

# 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

**Ya, saya telah mengimplementasikan tema dalam aplikasi Bizz Skin Mobile. Implementasi ini ada dalam file   `main.dart`:**
```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFF800000),
    secondary: const Color(0xFF600000),
  ),
  useMaterial3: true,
),
```

Pada Flutter, konsistensi tema dapat diatur menggunakan `ThemeData`, yang diterapkan secara global dalam `MaterialApp` melalui properti `theme`. Dengan demikian, memungkinkan kita untuk mengatur warna, font, dan gaya visual lainnya secara konsisten. Nanti tema akan diterapkan secara global ke seluruh app, semua widget juga akan mengikuti gaya yang telah diset.

Pada Bizz Skin, tema diatur di dalam `main.dart`, dan tema digunakan untuk menetapkan warna primer dan sekunder yang konsisten di seluruh aplikasi. Warna utama dengan `primary: const Color(0xFF800000)`, Warna sekunder dengan `secondary: const Color(0xFF600000)`, supaya tidak monoton, tetapi tetap konsisten. Kemudian Properti `useMaterial3` diset `true`.

# 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Di aplikasi Bizz Skin, navigasi antar halaman diatur menggunakan `Navigator` dan `MaterialPageRoute`:

- `Navigator.push` digunakan untuk menavigasi ke halaman baru dan menambahkan halaman tersebut ke dalam stack navigasi.
- `Navigator.pushReplacement` digunakan untuk menavigasi ke halaman baru dengan menggantikan halaman saat ini di stack navigasi.

1. Navigasi dari `MenuScreen` ke `ProductEntryFormPage` terjadi saat pengguna menekan tombol "Tambah Produk".
```dart
Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ),
            );
          }
```
Contoh lain:
```dart
// ... existing code ...
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MenuScreen(), // Menuju ke MenuScreen
      ),
    );
  },
),
```
Ini akan menavigasi ke `MenuScreen` (Halaman Utama)

```dart
ListTile(
  leading: const Icon(Icons.shopping_bag),
  title: const Text('Tambah Produk'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ProductEntryFormPage(), // Menuju ke ProductEntryFormPage
      ),
    );
  },
),
```
Ini akan menavigasi ke `ProductEntryFormPage` (halaman form tambah produk)


2. Untuk navigasi dari `LeftDrawer` ke halaman page item menu yang sesuai dipilih user.
```dart
 ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuScreen(), // hapus const
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Tambah Produk'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
                ),
              );
            },
          ),
        ],
```
**Kesimpulan:**
Navigasi yang Sudah Diimplementasikan
1. `product_card.dart`
   ```dart
   // Navigasi dari card ke form
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProductEntryFormPage(),
      ),
    );
2. left_drawer.dart
   ```dart
   // Navigasi dari drawer dengan pushReplacement
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MenuScreen(),
      ),
    );
</details>


<details>
  <summary>TUGAS 9</summary>
  
# 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

* Pentingnya model:
  - Model mempermudah kita dalam mendefinisikan struktur data JSON yang akan dikirim atau diterima. Dengan menggunakan model, kita dapat memastikan bahwa data yang ditangani sesuai dengan format yang diinginkan.
  - Kemudahan Parsing: Model menyediakan kerangka untuk parsing data JSON ke dalam objek yang dapat digunakan oleh aplikasi, sehingga mengurangi kesalahan pemrosesan data.
  - Scalability: Jika data JSON berkembang, perubahan hanya perlu dilakukan pada model, bukan di seluruh bagian kode.
  - Mempermudah akses data dengan properti yang terdefinisi
  - Memudahkan maintenance code
  - Meningkatkan readability
  - Model memastikan tipe data yang konsisten
  - Membantu menghindari runtime errors
  - Memberikan autocomplete dan compile-time checking

* Jika tidak membuat model:
  - Error Parsing: Tanpa model, ada risiko tinggi error saat data yang diterima tidak sesuai dengan ekspektasi (misalnya, tipe data atau atribut yang salah).
  - Code Maintenance: Kode akan menjadi sulit dipelihara karena tidak ada standar yang jelas untuk menangani data JSON.
  - Tidak ada validasi tipe data
  - Rawan typo saat mengakses keys
  - Tidak ada autocomplete
  - Lebih sulit untuk maintenance

# 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library `http` digunakan untuk melakukan operasi HTTP dalam aplikasi, seperti:
- Komunikasi dengan Django backend
- Send request GET untuk mengambil data produk
- Send request POST saat login/register
- Handle response dari server
- Atur headers dan cookies untuk autentikasi
  
# 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi `CookieRequest:`
* CookieRequest digunakan untuk menangani sesi pengguna dalam aplikasi Flutter dengan Django.
* Menyimpan cookie yang diterima dari server setelah login, yang digunakan untuk autentikasi di permintaan berikutnya.
* Mempermudah pengelolaan status login dan logout.
* Digunakan di semua halaman yang perlu autentikasi
* User tetap login saat pindah halaman
* Handle cookies Django untuk security

Mengapa instance perlu dibagikan ke semua komponen?
* Konsistensi Sesi: Dengan instance yang sama, semua komponen dapat berbagi informasi sesi pengguna.
* Mempermudah Akses Data: Komponen yang membutuhkan data sesi tidak perlu membuat ulang instance, sehingga menghemat memori dan menghindari multiple instances.
* Integrasi Mudah: Komponen bisa langsung menggunakan cookie yang sudah tersimpan tanpa perlu pengaturan tambahan.

# 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

1. User input data produk di form
2. Data dikumpulkan saat tombol Save ditekan
3. Flutter mengubah data jadi JSON
4. Dikirim ke Django via POST request
5. Django memproses dan simpan ke database
6. Flutter fetch data terbaru
7. Data ditampilkan dalam bentuk card

penjelasan:
1. Input Form
   ```dart
   // Form dibungkus dengan Form widget untuk validasi
    Form(
      key: _formKey, // Global key untuk mengakses state form
      child: TextFormField(
        controller: _nameController, // Controller untuk mengelola input
        decoration: InputDecoration(
          labelText: 'Nama Produk',
          hintText: 'Masukkan nama produk',
          border: OutlineInputBorder(),
        ),
        // Menyimpan nilai input ke variable
        onChanged: (String? value) {
          setState(() {
            _name = value!;
          });
        },
        // Validasi input
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Nama tidak boleh kosong!";
          }
          return null;
        },
      ),
    )

2. Validasi Form
   ```dart
   // Ketika tombol submit ditekan
    ElevatedButton(
      onPressed: () async {
        // Cek apakah semua validator dalam form passed
        if (_formKey.currentState!.validate()) {
          // Lanjut ke proses pengiriman data
          _formKey.currentState!.save(); // Simpan nilai form
        } else {
          // Tampilkan pesan error jika validasi gagal
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Mohon isi semua field dengan benar!"),
            ),
          );
        }
      }
    )

3. Persiapan Data
   ```dart
   // Data dikumpulkan dari form dan diformat sesuai kebutuhan server
    final data = {
      'name': _name,
      'price': _price.toString(),
      'description': _description,
      'skin_type': _skinType,
    };
    
    // Data di-encode menjadi JSON
    String jsonData = jsonEncode(data);

4. Pengiriman ke Server
   ```dart
       try {
      // Kirim request POST ke Django backend
      final response = await request.postJson(
        "http://127.0.0.1:8000/create-flutter/",
        jsonData
      );
      
      // request.postJson akan:
      // 1. Menambahkan headers yang diperlukan (termasuk CSRF token)
      // 2. Mengirim request dengan method POST
      // 3. Menunggu response dari server
      // 4. Menghandle cookies yang diterima
      
    } catch (e) {
      // Handle error network atau server
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }

5. Handle Response
   ```dart
       if (context.mounted) {
      if (response['status'] == 'success') {
        // Tampilkan pesan sukses
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Produk berhasil ditambahkan!"),
          ),
        );
        
        // Reset form
        _formKey.currentState!.reset();
        
        // Navigate ke halaman lain (opsional)
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProductListPage()),
        );
        
      } else {
        // Tampilkan pesan error dari server
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response['message'] ?? "Terjadi kesalahan"),
          ),
        );
      }
    }

6. Di sisi Django (Backend)
   ```dart
   @csrf_exempt
    def create_product_flutter(request):
        if request.method == 'POST':
            try:
                data = json.loads(request.body)
                
                # Buat instance produk baru
                new_product = Product.objects.create(
                    user = request.user,
                    name = data['name'],
                    price = int(data['price']),
                    description = data['description'],
                    skin_type = data['skin_type']
                )
                
                # Kirim response sukses
                return JsonResponse({
                    "status": "success",
                    "message": "Product successfully created!"
                }, status=200)
                
            except Exception as e:
                # Kirim response error
                return JsonResponse({
                    "status": "error",
                    "message": str(e)
                }, status=400)


# 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Login
- User input username & password
- Data dikirim ke endpoint Django `/auth/login/`
- Django validasi kredensial
- Jika valid, buat session & kirim cookie
- Flutter simpan cookie di CookieRequest
- Redirect ke menu utama
- Penjelasan:
  ```dart
    // 1. Input credentials di Flutter
  final response = await request.login(
    "http://127.0.0.1:8000/auth/login/",
    {
      'username': username,
      'password': password,
    }
  );

  // 2. Django memvalidasi
  // 3. Django mengirim response
  // 4. Flutter menerima dan mengupdate UI

Register
- User isi form registrasi
- Data dikirim ke `/auth/register/`
- Django validasi & buat user baru
- Redirect ke login page
- Penjelasan:
  ```dart
  // 1. Input data registrasi
  final response = await request.postJson(
    "http://127.0.0.1:8000/auth/register/",
    jsonEncode({
      "username": username,
      "password1": password1,
      "password2": password2,
    })
  );
  
  // 2. Django membuat user baru
  // 3. Response dikirim ke Flutter

Logout
- User tekan tombol logout
- Request ke `/auth/logout/`
- Django hapus session
- Flutter hapus cookie
- Kembali ke login page
- Penjelasan:
  ```dart
  // 1. Request logout
  final response = await request.logout(
    "http://127.0.0.1:8000/auth/logout/"
  );
  
  // 2. Django menghapus session
  // 3. Flutter update UI ke login page


## Login, Register, dan Logout Flow

### **1. Login**
   
**A. Di Flutter (Frontend):**
```dart
// 1. User mengisi form login
final _usernameController = TextEditingController();
final _passwordController = TextEditingController();

// 2. Saat tombol login ditekan
ElevatedButton(
  onPressed: () async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // 3. Kirim request login ke Django
    final response = await request.login(
      "http://127.0.0.1:8000/auth/login/",
      {
        'username': username,
        'password': password,
      }
    );

    // 4. Handle response
    if (request.loggedIn) {
      String message = response['message'];
      String uname = response['username'];
      
      // 5. Jika sukses, navigate ke home
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MenuScreen()),
      );
      
      // 6. Tampilkan pesan sukses
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("$message Selamat datang, $uname.")),
      );
    } else {
      // 7. Jika gagal, tampilkan error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Gagal'),
          content: Text(response['message']),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  },
)
```
**B. Di Django (Backend):**
```dart
@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            return JsonResponse({
                "status": True,
                "message": "Login sukses!",
                "username": user.username,
                "user_id": user.id,
            })
    return JsonResponse({
        "status": False,
        "message": "Username atau password salah!"
    })
```


### **2. Register Flow**
   
**A. Di Flutter:**
```dart
// 1. User mengisi form register
final _usernameController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmPasswordController = TextEditingController();

// 2. Saat tombol register ditekan
ElevatedButton(
  onPressed: () async {
    String username = _usernameController.text;
    String password1 = _passwordController.text;
    String password2 = _confirmPasswordController.text;

    // 3. Validasi password match
    if (password1 != password2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password tidak cocok!")),
      );
      return;
    }

    // 4. Kirim request register ke Django
    final response = await request.postJson(
      "http://127.0.0.1:8000/auth/register/",
      jsonEncode({
        "username": username,
        "password1": password1,
        "password2": password2,
      })
    );

    // 5. Handle response
    if (response['status'] == 'success') {
      // 6. Jika sukses, navigate ke login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Registrasi berhasil!")),
      );
    } else {
      // 7. Jika gagal, tampilkan error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response['message'])),
      );
    }
  },
)
```

**B. Di Django (Backend):**
```dart
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        
        try:
            # Validasi data
            if data['password1'] != data['password2']:
                return JsonResponse({
                    'status': 'failed',
                    'message': 'Password tidak cocok!'
                })
                
            # Cek username exists
            if User.objects.filter(username=data['username']).exists():
                return JsonResponse({
                    'status': 'failed',
                    'message': 'Username sudah digunakan!'
                })
                
            # Buat user baru
            user = User.objects.create_user(
                username=data['username'],
                password=data['password1']
            )
            user.save()
            
            return JsonResponse({
                'status': 'success',
                'message': 'Register berhasil!'
            })
            
        except Exception as e:
            return JsonResponse({
                'status': 'failed',
                'message': str(e)
            })
```

### **3. Logout Flow**

**A. Di Flutter:**
```dart
// 1. Saat tombol logout ditekan
onTap: () async {
  // 2. Kirim request logout
  final response = await request.logout(
    "http://127.0.0.1:8000/auth/logout/"
  );
  
  // 3. Handle response
  if (response['status']) {
    String uname = response["username"];
    
    // 4. Tampilkan pesan sukses
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Logout berhasil! Sampai jumpa, $uname.")),
    );
    
    // 5. Navigate ke login page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }
}
```

**B. Di Django (Backend):**
```dart
@csrf_exempt
def logout(request):
    username = request.user.username
    try:
        auth_logout(request)
        return JsonResponse({
            "status": True,
            "message": "Logout berhasil!",
            "username": username
        })
    except:
        return JsonResponse({
            "status": False,
            "message": "Logout gagal!"
        })
```
 

# 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).


</details>  
