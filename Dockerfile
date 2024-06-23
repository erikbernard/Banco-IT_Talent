FROM mysql:5.7

# Copiar o arquivo dump.sql para o container
COPY scripts/dump.sql /docker-entrypoint-initdb.d/

# Definir variáveis de ambiente para o MySQL
ENV MYSQL_DATABASE=BANCO_DADOS_IT_TALENT
ENV MYSQL_ROOT_PASSWORD=root

# Expor a porta 3306
EXPOSE 3306
