# Tugas_laporan3_Basda
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/ae1c9958-44e3-43ab-8475-00047b388af2)
Tabel yang Anda jelaskan adalah rancangan untuk entitas "Nasabah Bank" dalam konteks basis data. Berikut adalah penjelasan mengenai setiap atribut yang ada dalam tabel tersebut:

No_nasabah (PK):

Tipe Data: Integer (INT)
Panjang: 10
Keterangan: Nomor unik yang digunakan sebagai kunci utama (Primary Key) untuk mengidentifikasi setiap nasabah bank.
Ktp (Unique):

Tipe Data: Varchar
Panjang: 20
Keterangan: Nomor Kartu Tanda Penduduk (KTP) nasabah. Dijadikan sebagai atribut unik (Unique) untuk identifikasi.
Nama:

Tipe Data: Varchar
Panjang: 20
Keterangan: Nama lengkap nasabah.
Jenis_kelamin:

Tipe Data: Enumeration (Enum)
Keterangan: Menyimpan jenis kelamin nasabah. Dalam hal ini, menggunakan Enumerasi dengan nilai 'L' untuk laki-laki dan 'P' untuk perempuan.
Alamat:

Tipe Data: Varchar
Panjang: 20
Keterangan: Alamat tempat tinggal nasabah.
Email:

Tipe Data: Varchar
Panjang: 20
Keterangan: Alamat email nasabah yang digunakan untuk kontak atau notifikasi.
No_handphone:

Tipe Data: Varchar
Panjang: 20
Keterangan: Nomor telepon atau handphone nasabah.
Tabel ini merancang bagaimana data nasabah bank akan disimpan dalam suatu basis data. Setiap nasabah memiliki nomor unik (No_nasabah) sebagai primary key untuk mengidentifikasinya. Informasi pribadi seperti KTP, nama, jenis kelamin, alamat, email, dan nomor handphone juga disimpan untuk keperluan identifikasi dan komunikasi. Data jenis kelamin diwakili dalam bentuk enumerasi (Enum) dengan nilai 'L' untuk laki-laki dan 'P' untuk perempuan.
