SELECT --table_schema, 
       table_name, 
       SUM((xpath('/row/cnt/text()', xml_count))[1]::text::int) as row_count
FROM (
  SELECT table_name, table_schema, 
         query_to_xml(FORMAT('select count(*) as cnt from %I.%I', table_schema, table_name), FALSE, TRUE, '') as xml_count
  FROM information_schema.tables
  WHERE table_schema = 'public' --<< change here for the schema you want
) t GROUP BY table_name ORDER BY row_count DESC