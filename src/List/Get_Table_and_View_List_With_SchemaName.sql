-- object_id 949578421 --> sysdiagrams
SELECT name, SCHEMA_NAME(schema_id) as schemaname FROM sys.objects WHERE object_id <> '949578421' and type in ('U','V') order by name, type