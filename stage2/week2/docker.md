pertama tama kita deploy aplikasi seperti biasa dan kemudian pastikanm file frontend dan backend berjalan dengan lancar dan atur reverse proxy nya

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/bddde919-085e-4f4e-8e8b-20310d484d26">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/44c8f6eb-7b42-4f16-b65f-04ade11c93cd">

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b929f01b-356e-4557-9930-892c6932c079">

kemudian install docker

<img width="458" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cbbf57c0-82e8-4aba-9c1f-ced2ba528d4b">

gunakan sudo usermod -aG docker (user) untuk meringkas command sudo pada docker
 
<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a4ca079b-fe1d-4659-9335-a86aba1b2fd5">

pull image mysql ke docker

<img width="955" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/eaa0e93e-c884-42e3-88bb-658c187dba3b">

pull image node 14.21.3

<img width="940" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/affc9ac2-32c1-4c8a-9a49-b3d27fea2ba0">

masuk ke folder wayshub-frontend dan buat Dockerfile menggunakan nano Dockerfile

<img width="952" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e193142d-b990-4f98-b016-247669c758e7">

jalankan docker build -t fama-frontend . untuk membuat image dengan format wayshubfe pada directory wayshub-frontend


masuk ke docker login dan ganti nama file dengan format docker tag <nama image> <username/namafile>

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3297a6fe-218b-49a7-a4e8-bb04ae6d7b2c">

kemudian push dengan docker push <nama file>

<img width="918" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/aa924fd9-5af4-4cc1-bcc0-cfff2c6edc09">

<img width="945" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d7279fce-71e8-4a17-980a-498bb25bf666">



