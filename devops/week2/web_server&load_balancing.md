pertama tama kita perlu menginstall nginx dengan sudo apt install nginx, apabila sudah pernah menginstall kita hanya perlu mengaktifkannya dengan

sudo systemctl enable nginx, dan sudo systemctl start nginx, kita bisa melihat aktivitas nginx melalui sudo systemctl status nginx

<img width="829" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1e8d7726-3185-4ca9-b301-81fb60d4c6db">

<img width="563" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/57a91403-5c1d-4ba6-acab-f3836bc03a79">

misalkan terdapat apache2, kita perlu menghapus terlebih dahulu dengan masuk ke root dengan sudo su, kemudian masukkan apt-get purge apache2

<img width="897" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/06b8fa2a-53ae-44a6-a0dc-ff744a7845cc">

