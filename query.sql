syntax sql 
=== Buat database ===
enter terus sampai ada tulisan "postgres=#"

===Wira Abdi Fazriansyah===

//membuat database
#CREATE DATABASE nasabah;

//menghubungkan ke database
\c nasabah

//membuat table
#CREATE TABLE nasabah (id_nasabah SERIAL PRIMARY KEY, 
nama_nasabah VARCHAR NOT NULL, 
alamat_nasabah VARCHAR NOT NULL, 
jenis_kelamin VARCHAR NOT NULL);
#SELECT * FROM nasabah;

#CREATE TABLE rekening (id_rekening SERIAL PRIMARY KEY, 
nama_nasabah VARCHAR NOT NULL, 
nomor_rekening INT NOT NULL, 
saldo INT NOT NULL, 
kode_cabang INT NOT NULL);
$SELECT * FROM rekening;

#CREATE TABLE cabang (id_cabang SERIAL PRIMARY KEY, 
kode_cabang VARCHAR NOT NULL, 
nama_cabang VARCHAR NOT NULL, 
kota VARCHAR NOT NULL);
#SELECT * FROM rekening;

//menambahkan FOREIGN KEY dengan perintah
# ALTER TABLE peminjaman ADD FOREIGN KEY (nama_nasabah) REFERENCES nasabah (nama_nasabah);
# ALTER TABLE peminjaman ADD FOREIGN KEY (kode_cabang) REFERENCES rekening (kode_cabang);

INSERT INTO nasabah (id_nasabah, nama_nasabah, alamat_nasabah, jenis_kelamin) VALUES 
(1, 'prima', 'jakarta', 'laki'),
(12, 'irma', 'riau', 'wanita');

INSERT INTO rekening (id_rekening, nama_nasabah, nomor_rekening, saldo, kode_cabang) VALUES 
(2, 'pay', 123, 20000000, 321),
(23, 'ovo', 345, 1300000, 231);

INSERT INTO cabang (id_cabang, kode_cabang, nama_cabang, kota) VALUES 
(3, 132, 'siji', 'jakarta'),
(34, 213, 'loro', 'jogja');


// untuk melihat data table berdasarkan id
# SELECT * FROM nama_tabel WHERE id = value_field_id;

// untuk melihat data table berdasarkan nama_field
# SELECT * FROM nama_tabel WHERE nama_field = value_nama_field;

// untuk mengubah data di table
# UPDATE nama_tabel SET nama_field = value_nama_field yang sudah diganti WHERE id = value_field_id;

// untuk menghapus data di table
# DELETE FROM nama_tabel WHERE id = value_field_id