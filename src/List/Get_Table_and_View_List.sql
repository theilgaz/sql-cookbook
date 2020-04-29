-- object_id 949578421 --> sysdiagrams
SELECT name FROM sys.objects WHERE object_id <> '949578421' and type in ('U','V') order by name, type