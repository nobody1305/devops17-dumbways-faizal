# docker installation using bash script

buat file bernama docker-install.sh (harus berformat .sh)

kemudian pastekan dengan script dibawah

```
#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo docker run hello-world
# Linux post-install
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
```

kemdian jalankan dengan command 

```
wget -O - https://gist.githubusercontent.com/fredhsu/f3d927d765727181767b3b13a3a23704/raw/3c2c55f185e23268f7fce399539cb6f1f3c45146/ubuntudocker.sh | bash
```

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8b1eb1d3-a594-4e7e-a843-87f3d64e2b4d">

# memperkecil image docker

1. menggunakan base image yang kecil seperti alpine

<img width="591" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/0451f985-d8b0-451e-bd6f-0cef8e0decf3">

2. menginstall meringkas layer pada docker file seperti command dibawah

<img width="511" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a97249e6-6465-47e0-91ad-e36191e7aa93">

menjadi

<img width="519" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/21bba5a8-7cec-41fa-b32e-299b1259f1a1">

3. memahami cara kerja cache dimana 

dari gambar dibawah dockerfile 5 lebih ringkas dan lebih efektif dibanding docker6 pada penggunaan copy

<img width="532" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/140b5c04-72e9-4ab7-9561-e6b08e37c20b">

4. menggunakan .dockerignore pada app untuk menghilangkan file" yang berupa .md




