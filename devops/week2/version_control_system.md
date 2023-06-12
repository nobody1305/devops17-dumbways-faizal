version control system adalah kumpulan perangkat lunak yang sudah terintegrasi dan bisa digunakan dalam pengembangan software dan dapat menyimpan semua perubahan yang terjadi pada codingan.

buat repository sample (diluar tugas) yang berisi 3 file dengan isi yang berbeda dan buat 2 branch.

pertama tama kita akan membuat repository dengan judul contoh repository

<img width="948" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bccc7e46-4ffb-40c0-9dc9-9779ada9e77e">

sebelum kita membuat file dan melakukan aktivitas pada github melalui terminal, kita perlu mengatur ssh key terlebih dahulu untuk bisa mengakses repository github. 

kita gunakan ssh-keygen untuk membuat ssh key dengan command ssh-keygen

<img width="489" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1865b647-9166-46c4-b966-6ab5761ebd8b">

setelah ssh-keygen dibuat kita bisa melihat pada folder .ssh untuk mendapatkan ssh key nya.

<img width="569" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/71bfaad4-e4a1-4418-b543-539600115c76">

masuk ke folder .ssh dan kita bisa melihat id_rsa.pub dengan cat id_rsa.pub kemudian copy hasilnya dan masuk ke pengaturan github

<img width="957" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/86b449a3-4c3e-46cb-9e82-2c0640425461">

setelah masuk ke pengaturan github masukkan seperti pada digambar

<img width="857" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a1626930-6610-45bc-bb90-fc29f96e4a3d">

kemudian buat file secara manual pada disk C:Users/HP/.ssh dan paste id_rsa yang telah didapatkan tadi

<img width="602" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2427fd6e-8697-41e3-b668-43a6f0daba9d">


<img width="602" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/934e3587-e470-436d-b86a-777270ba8a1d">


langkah awal yang sebaiknya dilakukan adalah mengatur global username dan email dengan menggunakan command

git config --global user.name "username kalian" dan git config --global user.email "email kalian". untuk cek kita bisa gunakan git config --list

<img width="538" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a650d6ad-9a7c-4307-bcad-54ad5ef1df9f">

