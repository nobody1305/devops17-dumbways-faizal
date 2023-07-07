masuk ke server gateway yang terdapat nginx

pertama tama pastikan untuk menginstall snapd

<img width="541" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/92833d8b-16fa-4841-aac8-00974f5441fb">

gunakan command dibawah agar snapd terdapat pada versi terbaru

<img width="919" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7aadb167-6f08-45a4-926d-e0a39b4fddb2">

jalankan perintah untuk menghilangkan certbot auto atau package certbot lainnya bisa gunakan salah satu command dibawah

sudo apt-get remove certbot, sudo dnf remove certbot, or sudo yum remove certbot

<img width="577" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9b2472d9-8dcd-41d0-bb37-65ebd7465cdb">

install certbot dengan command sudo snap install --classic certbot

<img width="493" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b13621b9-b452-4ea9-8b21-bb6c8d00c6bd">

siapkan command untuk menjalankan certbot dengan sudo ln -s /snap/bin/certbot /usr/bin/certbot

kemudian jalankan sudo certbot --nginx

akan ada beberapa pertanyaan seperti email untuk pemberitahuan dan dan pertanyaan untuk menyetujui kebijakan yang berlakua pada certbot

<img width="891" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/15479930-a45b-4df8-95c5-2e5ed9157d57">

apabila sudah ada seperti ini maka link sudah bisa di secure 

<img width="947" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c4ed1e25-2dbe-48a6-b130-0b3d33a2b381">

jika kita melihat pada aplikasi kita maka domain http akan menjadi https yang awalnya not secure menjadi secure

<img width="894" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fd7b8593-7dd3-4a7d-a90d-b9d5d0a6ff94">

<img width="483" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5a577b04-9c49-41e5-8244-933f1a23bfa2">

apabila kita belum yakin dengan konfigurasi nginx maka kita bisa saja mendapat sertifikatnya saja dengan command sudo certbot certonly --nginx

apabila ingin memperbarui sertifikat sebelum expired atau ingin memperbarui otomatis gunakan command sudo certbot renew --dry-run
