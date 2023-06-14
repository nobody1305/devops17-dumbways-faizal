pertama tama kita perlu menginstall nginx dengan sudo apt install nginx, apabila sudah pernah menginstall kita hanya perlu mengaktifkannya dengan

sudo systemctl enable nginx, dan sudo systemctl start nginx, kita bisa melihat aktivitas nginx melalui sudo systemctl status nginx

<img width="829" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1e8d7726-3185-4ca9-b301-81fb60d4c6db">

<img width="563" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/57a91403-5c1d-4ba6-acab-f3836bc03a79">

misalkan terdapat apache2, kita perlu menghapus terlebih dahulu dengan masuk ke root dengan sudo su, kemudian masukkan apt-get purge apache2

<img width="897" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/06b8fa2a-53ae-44a6-a0dc-ff744a7845cc">

sebelum menjalankan pm2 lakukan npm install didalam dumbflix-frontend untuk memunculkan node_module.

<img width="838" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9e8d6fbf-75ae-439a-9572-b6681957d842">

masukkan npm run build untuk membundle aplikasi

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/97e10572-9ab7-43c5-bdd3-a60e75a1300b">

sebelum menjalankan aplikasi dengan pm2 pastikan pm2 sudah terinstall dengan command npm install -g pm2. kemudian install command untuk menjalankan serve yaitu npm install -g serve dan sudo snap install serve

<img width="704" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/596a958c-bb99-4584-8e4b-b9e90027c188">


kemudian jalankan aplikasi dengan pm2 serve build

<img width="706" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b95aec18-5117-4407-888d-ceeef38f91d3">

aplikasi bisa dilihat pada ip addres dan pada port 8080 untuk memastikan bahwa aplikasi telah berjalan

<img width="630" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b9db604a-b7d5-416e-8e7c-7ecdbbadf2b7">

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bfe70295-471d-47e3-bdd5-dc3957c27764">

masuk pada /etc/nginx/sites-enabled atau bisa menggunakan folder lain dengan menambah include /etc/nginx/folder/*;

<img width="914" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2edbca08-e5db-4d36-9795-73aa8f2b2aca">
<img width="514" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cd735448-a182-4ac2-afc9-723f73368751">


setting myproxy.conf seperti pada gambar dibawah. untuk mengecek apakah konfigurasi berhasil cek dengan sudo nginx -t

<img width="610" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7e377188-4942-4b6c-a134-7ca9de21f7a4">

kemudian reload nginx dengan sudo systemctl reload nginx. 

<img width="881" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/204a6674-9e2d-4b2f-b257-81ca646a2c5b">

masuk ke sudo nano /etc/hosts dan tambahkan ip yang telah kalian setting pada myproxy.conf

<img width="678" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1a92a1ce-dc7d-4487-b466-7bb8b7948279">

kemudian masuk ke folder ini pada laptop kalian

<img width="613" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/36750e20-5fe6-4d9b-867c-4b9908998b96">

masuk ke file hosts sebagai administrator dan tambahkan ip dan domain server.

<img width="413" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fbf4e411-81ae-4d9f-9a7c-6fbec5cf5755">

kemudian masuk ke dumbflix-faizal.xyz dan situs sudah bisa diakses

<img width="921" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3fe843ad-e165-4483-852f-4f73dd611145">

untuk menjalankan load balancing kita akan mengatur myproxy seperti pada gambar dan kita akan melanjukannya pada pembahasan load balancing dengan 2 vm

<img width="525" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/309cdd5f-37c6-4dc2-bfc6-4be54f0c6c07">

