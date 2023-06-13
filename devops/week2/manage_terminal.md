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

