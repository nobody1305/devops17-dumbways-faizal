pertama tama kita buat vm untuk appserver dengan spesifikasi ram 2 GB 2 CPU 20 GB storage 

<img width="654" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b5632d92-2e4a-421b-aa7f-b7a83bc2d6ed">

setelah itu masuk ke server dengan menggunakan ip public yang telah digunakan dan clone file wayshub frontend dan backend

<img width="717" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/604682f9-19b9-497b-95f5-0de7f6382067">

sebelum menjalankan aplikasi instal terlebih dahulu node.js nya

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f651f379-3124-4776-ba49-a64f68a585f1">

masuk ke folder wayshub-frontend dan jalankan npm instal untuk memunculkan node_modules setelah itu install pm2 dengan npm install pm2 -g

<img width="820" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3fa5df29-5674-4d79-87e1-b547a5f83dad">

<img width="948" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7cb829f8-2667-4387-b88b-aa7fdc4e681d">

jalankan npm run build, npm install serve -g dan jalankan dengan pm2 serve build <port> --spa

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e1479632-a68b-401b-8b58-46cece0ed82d">

aplikasi bisa dilihat pada public ip pada port 8080

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/210ce2cb-44cd-4fa4-b3d8-1c6c3a2985e2">

<img width="916" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f678ae7c-1876-47df-8adb-5257fa9bb118">

kemdian install terlebih dahulu mysql untuk membuat database dengan sudo apt install mysql-server

<img width="846" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ee9f575e-ebab-4091-8a04-3cb78f99f29f">

masuk ke mysql sebagai root dan set password untuk keamanan data

<img width="835" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9627c2b1-f5bb-43f7-aae3-a861e3ee1050">

sehingga untuk masuk kita perlu untuk memasukkan password terlebih dahulu

<img width="705" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b21e9221-cf01-48f3-8190-4bae307cc42f">

kemudian set mysql_secure_installation kemudian atur sedemikian sesuai dengan kebutuhan. kita bisa mengamankan database dengan

1. mengatur kembali password sesuai dengan level yang baik 
2. menghilangkan anonymus user
3. menghilangkan akses root secara remote
4. menghilangkan test database
5. reload privillege tabel untuk memastikan semua perubahan akan langsung dapat berjalan

<img width="810" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8beb0adf-25bc-4f4a-bc5d-f04a90069a96">

untuk menambahkan user pada mysql kita bisa gunakan create user 'userbaru'@'%' identified by 'password';

<img width="582" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/52a172c8-be7c-4e6b-ba0b-c845c0c7dc79">

kemudian masuk ke root dan grant all privileges on *.* to 'userbaru'@'%';

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8dffd205-c4cb-46f3-aaee-792c45f06c3d">

masuk kembali sebagai user dan kita sudah bisa membuat database melalui user baru

<img width="622" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/32f27972-2f3e-4282-86e8-61fbaa526eba">

kemudian kita bisa gunakan database tersebut walaupun masih kosong

<img width="438" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/003c3171-acaa-408f-9814-79782ed84135">

kemudian kita masuk ke folder wayshub-backend, jalankan npm install, dan jalankan dengan aplikasi pm2 dengan pm2 start 'npm start'

<img width="946" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/20e339e7-465c-425b-a971-d46af09730ab">

kita bisa cek pada port 5000, jika sudah muncul sperti pada gambar maka bisa dikatakan bahwa deploy backend berhasil

<img width="621" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/35121825-9f8e-4d27-9b88-d17864c25530">

kemudian kita integrasikan database, backend, dan frontend

masuk ke bagian config pada wayshub-backend dan edit file config.json pada bagian development seperti pada gambar dibawah

<img width="919" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/691e5f71-402d-4534-928c-fa82d4afffea">

kemudian jalankan npm install -g sequelize-cli untuk menyesuaikan data yang ada pada backend ke database

<img width="957" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/184c046d-efeb-4317-b311-d96c434229d4">

hal itu dilakukan untuk bisa menggunakan command untuk membuat database yang kita buat secara manual sebelumnya

<img width="568" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/31132b48-1cb5-4625-82eb-1576b00542ff">

kemudian jalanakan sequelize db:migrate untuk memigrasi data dari wayshub ke server tujuan

<img width="810" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cde9104e-adb5-4d69-8525-5ca990efb6e5">

kita bisa mengecek database pada mysql sperti pada gambar dibawah, dimana pada database wayshub sudah terdapat data yang sesuai

<img width="820" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f3204864-ca75-4bf3-9464-e703dd9ea82a">

masuk ke wayshub-frontend/src/config/api.js disini kita bisa melihat bahwa setingan backendnya terdapat pada localhost:5000 sehingga sudah terintegrasi

nanti bisa kita ganti apabila sudah ada domain sendiri

<img width="882" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/675f8646-899a-488b-91cd-996e2266b0cd">

<img width="550" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/6424138f-2ad4-413f-a9c9-df2a0bd21052">

sekarang kita coba masuk ke aplikasi wayshub sebagai client untuk menguji aplikasi

<img width="908" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/74d37cd7-3a40-418f-9626-b31e20ac92d3">

