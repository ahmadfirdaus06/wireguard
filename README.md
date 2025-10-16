## Personal Wireguard Setup

### For server:
1. Replace the `PUBLIC_IP_OR_DOMAIN` value in `server.yml` file.
2. Update `PEERS` value in `server.yml` file for client names.
3. Run `make setup` to apply wireguard routing to all interfaces.
4. Run `make server CMD='up -d'` to start wireguard server.
5. (Optional) To update peer clients, update `PEERS` and rerun `make server CMD='up -d'` to update the server config.
6. (Optional) For cleanup, run `make server CMD='down -v' && make cleanup`.
   
### For client:
1. Get client config from generated peer's config in server's `config` directory and copy them to client's `config` directory as `wg0.conf`
3. Run `make setup` to apply wireguard routing to all interfaces.
4. Run `make client CMD='up -d'` to start wireguard client.
5. (Optional) For cleanup, run `make client CMD='down -v' && make cleanup`.
