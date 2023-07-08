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

<img width="933" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1ecc8364-2a97-4cd7-8f2b-e6c4ddba1eb9">

disini ip yang digunakan masih berubah apabila dilakukan stop instance yang menyebabkan ketika launch instance public ip baru akan dibuat. untuk menambahkan ip statis 

kita perlu untuk menambahkan elastic ip. tutorialnya ada pada https://dev.to/bashirk/how-to-add-a-static-ip-to-an-aws-ec2-instance-2hea

<img width="708" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/42d00f0d-1572-47ea-978d-8e60ca017f7d">

apabila sudah terdeploy maka kita perlu untuk menambahkan rule pada port yang kita ingin gunakan yaitu port 3000 sebagai frontend dan 5000 sebagai backend

masuk ke security

<img width="790" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/99ff1c98-334e-41df-8794-f319797f343c">

masuk kebagian security grup

<img width="730" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/97d03e44-f23f-4fa6-94ef-d4e7d0f538c8">

edit inbound rules

<img width="730" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5f2a652f-26a8-4a8d-b3b5-c20e78284a60">

masukkan port yang ingin digunakan dengan custom tcp baru

<img width="934" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4543a158-54bc-425d-92f3-5b2b10e0c42b">

jika sudah berhasil maka bisa kita lihat pada port 3000 yang kita gunakan sehingga deployment frontend sudah berhasil

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3ab10427-59f4-4cd0-bb93-34cb48f48676">
