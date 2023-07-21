pertama tama kita pastikan pip sudah ada pada python3 apabila belum terinstall maka install dengan

```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
```

<img width="951" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9947fdbd-9981-486a-b9b7-4ff8629c3b1f">

kemudian kita lanjutkan dengan menginstall ansible versi terbaru
```
python3 -m pip install --user ansible
```
dan untuk mengupgrade
```
python3 -m pip install --upgrade --user ansible
```
<img width="951" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/67ca61dc-302b-4343-8dfe-9830480bdd0b">

apabila terjadi kegagalan dalam penginstalan bisa pindah file dengan
```
sudo cp .local/bin/ansible /usr/local/bin
```
atau jika tidak mau ribet gunakan saja sudo apt install ansible

kemudian buat file ansible.cfg

dan masukkan konfigurasi untuk masuk ke server tujuan

```
[defaults]
inventory = Inventory
private_key_file = /home/nobody1305/.ssh/id_rsa
host_key_checking = false
interpreter_python = auto_silent 
```
kemdian buat file inventory untuk memasukkan ip tujuan
```
[appserver]
103.183.75.227

[gateway]
103.171.85.225

[monitoring]
103.139.193.44

ansible_user="nobody1305"
```
kemudian cek dengan menggunakan ansible all -m ping untuk mengetahui apakah ansible sudah terhubung ke server tujuan
```
ansible all -m ping
```
<img width="650" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/27a64b6c-2fad-4380-808c-6f54ef156e8d">

kemudian kita akan membuat teks yml ansible untuk menjalankan instalasi aplikasi dan lain lain

docker
```
- become: true
  gather_facts: false
  hosts: appserver
  tasks:
    - name: "Updating apt module"
      apt:
        update_cache: true
    - name: "Install ca-cert, curl, gnupg"
      apt:
        name:
          - ca-certificates
          - curl
          - gnupg
    - name: "Install GPG Key"
      apt_key:
        url: "https://download.docker.com/linux/ubuntu/gpg"
    - name: "install docker repository"
      apt_repository:
        repo: "deb https://download.docker.com/linux/ubuntu focal stable"
    - name: "install docker enginge"
      apt:
        update_cache: true
        name:
          - docker-ce
          - docker-ce-cli
          - containerd.io
          - docker-buildx-plugin
          - docker-compose-plugin
```


