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

