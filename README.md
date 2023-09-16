# Tugas_laporan3_Basda
# NAMA : BAIM MUDRIK AZIZ_NPM G1A022071
# Tabel Nasabah_Bank
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/ae1c9958-44e3-43ab-8475-00047b388af2)
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/f3f8af85-0c40-4a1b-8a8d-9874b39a5121)
Tabel ini merancang bagaimana data nasabah bank akan disimpan dalam suatu basis data. Setiap nasabah memiliki nomor unik (No_nasabah) sebagai primary key untuk mengidentifikasinya. Informasi pribadi seperti KTP, nama, jenis kelamin, alamat, email, dan nomor handphone juga disimpan untuk keperluan identifikasi dan komunikasi. Data jenis kelamin diwakili dalam bentuk enumerasi (Enum) dengan nilai 'L' untuk laki-laki dan 'P' untuk perempuan.
# Tabel Perusahaan_Bank
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/bb6db07b-9c2e-4a23-8412-2f10eae7fba2)
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/b275605c-ff51-4175-b00a-f5cd7a84529f)
Tabel ini merancang bagaimana data perusahaan bank akan disimpan dalam suatu basis data. Setiap perusahaan bank memiliki nomor unik (No_bank) sebagai primary key untuk mengidentifikasinya. Selain itu, terdapat kunci asing (No_nasabah) yang merujuk ke nomor unik nasabah bank, mengindikasikan hubungan antara perusahaan bank dan nasabah bank. Informasi tentang alamat bank dan nama pemilik bank juga disimpan.
# Tabel Rekening_Bank
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/8f81f18b-b8b0-40d1-b373-bd6733447e5d)
![image](https://github.com/Baimmudrikaziz/Tugas_laporan3_Basda/assets/131481749/bdafa7f0-cd76-4585-a8e2-75f979da66be)
Tabel ini merancang bagaimana data rekening bank akan disimpan dalam suatu basis data. Setiap rekening bank memiliki nomor unik (No_rekening) sebagai primary key untuk mengidentifikasinya. Terdapat kunci asing (No_nasabah dan No_bank) yang menghubungkan rekening bank dengan nasabah bank dan perusahaan bank. Informasi tentang saldo rekening dan jenis keanggotaan rekening juga disimpan.
