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

jalankan docker build -t wayshubfe . untuk membuat image dengan format wayshubfe pada directory wayshub-frontend

<img width="947" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e4c4d6a6-fba3-420c-a5de-df044e58629e">

jalankan docker run -d -p 3000:3000 wayshubfe

<img width="954" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4f4f1621-a15c-4cb5-94c6-e162e4d8ac50">



<img width="946" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9180b1a0-04d1-4af9-99e8-aac1aba01a26">



