pertama tama kita perlu menginstall nginx dengan sudo apt install nginx, apabila sudah pernah menginstall kita hanya perlu mengaktifkannya dengan

sudo systemctl enable nginx, dan sudo systemctl start nginx, kita bisa melihat aktivitas nginx melalui sudo systemctl status nginx

<img width="829" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1e8d7726-3185-4ca9-b301-81fb60d4c6db">

<img width="563" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/57a91403-5c1d-4ba6-acab-f3836bc03a79">

misalkan terdapat apache2, kita perlu menghapus terlebih dahulu dengan masuk ke root dengan sudo su, kemudian masukkan apt-get purge apache2

<img width="897" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/06b8fa2a-53ae-44a6-a0dc-ff744a7845cc">

sebelum menjalankan pm2 lakukan npm install didalam dumbflix-frontend untuk memunculkan node_module.

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/97e10572-9ab7-43c5-bdd3-a60e75a1300b">

<img width="838" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9e8d6fbf-75ae-439a-9572-b6681957d842">


kemudian jalankan aplikasi dengan

pm2 serve build

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bfe70295-471d-47e3-bdd5-dc3957c27764">

masuk pada /etc/nginx/sites-enabled atau bisa menggunakan folder lain dengan menambah include /etc/nginx/folder/*;

<img width="914" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2edbca08-e5db-4d36-9795-73aa8f2b2aca">
<img width="514" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cd735448-a182-4ac2-afc9-723f73368751">


setting myproxy.conf seperti pada gambar dibawah

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2886a9fb-7e0d-4608-80d1-f85f429856e7">

masuk ke sudo nano /etc/hosts dan tambahkan ip yang telah kalian setting pada myproxy.conf

<img width="678" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1a92a1ce-dc7d-4487-b466-7bb8b7948279">


