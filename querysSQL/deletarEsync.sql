--PARA DELETAR 
ALTER TABLE esync.tables DISABLE TRIGGER ALL;

delete from esync.tables where table_name like '%configuracao_dicas%';
delete from esync.columns where table_name like '%configuracao_dicas%';
delete from esync.tables where table_name like '%manifesto%';
delete from esync.columns where table_name like '%manifesto%';
delete from esync.tables where table_name like '%pdc_historico%';
delete from esync.columns where table_name like '%pdc_historico%';

ALTER TABLE esync.tables ENABLE TRIGGER ALL;
--