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
- become: true
  gather_facts: true
  hosts: monitoring
  tasks:

    - name: "create prometheus volume"
      ansible.builtin.file:
        path: /etc/prometheus
        state: directory

    - name: "creating prometheus.yml"
      copy:
        dest: "/etc/prometheus/prometheus.yaml"
        content: |
          global:
           scrape_interval: 10s
          scrape_configs:
           - job_name: 'prometheus_metrics'
             scrape_interval: 5s
             static_configs:
               - targets: ['103.139.193.44:9090']
           - job_name: 'node_exporter_metrics'
             scrape_interval: 5s
             static_configs:
               - targets: ['103.183.75.227:9100','103.31.38.94:9100']

    - name: "create volume grafana"
      ansible.builtin.file:
        path: /grafana
        state: directory

    - name: "pull prometheus"
      community.docker.docker_container:
        name: prometheus
        image: prom/prometheus
        ports:
          -  9090:9090
        volumes:
          - /etc/prometheus/prometheus.yaml:/etc/prometheus/prometheus.yaml
        restart_policy: unless-stopped
        command:
          - --config.file=/etc/prometheus/prometheus.yaml
    - name: "pull grafana"
      community.docker.docker_container:
        name: grafana
        image: grafana/grafana
        ports:
          - 3000:3000
        volumes:
          - ~/grafana:/var/lib/grafana
        user: root
        restart_policy: unless-stopped
```
<img width="954" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e6cfce91-dc10-480d-80b2-a02b9eb65b1b">

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/d0d7b3be-49ff-4004-90aa-c6e687613805">

<img width="959" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/f690f835-e7e1-4214-a0e9-daa27c064392">

untuk masuk gunakan user: admin password: admin, kemudian buat password baru 

<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/8914e2da-4dc5-473c-af72-b950d78ad5f2">

masuk ke data source, prometheus dan masukkan ip dari server prometheus, versi prometheus dan bentuk alerting yang berupa build atau code sesuai dengan keinginan

<img width="761" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/a49dc070-f5fe-4fff-a184-23146666b2e3">

buat query untuk menghitung penggunaan cpu dan ram untuk appserver

```
100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle", instance="103.183.75.227:9100"}[5m])) * 100 )
```
<img width="960" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/1554ae37-d746-44ab-b045-e4d5bf63e64e">

```
100 * (1 - ((avg_over_time(node_memory_MemFree_bytes{instance="103.183.75.227:9100"}[5m]) + avg_over_time(node_memory_Cached_bytes{instance="103.183.75.227:9100"}[5m]) + avg_over_time(node_memory_Buffers_bytes{instance="103.183.75.227:9100"}[5m])) / avg_over_time(node_memory_MemTotal_bytes{instance="103.183.75.227:9100"}[5m])))
```
<img width="947" alt="image" src="https://github.com/fifa0903/devops17-dumbways-faizal/assets/132969781/e21d6e0c-f88f-400d-b3ac-69e0dc6f8311">


