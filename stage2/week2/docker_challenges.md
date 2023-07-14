1. #docker installation using bash script#

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

