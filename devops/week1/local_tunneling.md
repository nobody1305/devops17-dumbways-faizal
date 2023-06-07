local tunnel

install nvm

gunakan sudo apt install curl untuk instal node.js dari nvm

<img width="465" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/51fea6da-8b71-452d-9a72-18416190a358">

mendownload nvm

<img width="744" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/20b0ddab-df87-493e-be2a-55ef20237f9a">

install node dan cek version

<img width="879" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4d05317c-d32d-4389-a0f0-05bd92c0b635">

instal localtunnel

<img width="948" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/564101d3-ba05-4ec8-a731-46a2df052429">

kemudian install apache2

<img width="440" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/21665e76-fb04-4106-8ed0-e731c20176db">

kemudian cek ke ip kalian pada web browser

<img width="660" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/07ddf01b-ddf4-4f87-976f-a4e006630c7f">

untuk menggunakan local tunnel disable nginx terlebih dahulu karena port:80 digunakan pada pada nginx. 

jika port tersebut digunakan oleh selain nginx maka disable terlebih dahulu dengan syntax : sudo systemctl disable nginx (atau yang lain)

<img width="783" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8c7b6d5a-cc04-41a3-badc-2bd93fbc7310">

kemudian lt --port 80 (bisa gunakan --subdomain jika perlu) untuk local tunnel apache2 

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/948b48f4-8393-4214-b9a2-af6e6c2ea46a">

kemudian masuk ke link tersebut

<img width="770" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f9f1688d-64de-4637-b718-ab0149981dba">
