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

![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/439345e1-22e4-4558-9b90-7f77da028274)
 
Masuk kebagian network adapter pindah dari Nat ke bridged dan cari adapter yang digunakan Untuk mengecek adapter bisa ke device manager dan kemudian cari network adapter setelah selesai klik oke dan lanjutkan ke instalasi
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9e8e6d78-54b0-4130-9c2a-c3abcf79e2ce)

setelah memasuki instalasi pilih bahasa dan teruskan saja tanpa mengubah apapun hingga pada saat pada window ini masuk ke ens33 dan rubah ip dinamis ke static
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/27fe17d6-6f66-4c9e-b336-e6bb6b16ba92)

Masukkan subnet dengan format xxx.xxx.xxx.0/24 dimana tanda silang tersebut adalah ip yang tidak bisa dirubah dari ip wifi atau hostpot hp. (di cmd klik ipconfig untuk cek ip wifi)
Masukkan addres dengan for 192.168.100.xxx (0-256)
Masukkan gateway dan nama server google 8.8.8.8, 8.8.4.4 
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/543e26f9-16c7-4e42-954a-14da4a0fc92c)

Pada window ini klik custom storage layout
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/45b93251-5961-4f64-9a03-9ec183fd198c)

Ikuti langkah dibawah untuk membuat partisi (1gb untuk backup dan sisanya untuk data)
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8a769965-5e55-4c76-b2c8-7150bf1a4efb)

Pada window ini ubah 1 G untuk swap dan sisanya untuk data biasa
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/717163e6-add2-4123-8db0-8ec7666aaa59)
 
![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7cb5d55b-7d7a-4446-a7da-296363877acb)

Masukkan nama, nama server, username, dan password
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ec30fc50-0e3f-487a-815b-ea7bebd083ea)

Centang ssh server untuk bisa digunakan pada powershell (remote)
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1aa5da0a-989f-4742-a472-5c7eac921d70)

Lanjutkan ke penginstalan dan butuh waktu lama. Jika selesai reboot dan masukkan username dan password yang telah digunakan
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5b2d8119-d2eb-43ae-8fb8-efea11b94358)

Jika sudah pada tahap ini berarti penginstalan berhasil
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/540a82c4-22e4-4e2f-8305-cce8a1b01d5b)

Untuk mengecek apakah bisa terhubung dengan internet klik ping google.com jika sudah seperti window dibawah maka sudah terhubung ke internet
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/44035c00-5fc4-482b-aafa-3298310118fa)

Untuk menggunakan remote dengan powershell gunakan ssh username@ip addres
 
 ![image](https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fa345d35-e4f2-4848-b611-632b9ac6d95d)



