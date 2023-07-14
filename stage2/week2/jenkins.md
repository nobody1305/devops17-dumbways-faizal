buat vm baru dengan spesifikasi storage 20 gb cpu 2 dan ram 2 gb

dan pastikan docker sudah terinstall

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5e91ab38-329b-4bca-b892-d5877cf7ec44">

jalankan jenkins on top docker pada port 8080

<img width="953" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/0422c52e-a083-4f01-9b6b-52c152816e2b">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/699a70ca-dbae-4986-affd-f7caf256c906">

atau masuk dengan docker compose up -d dengan isi

```
  GNU nano 4.8                                             docker-compose.yml                                                        version: '3.8'
services:
   jenkins:
      image: jenkins/jenkins:latest
      container_name: jenkins
      restart: always
      privileged: true
      user: root
      ports:
         - 8080:8080
         - 50000:50000
      volumes:
         - ~/jenkins:/var/jenkins_home
```

masuk ke ip yang sudah dijalankan 

<img width="953" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b96beb75-66e4-48dc-8ab5-4479cef79dbb">

masuk ke logs dan copy sandi dari jenkins

<img width="947" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/658e70cf-08bf-4ec1-b575-7c21eb4e1bb4">

masuk ke select plugin to install untuk memilih beberapa tool yang ingin digunakan

<img width="955" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/beb23b9c-5cfb-48b2-bdc1-a16ce1d1c888">

centang ssh agent dan pastikan pipeline git sudah tercentang

<img width="749" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/6335ab53-b40f-42b9-9276-60a796bad58a">

kemudian install dan tunggu hingga selesai

<img width="775" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/972d9a16-b763-4aa6-826c-0ff03c7e8d5b">

buat akun jenkins

<img width="712" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ef124c6e-c678-4611-92a9-e458a84463b5">

kita bisa menggunakan domain yang sudah direverse proxy 

<img width="773" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e2289564-1192-4c25-b861-ed59e0f84202">

<img width="741" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/266e29c8-ed42-4013-90ce-f2f7e90d7ba9">

masuk ke manage jenkins dan masuk ke credential

<img width="938" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bdada311-e213-4ef1-ad53-215d849842d2">

masuk ke global credential dan add credential

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c39b112e-7fc7-4e96-911a-4e022e04d69b">

masukkan informasi seperti usename dari server dan masukkan juga private key sebagai kunci untuk masuk ke app server

<img width="883" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/da4a3986-c668-4936-8c70-fd842a2c2b50">

<img width="808" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1f02ed59-ee21-436d-a6d7-1e76cf3b1552">

kita bisa menambah plugin untuk multibranch pipeline dan bisa menambah fitur seperti notifier

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/724e2e08-c71e-424c-bd7e-d0f1be7e10f2">

masuk ke create job dan buat pipeline

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/24dce5b7-ec93-4bee-a9b7-3829049f0ada">

<img width="945" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/72fb3137-2d2e-472a-bca2-33846b5f5371">

masuk general dan centang hook trigger github. apabila ingin menggunakan auto trigger dari script bisa centang trigger remotely

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/300d305c-f7d2-4cc7-896f-a398309cee16">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/71fbf9ad-479f-4aaa-b528-564855ccc053">

sebelum melakukan remote github kita perlu melakukan fork terhadap repository github wayshub frontend dan backend

<img width="922" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4aff2929-5b0e-43ba-a818-e779ff806e22">

<img width="941" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c8849380-8ab2-4861-977f-34b7f2125b87">

masukkan repository github yang digunakan sebagai aplikasi kita buat (frontend dan backend)

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f0c11994-960f-4ea8-b77b-5af428ad6b3d">

kemudian masuk ke app server dan masuk ke folder wayshub-frontend dan buat nano jenkinsfile
1. pull repo
2. docker build
3. docker compose
4. docker push

`Jenkinsfile Frontend`
```
def branch = "main"
def remote = "origin"
def directory = "~/wayshub-frontend"
def server = "fama@103.191.92.211"
def cred = "wayshub1"
def image = "nobody1305/fama-frontend:latest"

pipeline{
    agent any
    stages{
        stage('repo pull'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
		    docker compose down
                    cd ${directory}
                    git pull ${remote} ${branch}
                    exit
                    EOF"""
                    }
                }
            }

	 stage('docker build'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
                    docker build -t fama-frontend .
                    exit
                    EOF"""
                    }
                }
            }

        stage('docker compose'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
                    docker compose up -d
                    exit
                    EOF"""
                    }
                }
            }
	
	 stage('docker push'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
		    docker tag fama-frontend:latest ${image}
                    docker push ${image}
                    exit
                    EOF"""
                    }
                }
            }
        }
    }
```

kemudian pastikan bahwa repository yang digunakan adalah repository kalian

<img width="888" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/be5bf666-1a3a-415a-890b-0455dbc8a34d">

<img width="957" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c098c8e0-cb64-44a6-8acb-c3795c2db66d">

apabila terjadi error pada ssh keys maka jalankan ssh key yang baru dengan

ssh-keygen -t ed25519 -C 'email kalian'

<img width="882" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4634ca0a-928e-482d-aec3-8b58142eb798">

kemudian push

<img width="959" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cfd5ca88-ace8-4b77-8528-566c9f1cddcf">

atur webhook pada pengaturan github

<img width="948" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1c79527b-dd7a-45ab-bce5-6f27121d6941">

kemudian atur bagian backend seperti pada frontend namun tambahkan command docker compose -f compose-mysql.yml up -d untuk menjalankan mysql 

`Jenkinsfile backend`
```
def branch = "main"
def remote = "origin"
def directory = "~/wayshub-backend"
def server = "fama@103.191.92.211"
def cred = "wayshub1"
def image1 = "nobody1305/fama-backend:latest"
def image2 = "nobody1305/fama-database:latest"

pipeline{
    agent any
    stages{
        stage('repo pull'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
		    docker compose down
                    cd ${directory}
                    git pull ${remote} ${branch}
                    exit
                    EOF"""
                    }
                }
            }

	  stage('docker compose mysql'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    docker compose -f compose-mysql.yml up -d
                    exit
                    EOF"""
                    }
                }
            }

	 stage('docker build'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
                    docker build -t fama-backend .
                    exit
                    EOF"""
                    }
                }
            }

        stage('docker compose'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
                    docker compose up -d
                    exit
                    EOF"""
                    }
                }
            }
	
	 stage('docker push'){
            steps{
                sshagent([cred]){
                    sh """ssh -o StrictHostKeyChecking=no ${server} << EOF
                    cd ${directory}
		    docker tag fama-backend:latest ${image1}
		    docker tag mysql:latest ${image2}
                    docker push ${image1}
		    docker push ${image2}
                    exit
                    EOF"""
                    }
                }
            }
        }
    }
```


<img width="682" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9450c2bc-27b3-45a9-8c43-a9dd5b593370">

jika sudah seperti ini maka build sudah berhasil dilakukan

<img width="957" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ed6514a9-a8c7-4790-8b39-e8d5a8b940f5">

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/93482d1c-6d89-4403-a87a-850dafecc4bd">

<img width="708" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7b50bce1-895a-4575-9250-fe6b26cfc092">

begitu juga docker push jg sudah bisa dijalankan

<img width="859" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/06d54dc7-badb-486c-a558-d6bb76c702a6">

atur reverse proxy

<img width="711" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bd035d53-56f8-40c4-ba70-0cd3b0b854ba">

<img width="914" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fb1e7273-e4d2-4d19-a447-1db6330b8daa">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/db2fe22f-71cd-4fb7-bb74-0d4092f54237">

jangan lupa perbarui link webhook pada github dengan reverse proxy yang baru

<img width="747" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/094c1067-87e8-416a-8638-d4f7fb18211b">
