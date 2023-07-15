# discord notifier

buat webhook dari akun discord dan copy link addresnya

<img width="844" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f36c4b39-5550-40bd-a8fb-08a452214607">

kemudian masuk ke konfigurasi pipeline dan masuk ke pipeline syntax pilih discordsend dan masukkan link webhook dan masukkan configurasi yang diinginkan

untuk detail penggunaannya bisa dilihat pada link ini https://www.jenkins.io/doc/pipeline/steps/discord-notifier/

<img width="733" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cecae27e-63c9-440e-bccf-9966a02bc2c8">

kemudian generate pipeline script dan save

<img width="699" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/40362e3d-1c6a-4d2a-9a35-ce1042beeb40">

copy script tersebut dan paste di pipeline namun perlu pengaturan tambahan untuk menggunakan script tersebut seperi environment sehingga script akan dibuat menjadi lebih 

sederhana untuk latihan

```
discordSend description: 'build berhasil', footer: 'dumbways jaya', image: '', link: env.BUILD_URL, result: currentBuild.currentResult, scmWebUrl: '', thumbnail: '', title: 'wayshub', webhookURL: 'https://discordapp.com/api/webhooks/1129367074859397140/B2AL8n5a9Teg2FKSa82tuemNOu3SBe4XenTefkM6Q59vXpniLObl-ev0CIa9DdSWAGcQ'

```

<img width="679" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cc6b495f-a542-48ea-b2ce-52eea920b680">

kemudian pilih project atau job yang ingin digunakan

<img width="704" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b9dc3b58-9986-448d-96e3-8f9f4d1870fe">

coba kita build dan jenkins berhasil mengirim pesan ke discord kita

<img width="692" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4e1e4b01-5685-43e4-9c93-f3732394fb40">

# private repository

buat user jenkins

```
sudo adduser jenkins --shell /bin/bash
```
masuk sebagai user
```
su jenkins
```
buat jenkins slave directory
```
mkdir /home/jenkins/jenkins_slave
```
<img width="710" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e29113cf-09d9-437a-aec8-92e2c376d1fc">

masuk ke manage jenkins dan setup agent

<img width="817" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/61d080a2-0f8a-4818-be19-ac698fadba3f">

atur seperti di gambar

<img width="952" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4ca37efc-c470-46e6-bd5a-4162c8551459">

<img width="896" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3bd6d4d7-b805-4c68-b1f8-af23cf33ff0f">

masuk ke folder .ssh kemudian generate ssh-keygen dengan command

```
ssh-keygen -t rsa -C "The access key for Jenkins slaves"
```
kemudian copy id_rsa.pub ke authorized_keys
```
 cat id_rsa.pub >> ~/.ssh/authorized_keys
```
<img width="696" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/63241613-433a-4a30-91dc-08f093d8b0ba">

kemudian copy private key

<img width="516" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3223a9aa-ff9d-4982-82b3-c94ae193c53d">

buat credential baru dengan private key

<img width="913" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/28630015-32d6-4caa-9660-7855e7a70f9e">

gunakan credential tersebut untuk membuat pipeline

note:jenkins harus terinstall pada server bukan pada docker
