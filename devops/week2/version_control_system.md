version control system adalah kumpulan perangkat lunak yang sudah terintegrasi dan bisa digunakan dalam pengembangan software dan dapat menyimpan semua perubahan yang terjadi pada codingan.

buat repository sample (diluar tugas) yang berisi 3 file dengan isi yang berbeda dan buat 2 branch.

pertama tama kita akan membuat repository dengan judul contoh repository

<img width="948" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bccc7e46-4ffb-40c0-9dc9-9779ada9e77e">

sebelum kita membuat file dan melakukan aktivitas pada github melalui terminal, kita perlu mengatur ssh key terlebih dahulu untuk bisa mengakses repository github. 

kita gunakan ssh-keygen untuk membuat ssh key dengan command ssh-keygen

<img width="515" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b696ed39-06e6-4474-9421-f63a6371e3f0">

setelah ssh-keygen dibuat kita bisa melihat pada folder .ssh untuk mendapatkan ssh key nya.

<img width="523" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cecae131-6966-494c-afd9-859696f0a02c">

masuk ke folder .ssh dan kita bisa melihat id_rsa.pub dengan cat id_rsa.pub kemudian copy hasilnya dan masuk ke pengaturan github

<img width="957" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/86b449a3-4c3e-46cb-9e82-2c0640425461">

setelah masuk ke pengaturan github masukkan seperti pada digambar

<img width="614" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f2326637-9d7d-403a-817d-97ee14b9e41c">

langkah awal yang sebaiknya dilakukan adalah mengatur global username dan email dengan menggunakan command

git config --global user.name "username kalian" dan git config --global user.email "email kalian". untuk cek kita bisa gunakan git config --list

<img width="538" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a650d6ad-9a7c-4307-bcad-54ad5ef1df9f">

masuk ke pembuatan file pertama tama kita lakukan git init kemudian buat 3 file dan kita bisa melihat status dengan git status seperti pada gambar dibawah

<img width="544" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/6a28a861-1726-4d09-8b8b-1d11ae53ba46">

lakukan commit dengan command : git commit -m "isi sendiri"

<img width="393" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ddbc64ae-95cb-43f7-9555-dc41e0dffcc8">

masukkan git remote add origin git@github.com:username/repository.git

kemudian git push origin master untuk mengupload file ke github account

<img width="661" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/27c05c93-0fac-4370-83b2-cc89b673022d">

jika kita refresh maka akan ada file yang telah kita buat

<img width="700" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e6928dd5-5306-4886-9042-ec8c67e072e7">

buat 2 branch staging dan production dengan git branch nama folder dan kita bisa mengecek branch dengan git branch -a

<img width="316" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5670e63e-9e04-4d66-a5f7-66983b15b249">

untuk pindah branch bisa kita gunakan git checkout namarepository

<img width="339" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8a6957f5-1c3b-4039-ab26-bb2b49d2b006">

coba kita edit isi file1 dan akan kita masukkan kedalam branch production

<img width="507" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d04cef1b-afda-4f75-89b7-89fde82f7a4f">

gunakan git push origin production

<img width="584" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f270793b-13c6-4ee4-8d3f-715f05675f92">

kita bisa melihat perubahan tersebut pada branch production atau git staging yang kita inginkan

<img width="606" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f0d82833-6f3c-4441-85ae-46b5370ddf90">

<img width="319" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e58f0a2c-405c-41ac-88da-686b2fdc4881">

2 command git lain

git log : untuk melihat hasil perubahan yang telah dicommit oleh siapa dan jam berapa

<img width="702" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/0c07d522-44c2-4e77-97a7-91b3c5ebe404">

git reset : digunakan untuk mereset aktivitas seperti git add . yang kita lakukan secara tidak sengaja atau aktivitas git lain

<img width="552" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/0307df35-04ea-4c7d-ac7d-a870bd342c5e">


