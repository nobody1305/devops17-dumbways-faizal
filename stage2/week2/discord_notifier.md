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
discordSend description: 'wayshub project', footer: 'dumbways jaya', image: '', link: 'env.BUILD_URL.', result: 'build berhasil', scmWebUrl: '', thumbnail: '', title: 'wayshub', webhookURL: 'https://discordapp.com/api/webhooks/1129367074859397140/B2AL8n5a9Teg2FKSa82tuemNOu3SBe4XenTefkM6Q59vXpniLObl-ev0CIa9DdSWAGcQ'
```

<img width="685" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d1ece50a-bba4-48bb-8d13-6b2a550e76fd">

kemudian pilih project atau job yang ingin digunakan

<img width="689" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8030a1c9-9cf3-4d6b-9b68-8f047f2159aa">

coba kita build



