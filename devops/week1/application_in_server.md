jalankan aplikasi golang dan python menampilkan nama sendiri

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



2.  python
