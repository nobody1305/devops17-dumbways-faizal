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

install sudo apt install whois dan jalankan

printf "badpassword" | mkpasswd --stdin --methoed=sha-256

buat user baru 
```
- hosts: all
  become: true
  vars:
    - username: faizal
    - password: $5$bUv1FDql/MPiixOB$w5KyJR9LkaC27nrHsLIudJstusWhAKQasTRHgbtq5/3

  tasks:
    - name: "Setup passwordless sudo"
      lineinfile:
        path: /etc/sudoers
        state: present
        regexp: '^%sudo'
        line: '%sudo ALL=(ALL) NOPASSWD: ALL'
        validate: '/usr/sbin/visudo -cf %s'

    - name: "Create a new regular user with ansible.builtin"
      ansible.builtin.user:
        groups: sudo
        name: "{{username}}"
        password: "{{password}}"
        state: present
        append: yes
        home: /home/faizal

    - name: "Set authorized key for remote user"
      ansible.posix.authorized_key:
        user: "{{ username }}"
        state: present
        key: "{{ lookup('file', lookup('env','HOME') + '/.ssh/id_rsa.pub') }}"

    - name: "Disable password authentication for root"
      lineinfile:
        path: /etc/ssh/sshd_config
        state: present
        regexp: '^#?PermitRootLogin'
        line: 'PermitRootLogin prohibit-password'

    - name: "Update apt and install required system packages"
      apt:
        pkg:
          - curl
          - vim
          - git
          - ufw
        state: latest
        update_cache: true

    - name: "UFW - Allow SSH connections"
      community.general.ufw:
        rule: allow
        name: OpenSSH

    - name: "UFW - Enable and deny by default"
      community.general.ufw:
        state: enabled
        default: deny
```
<img width="683" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d427934f-a31d-452b-9aef-809a09490635">


docker
```
- become: true
  gather_facts: false
  hosts: appserver, monitoring
  vars:
    - username: faizal
  tasks:
    - name: "Updating apt module"
      apt:
        update_cache: true
    - name: "change apt source.list"
      replace:
        path: /etc/apt/sources.list
        regexp: "http://mirrors.idcloudhost.com/ubuntu"
        replace: "http://archive.ubuntu.com/ubuntu"
        backup: yes
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
    - name: "Install python dependencies"
      apt:
        name: python3-pip
        state: latest
        update_cache: true
      become: true
    - name: "install docker sdk for pyhton"
      pip:
        name: docker
    - name: "docker grup add user"
      shell: sudo usermod -aG docker {{ username }}
```
<img width="949" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2477885e-ab42-47b3-acdd-9c452a404ff5">

<img width="944" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/132ba98f-d76e-47a9-8c8f-263ebc99c674">

jalankan wayshub.yml menggunakan docker compose
```
- become: true
  gather_facts: false
  hosts: appserver
  tasks:
    - name: "Ensure repo is up-to-date"
      git:
        repo: https://github.com/dumbwaysdev/wayshub-frontend
        dest: /home/nobody1305/wayshub-frontend

    - name: "making dockerfile"
      copy:
        dest: "/home/nobody1305/wayshub-frontend/Dockerfile"
        content: |
          FROM node:14.21.3-alpine
          WORKDIR /app
          COPY . .
          RUN npm install
          EXPOSE 3000
          CMD ["npm", "start"]
    - name: "making docker compose"
      copy:
        dest: "/home/nobody1305/docker-compose.yml"
        content: |
          version: "3.8"
          services:
            frontend:
              build: ./wayshub-frontend
              container_name: wayshub-fe
              stdin_open: true
              ports:
                - 3000:3000
    - name: "Create and start services"
      ansible.builtin.shell:
        cmd: docker compose up -d
```
<img width="953" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4dc5369e-396e-48e0-aa52-3ece710b9472">

<img width="958" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e906cc55-2648-45fe-8145-933e27fed8e6">

setup nginx
```
- become: true
  gather_facts: false
  hosts: gateway
  tasks:
    - name: "install nginx"
      apt:
        name: nginx
        state: present
        update_cache: yes
    - name: "start nginx"
      service:
        name: nginx
        state: started
    - name: "Creating a file with content"
      copy:
        dest: "/etc/nginx/sites-enabled/frontend.conf"
        content: |
          server {
              server_name faizal.studentdumbways.my.id;

              location / {
                       proxy_pass http://103.183.75.227:3000;
              }
          }
    - name: "reload nginx"
      service:
        name: nginx
        state: reloaded
```

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/030edeca-1a69-4b51-a713-a19c3c80d0c4">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/dd08f3b3-f647-4cd7-8fc9-0764fc0e8ac4">


