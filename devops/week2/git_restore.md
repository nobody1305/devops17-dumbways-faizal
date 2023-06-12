penggunaan git restore bisa digunakan berbagai macam keadaan salah satunya ketika kita ingin mengembalikan file yang kita telah add seperti pada gambar dibawah

<img width="497" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7c63ea02-5586-4a38-a590-e3e588524293">

<img width="519" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5e6586a2-9284-4aa3-b683-2d40270ec41f">

untuk mengembalikan file yang telah dihapus pada versi sebelumnya mari kita coba tambahkan file pada salah satu branch kita coba pada branch master

kita bisa melihat bahwa terdapat file seperti pada gambar dibawah 

<img width="677" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/232e9b75-444c-4b42-a679-f17730145bc6">

<img width="601" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f7f3f9eb-1add-4846-8744-02b538086875">

kemudian kita akan mencoba menghapus fileterhapus dan akan menjadikan versi ke 2

<img width="524" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/968ad828-668f-451d-bfc1-43eb939d3880">

<img width="580" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2f4b2b76-a6c4-4dcd-be2b-df660fd73dfb">

dan kita bisa melihat bahwa file sudah terhapus

<img width="673" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ca6686bf-a067-4bae-9650-8eb66a532e7e">

untuk mengembalikan kita lihat kembali ke git log

<img width="663" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/28f0b199-dc6c-4668-b69a-d082f42e82d5">

jalankan git checkout -b (nama branch) SHA

<img width="636" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ae8acf3f-7724-4501-8abc-0c67bef8b62a">

<img width="607" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/18113cc0-c4f4-4f88-b606-b606930cb7a6">

hasil dari pengembalian file bisa dilihat pada branch old-state

<img width="676" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/4eff7fa3-26f1-4a64-9c4a-e3e36abd3456">
