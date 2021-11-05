dc := docker-compose

.PHONY: up
up:
	$(dc) up -d --build

.PHONY: down
down:
	$(dc) down

.PHONY: restart
restart:
	$(dc) restart

.PHONY: rm
rm:
	$(dc) down --rmi all

.PHONY: logs
logs:
	$(dc) logs -f

.PHONY: prometheus
prometheus:
	$(dc) exec -u 0 prometheus /bin/sh

.PHONY: grafana
grafana:
	$(dc) exec -u 0 grafana /bin/sh

.PHONY: node
node:
	$(dc) exec -u 0 node-exporter /bin/sh