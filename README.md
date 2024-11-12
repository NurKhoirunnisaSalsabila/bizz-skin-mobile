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
