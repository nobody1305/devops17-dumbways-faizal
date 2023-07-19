install terraform pada lokal server

```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```
<img width="617" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b871e1dc-886d-432f-a1c5-dfa1d1446242">

buat directory terraform dan didalamnya buat 3 folder untuk appserver, gateway, dan monitoring

<img width="483" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/51a692fe-22dc-472a-b912-d1f51bd7f701">

buat file main.tf didalam setiap folder untuk menginstall vm

buat vm monitoring dengan spesifikasi :

1. appserver : 1 gb ram 2 cpu 20 gb storage
2. gateway : 1 gb ram 2 cpu 20 gb storage
3. monitoring : 2 gb ram 2 cpu 20 gb storage

penginstalan menggunakan script terraform yang dijalankan pada server lokal

```
terraform {
  required_providers {
    idcloudhost = {
      source = "bapung/idcloudhost"
      version = "0.1.3"
    }
  }
}

provider "idcloudhost" {
  auth_token = "" # API Token from idcloudhost.com
  region = "jkt01"
}

resource "idcloudhost_vm" "faizal-appserver" {
  name = "faizal-appserver"
  os_name = "ubuntu"
  os_version= "20.04"
  disks = 20
  vcpu = 2
  memory = 1024
  username = "nobody"
  initial_password = "" # Combination of Uppercase, Lowercase & Numbers
  billing_account_id = "" # Billing ID from idcloudhost.com
  public_key = "" # SSH public key
}

resource "idcloudhost_floating_ip" "faizal-appserver" {
  name = "faizal-appserver"
  billing_account_id = "" # Billing ID from idcloudhost.com
  assigned_to = idcloudhost_vm.faizal-appserver.id
}
```
jalankan terraform init untuk inisiasi dan terraform validate untuk memvalidasi bahwa kode sudah benar

<img width="673" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9de39a6b-913b-41a1-94e4-d9fafdddaa43">

kemudian jalankan terraform plan untuk melihat kembali spesifikasi vm apabila sudah yakin maka jalankan terraform apply

<img width="943" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/87f62383-1967-4428-855b-4b55f8264915">

<img width="846" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2f85a6a9-b456-4b56-b8fe-41408a72f0c4">

<img width="602" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/01153b12-efb9-45b9-87f4-62a17f93b210">

lakukan hal sama dengan vm lainnya

script gateway 
```
terraform {
  required_providers {
    idcloudhost = {
      source = "bapung/idcloudhost"
      version = "0.1.3"
    }
  }
}

provider "idcloudhost" {
  auth_token = "" # API Token from idcloudhost.com
  region = "jkt01"
}

resource "idcloudhost_vm" "faizal-gateway" {
  name = "faizal-gateway"
  os_name = "ubuntu"
  os_version= "20.04"
  disks = 20
  vcpu = 2
  memory = 1024
  username = "nobody"
  initial_password = "" # Combination of Uppercase, Lowercase & Numbers
  billing_account_id = "" # Billing ID from idcloudhost.com
  public_key = "" # SSH public key
}

resource "idcloudhost_floating_ip" "faizal-gateway" {
  name = "faizal-gateway"
  billing_account_id = "" # Billing ID from idcloudhost.com
  assigned_to = idcloudhost_vm.faizal-gateway.id
}
```
script monitoring
```
terraform {
  required_providers {
    idcloudhost = {
      source = "bapung/idcloudhost"
      version = "0.1.3"
    }
  }
}

provider "idcloudhost" {
  auth_token = "" # API Token from idcloudhost.com
  region = "jkt01"
}

resource "idcloudhost_vm" "faizal-monitoring" {
  name = "faizal-monitoring"
  os_name = "ubuntu"
  os_version= "20.04"
  disks = 20
  vcpu = 2
  memory = 2048
  username = "nobody"
  initial_password = "" # Combination of Uppercase, Lowercase & Numbers
  billing_account_id = "" # Billing ID from idcloudhost.com
  public_key = "" # SSH public key
}

resource "idcloudhost_floating_ip" "faizal-monitoring" {
  name = "faizal-monitoring"
  billing_account_id = "" # Billing ID from idcloudhost.com
  assigned_to = idcloudhost_vm.faizal-monitoring.id
}
```


