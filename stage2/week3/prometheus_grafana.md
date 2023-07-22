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

