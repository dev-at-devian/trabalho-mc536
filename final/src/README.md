# Seção de scripts

Essa seção contém scripts em Python utilizados na coleta e tratamento dos dados presentes na versão final do banco de dados. São arquivos temporários não destinados ao uso, e podem conter bugs.  
As bibliotecas utilizadas são majoritariamente padrões do Python, com exceção de:
- numpy
- matplotlib
- pandas
- mysql-connector-python  
Que devem ser instaladas para seu funcionamento correto  

Também possui o arquivo [generate_db.sql](./src/generate_db.sql), que pode ser executado em um server MySQL para automaticamente importar as tabelas CSV. Necessita revisão para substutuir _ por - nos caminhos dos arquivos.
