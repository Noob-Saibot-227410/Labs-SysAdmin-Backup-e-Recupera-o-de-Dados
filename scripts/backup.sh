#!/bin/bash

# Cria diretório de backup
BACKUP_DIR="/vagrant/backups"
mkdir -p $BACKUP_DIR

# Cria arquivo tar com dados
BACKUP_FILE="$BACKUP_DIR/backup-$(date +%Y%m%d-%H%M%S).tar.gz"
tar czf $BACKUP_FILE -C /vagrant/data .

# Exibe mensagem de conclusão
echo "Backup realizado com sucesso!"
echo "Arquivo de backup: $BACKUP_FILE"
