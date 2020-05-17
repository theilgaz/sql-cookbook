-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables/views with Delphi Import WSDL url template.
-- Sample: example.com/Services/SampleService.asmx?wsdl
-- Notes: object_id 949578421 --> sysdiagrams

SELECT 'https://example.com/Services/' + SCHEMA_NAME(schema_id) + '/' + name+'Service.asmx?wsdl'  FROM sys.objects WHERE object_id <> '949578421' and type in ('U') order by name, type