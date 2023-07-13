buat vm baru dengan spesifikasi storage 20 gb cpu 2 dan ram 2 gb

dan pastikan docker sudah terinstall

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5e91ab38-329b-4bca-b892-d5877cf7ec44">

jalankan jenkins on top docker pada port 8080

<img width="953" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/0422c52e-a083-4f01-9b6b-52c152816e2b">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/699a70ca-dbae-4986-affd-f7caf256c906">

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

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/037215ca-194b-476d-821d-c24ce6c7e839">



