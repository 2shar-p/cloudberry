-- iresearch test
-- create datalake_fdw
-- clean table
set vector.enable_vectorization=on;
DROP EXTERNAL TABLE IF EXISTS ir_orc_read;
CREATE FOREIGN TABLE ir_orc_read (
    col0 text,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text
)
SERVER foreign_server
OPTIONS (filePath '/gopher-test/irsearch/', enableCache 'true', format 'orc');
select count(*) from ir_orc_read;
select count(*) from ir_orc_read;