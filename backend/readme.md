Acessar MYSQL com CMD

mysql -h 'servidor' -u 'usuario' -p
mysql -h localhost -u root -p

Criar usuario:
CREATE USER 'novousuario'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'password';

Liberar permissão para acessar a base de dados:
GRANT ALL PRIVILEGES ON * . * TO 'foo' @'localhost';

Uma vez finalizadas as permissoes que voce quer definir para os seus
novos usuários, certifique-se sempre de recarregar todos os 
previlégios.
FLUSH PRIVILEGES;