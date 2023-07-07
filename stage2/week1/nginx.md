buat vm kedua untuk nginx dengan spesifikasi 2 cpu, 1 gb ram, dan 20 gb storage

<img width="663" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b2e3506e-2b98-4b54-a9e4-71bfd37ff9cc">

masuk ke cloudeflare dan buat domain menggunakan ip public dari vm gateway 

untuk frontend gunakan nama dan untuk backend gunakan api.nama

<img width="662" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fa44cac3-28c6-4380-8f62-302fc4f255e5">

<img width="665" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/23fd7233-e77a-47ec-8447-9c9d0fb1bfa3">

<img width="702" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/45741de4-157c-4ab8-91cd-0419c40d710b">

kemudian masuk ke server gateway dan install nginx

<img width="934" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1395f152-e452-4c0f-bdb5-eb0ab181a97e">

<img width="823" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/3449bd4a-f3cc-4d04-b9ff-b63fa6d2280f">

masuk ke /etc/nginx/sites-enabled dan buat file untuk frontend.conf dan backend.conf

masukkan domain yang sudah dibuat pada cloudflare dan cantumkan alamat server dari front end dan backend sesuai dengan portnya seperti pada gambar

<img width="748" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f7efa4c9-c9f6-4a81-90a8-869663d15f0d">

<img width="675" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a5412ae7-a9c1-421c-bee5-62849a794517">

bila sudah bisa dilihat dengan domain maka set up nginx sudah berhasil 

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/9620bca8-e6f7-454d-ac2e-a1f9c5961014">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f162dd5c-15a5-4417-9052-e4bafd4489ab">
