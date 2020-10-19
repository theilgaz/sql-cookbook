-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a quick demo for using sequence in sql server.
-- Sample: creates a sequence. returns current value and increase the value. shows detail information for seq.

-- IDStation adıyla sıra oluşturur. Başlangıç ve artış değeri 1'dir.
-- Creates sequence with name IDStation. The start and increment value is 1.
-- Crea secuencia con el nombre IDStation. El valor de inicio e incremento es 1.
create sequence dbo.IDStation start with 1 maxvalue 2147483647 minvalue -2147483648 increment by 1;

-- IDStation sırasındaki değeri verir ve bir yükseltir.
-- Returns current value and increases the value of IDStation.
-- Devuelve el valor actual y aumenta el valor de IDStation.
select next value for dbo.IDStation;

-- IDStation'ın başlangıç değeri, mevcut değeri, maksimum değeri ve artış değerini getirir.
-- Returns start value, current value, maximum value and increment value for IDStation.
-- Devuelve el valor inicial, el valor actual, el valor máximo y el valor de incremento para IDStation.
SELECT start_value, current_value, maximum_value, increment FROM sys.sequences where name='IDStation'; 