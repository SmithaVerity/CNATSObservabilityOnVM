sudo systemctl enable grafana-server.service

sudo useradd --no-create-home --shell /bin/false prometheus
sudo mkdir /etc/prometheus /var/lib/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
curl -LO https://github.com/prometheus/prometheus/releases/download/v2.37.5/prometheus-2.37.5.linux-amd64.tar.gz
tar -xvf prometheus-2.37.5.linux-amd64.tar.gz
sudo cp -p ./prometheus-2.37.5.linux-amd64/prometheus /usr/local/bin
sudo chown prometheus:prometheus /usr/local/bin/prom*
sudo cp -r ./prometheus-2.37.5.linux-amd64/consoles /etc/prometheus
sudo cp -r ./prometheus-2.37.5.linux-amd64/console_libraries /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
sudo cp -p ./prometheus-2.37.5.linux-amd64/prometheus.yml /etc/prometheus
sudo nano /etc/prometheus/prometheus.yml
