Select 'Количество' as [Количество],
[Sweden],
[Spain]
from (
select age, country from people)
as source_table
pivot
(
count(age) for country in ([Sweden],
[Spain])
) as Pivot_table