buat vm pada aws dengan menggunakan ubuntu versi 20.04 dengan virtual server tipe t2.micro (1 CPU 1 GB RAM)

<img width="913" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/40c77fec-e283-44ce-8931-a88d3feb127a">

pada keypair login buat ssh key baru

<img width="580" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e8d4b725-4b60-46dd-9f90-3b5f89d8b3a1">

buat ssh key baru dan ssh private key akan terdownload untuk bisa masuk ke server

<img width="444" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9664d98b-f9d2-4f7b-8a84-961ddc39d759">

atur jaringan yang bisa melewati server

<img width="558" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7322a324-88be-495c-9452-3547fb2d5084">

kemudian launch instance untuk membuat vm 

<img width="320" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ab928151-8c4f-4e94-87d1-c4805245f74f">

jika sudah ada notifikasi tersebut maka pembuatan vm sudah berhasil

<img width="882" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5e2da948-bc9f-445a-adac-960e80f1ecd6">

disini kita bisa melihat server yang sudah kita buat

<img width="739" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fcabf7f5-b3a7-4eb3-b1d0-1169270a0d20">

masuk kebagian instance dan connect lalu masukan username yang akan kalian gunakan

<img width="605" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b540b6e8-b4a5-4234-8654-d89d36bb5995">

jika tampilannya begini maka sudah bisa masuk ke server

<img width="935" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/675af773-fea4-40ad-94b2-7447e11646f4">

atau gunakan remote ssh dengan command ssh -i /path/key-pair-name.pem instance-user-name@instance-public-dns-name

<img width="765" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4122c445-553a-46c7-9365-899dc4bac568">

kita mulai deploy aplikasi seperti pada idch

