pertama tama kita install docker pada server monitoring untuk menjalankan prometheus dan grafana

kemudian install node exporter pada appserver dan gateway supaya nanti prometheus bisa mengakses informasi proses dari appserver dan gateway
```
- become: true
  gather_facts: true
  hosts: appserver, gateway
  tasks:
    - name: "pull node-exporter"
      community.docker.docker_container:
        name: node-exporter
        image: prom/node-exporter
        ports:
          - 9100:9100
```

<img width="952" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/2b56f537-8e39-4a3c-a5f4-d05b0fe3b090">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/5c2fceb8-2791-46b2-b18a-815aa9a571cd">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/7cbba2d0-5c48-40a0-9ad3-d578d22b7021">

kemudian jalankan script untuk menjalankan prometheus dan grafana dengan memasukkan konfigurasi prometheus yml ke server yang sudah diinstall node exporter

```

```
<img width="954" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e6cfce91-dc10-480d-80b2-a02b9eb65b1b">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d0d7b3be-49ff-4004-90aa-c6e687613805">

<img width="959" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f690f835-e7e1-4214-a0e9-daa27c064392">
