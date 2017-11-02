./rancher-compose --project-name contapp \
    --url http://192.168.99.100:8080/v1/projects/1a5 \
    --access-key 630ADFA508E753697F7B \
    --secret-key PdCAUk9nJceqBF8MngwV8mmQe39Y9ux7YXU8FWdX \
    -f docker-compose.yml \
    --verbose up \
    -d --force-upgrade \
    --confirm-upgrade
