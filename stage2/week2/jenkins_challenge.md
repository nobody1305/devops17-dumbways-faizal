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

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c231cf70-8882-4b82-9214-22cc69078a31">

