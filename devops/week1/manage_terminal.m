text manipulation secara umum bagaimana kita memanipulasi teks tanpa menggunakan teks editor. terdapat beberapa command yang bisa kita gunakan sebagai text manipulation

cat

1. untuk melihat teks (cat namafile)
  
2. untuk mengedit teks tanpa text editor (cat > namafile)

3. untuk menggabungkan isi teks dari 2 file berbeda (cat file1 file2 > filegabungan) 
  
  <img width="382" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c73a17f3-da55-4ca5-8f63-f4ef47359281">

sed 

1. untuk mereplace kata (sed 's/katalama/katabaru/g' file)

<img width="339" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/c42d438f-61fe-48ca-8b53-86f4ea17871a">

grep 

1. untuk mencari kata pada suatu file (grep kata file)

2. untuk menghitung jumlah kata pada suatu file (grep -c kata file)

3. untuk mencari file yang berisi suatu kata (grep kata *)

<img width="313" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/cdff4e57-4c1d-42a6-bcdb-1bffdb543ad7">

sort 

1. untuk mengurutkan berdasarkan abjad ataupun angka (sort file / sort -r file (reverse))

<img width="292" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7dcb10aa-3d67-45b1-99b1-d4cc7726ab39">

awk 

1. untuk menampilkan kata baik kata pertama kedua atau seterusnya ( awk '{print $1}' file)

<img width="368" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8aaba8a9-ec36-4a55-9430-ed47e81b0d76">

cut

1. untuk mengambil huru pertama, kedua atau seterusnya (cut -b 1 file)

2. untuk mengambil beberapa huruf pada urutan tertentu (cut -c 1,2,3 file)

3. untuk mengambil kata pada file tertentu  (cut -d " " -f 1 file)

<img width="527" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/b23c8749-d472-44e0-a9bc-c6f51b5ff826">

echo 

1. untuk mencetak kata (echo "kata kata")

2. untuk mereplace isi file dengan kata (echo "kata kata" > file)

3. untuk menambahkan isi file dengan kata (echo "kata kata" >> file)

<img width="376" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/44e9595d-8489-4958-a4aa-ad94b8075d27">

tool pada htop

secara umum tampilan htop seperti pada gambar

<img width="956" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a69dc53f-4efe-403e-8b7a-9b43d71572e7">

beberapa hal yang perlu diketahui adalah

CPU adalah berapa jumlah core yang kita miliki.

Mem adalah total penggunaan memory.

Swp adalah Memory cadangan.

Tasks adalah aplikasi yang sedang berjalan di server.

Load average adalah rata-rata aplikasi yang berjalan.

Uptime adalah berapa lama server kita hidup.

PID adalah nomor proses id setiap proses yang berjalan di linux.

VIRT adalah memory yang terpakai.

Command adalah perintah apa yang sedang di jalankan.


beberapa tool yang bisa digunakan adalah sebagaimana tertera pada gambar (lebih lengkapnya ada pada help)

<img width="639" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/ae31e77a-d7f1-4206-8f21-a1b9aa4fa82c">

semua command f1 sampai f10 harus digunakan menggunakan fn+f1 dst

help = untuk mengetahui lebih lanjut mengenai tool di htop atau informasi tentang htop

<img width="582" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7da82f01-52c1-457f-90d5-997c961632a1">

setup = untuk mengatur htop baik pada tampilan maupun informasi yang ingin ditampilkan pada kolom dan baris monitoring

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1f059955-99f0-4c43-bbd5-383f1dbc0cd1">

search = untuk mencari proses, user, command dengan nama tertentu

<img width="709" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f980504f-2ad1-4bdc-bf5a-e08e6e036299">

filter = untuk memfilter command, proses, user dengan nama tertentu

<img width="820" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/fad5686d-eb1b-4767-98d4-2ec69c59eb69">

tree = untuk menampilkan cabang command

<img width="817" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d67f64a5-cfa9-4cf8-9fde-ebcffff31703">

shortby = untuk mengurutkan berdasarkan karateristik tertentu seperti pada gambar

<img width="604" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/983e88cd-1a43-45b5-bb7d-763c9abd7180">




