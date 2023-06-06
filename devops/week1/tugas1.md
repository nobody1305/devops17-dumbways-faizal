ini adalah tugas pertama hari pertama
apa itu devops?

jawab : devops adalah suatu bidang yang menjebatani antara development team dan operation team. dimana tugas devops meliputi kerja sama dengan team development untuk merilis suatu aplikasi dan membangun infrastruktur dalam server. kemudian selain itu devops juga memantau bagaimana aplikasi ketika sudah dijalankan apakah terjadi masalah dan sebagainya dan tugas devops adalah untuk menyelesaikan masalah tersebut.

lifecycle devops terdiri dari :
Continuous improvement, Continuous integration, Ongoing Testing, Continuous deployment, Feedback regularly, Continuous Monitoring, Operational continuity

instalasi ubuntu :
Download file ubuntu server dan VMware yang dibutuhkan
Install Vmware
Masukkan file iso ubuntu server yang telah di download

 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3c21cd81-823a-45f8-9c42-9be03a075c9a)
 
Masukkan nama, username, dan password

 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b755b98c-1087-42e8-915b-c12a2b7d6c20)
 
Tentukan directory dari ubuntu server
Tentukan space minimal 10 Gb

 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c83a5a62-00af-4d65-a193-3843ac964f51)
 
Pada bagian ini klik customize hardware dan tentukan memory yang dibutuhkan (sesuai laptop)
 
Masuk kebagian network adapter pindah dari Nat ke bridged dan cari adapter yang digunakan Untuk mengecek adapter bisa ke device manager dan kemudian cari network adapter setelah selesai klik oke dan lanjutkan ke instalasi
 
setelah memasuki instalasi pilih bahasa dan teruskan saja tanpa mengubah apapun hingga pada saat pada window ini masuk ke ens33 dan rubah ip dinamis ke static
 
Masukkan subnet dengan format xxx.xxx.xxx.0/24 dimana tanda silang tersebut adalah ip yang tidak bisa dirubah dari ip wifi atau hostpot hp. (di cmd klik ipconfig untuk cek ip wifi)
Masukkan addres dengan for 192.168.100.xxx (0-256)
Masukkan gateway dan nama server google 8.8.8.8, 8.8.4.4 
 
Pada window ini klik custom storage layout
 
Ikuti langkah dibawah untuk membuat partisi (1gb untuk backup dan sisanya untuk data)
 
Pada window ini ubah 1 G untuk swap dan sisanya untuk data biasa
 
 
Masukkan nama, nama server, username, dan password
 
Centang ssh server untuk bisa digunakan pada powershell (remote)
 
Lanjutkan ke penginstalan dan butuh waktu lama. Jika selesai reboot dan masukkan username dan password yang telah digunakan
 
Jika sudah pada tahap ini berarti penginstalan berhasil
 
Untuk mengecek apakah bisa terhubung dengan internet klik ping google.com jika sudah seperti window dibawah maka sudah terhubung ke internet
 
Untuk menggunakan remote dengan powershell gunakan ssh <username>@<ip addres>
 


