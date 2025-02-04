import pandas as pds

# Leia o arquivo .txt
dados = pds.read_csv('nomeArquivo.txt', delimiter='\t')  # Altere o 'delimiter' se necessário (ex: ',' ou ';')

# Salve como arquivo .xlsx
dados.to_excel('nomeArquivo.xlsx', index=False, engine='openpyxl')