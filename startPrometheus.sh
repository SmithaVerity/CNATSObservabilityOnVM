sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml
sudo cp /etc/prometheus/prometheus.yml /etc/prometheus/prometheus.yml.backup

sudo mv prometheus.service /etc/systemd/system/prometheus.service
sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl status prometheus
sudo systemctl enable prometheus
