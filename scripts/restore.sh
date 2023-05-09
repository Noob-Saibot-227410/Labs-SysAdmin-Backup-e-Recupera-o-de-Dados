#!/bin/bash

# Pede o nome do arquivo de backup
read -p "Digite o nome do arquivo de backup (exemplo: backup-20220101-123456.tar.gz): " BACKUP_FILE

# Extrai o arquivo de backup para o diretório data
tar xzf /vagrant/backups/$BACKUP_FILE -C /vagrant/data

# Exibe mensagem de conclusão
echo "Backup restaurado com sucesso!"
