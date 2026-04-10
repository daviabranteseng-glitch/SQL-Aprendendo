-- exemplo 1 selecionar coluna sem DISTINCT
--select brand
--from sales.products 
-- percebemos que varias marcas estão repetidas total 333 linhas
-- exemplo n 2 agora quero apenas marca de carros distintas
--select distinct brand
--from sales.products
-- agora 40 linhas
-- exemplo 3 quer as marcas e anos distintos que tem na tabela produto
--select distinct brand, model_year
--from sales.products
-- WHERE 
-- Serve para filtrar as linhas da tabela de acordo com uma condição 
-- exemplo 1 liste os e-mail dos clientes que moram no estado de sc
--select email, state
--from sales.customers
--where state = 'SC'
--exemplo 2 Filtro com mais de uma condição: clientes em sc e ms
--select email, state
--from sales.customers
--where state = 'SC' or state = 'MS'
-- exemplo 3 filtro de condição com data
select email, state, birth_date
from sales.customers
where (state = 'SC' or state = 'MS') and birth_date < '19911228' ;
select distinct birth_date
from sales.customers
