perbandingan antara monolith dan microservice?

jawab :

monolith merupakan bentuk arsitektur aplikasi yang terdiri dari 1 pusat database yang mencakup semua service

microservice merupakan bentuk aristektur aplikasi yang terdiri dari bagian" tersendiri dan tidak terpusat pada 1 database. setiap service memiliki bagian sendiri

jalankan wayshub-frontend pada node.js

jawab :



jalankan aplikasi golang dan python menampilkan nama sendiri!

jawab :

1.  golang

buat folder terlebih dahulu menggunakan : mkdir golang dan pindah ke folder golang : cd golang/

kemudian install golang terlebih dahulu dengan :

wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && sudo su

kemudian gunakan kode ini untuk close root :

rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz && exit

<img width="923" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/36e9cd4f-dd1b-471b-b94d-854fb75bbc90">

masuk ke .bashrc : sudo nano .bashrc dan pastekan : export PATH=$PATH:/usr/local/go/bin pada bagian paling bawah 

untuk mengecek dimana golangnya lihat ke folder /usr/local/go/bin

gunakan exec bash untuk refresh dan jalankan go version untuk mengecek golang

<img width="473" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5290b736-ba99-420d-aa00-4351b6781314">

buat file .go dengan nano index.go

tulis nama kalian dengan kode dibawah

run dengan go run index.go

<img width="377" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/82fe7cd3-5b58-4e1c-872e-6a942b2ce40f">

<img width="348" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2e9e58d6-a6cc-4ab8-9c1f-8d2de37868bf">

untuk build kalian bisa gunakan : go build index.go

kemudian run dengan ./index

<img width="345" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/96ea1ec3-f742-41cd-b126-9c1a83d2441d">


2.  python
