server:
	@PUID=$(id -u) PGID=$(id -g) docker compose -f server.yml $(CMD)

client:
	@PUID=$(id -u) PGID=$(id -g) docker compose -f client.yml $(CMD)

setup:
	@echo "net.ipv4.conf.all.src_valid_mark=1" | sudo tee -a /etc/sysctl.conf
	@sudo sysctl --system

cleanup:
	@sudo sysctl -w net.ipv4.conf.all.src_valid_mark=0
	@sudo sysctl --system