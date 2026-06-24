# Exercícios Group By

# Exercício 01 - Total gasto por cliente

## Objetivo

Identificar quanto cada cliente gastou na locadora utilizando o banco de dados Sakila.

## Conceitos praticados

* JOIN
* GROUP BY
* SUM
* ORDER BY
* Alias (AS)

## Query

```sql
USE sakila;

SELECT
    cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
ORDER BY Total DESC;
```

## O que aprendi

* Como relacionar tabelas através de JOIN.
* Como agrupar registros utilizando GROUP BY.
* Como somar valores utilizando SUM().
* Como ordenar resultados utilizando ORDER BY.

## Aplicação em QA

Esta consulta pode ser utilizada para validar rankings financeiros exibidos em dashboards, relatórios ou APIs.
