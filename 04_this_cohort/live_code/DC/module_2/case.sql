/* MODULE 2 */
/* CASE */

/* FROM & JOINs determine & filter rows
WHERE more filters on the rows
GROUP BY combines those rows into groups
HAVING filters groups
ORDER BY arranges the remaining rows/groups
LIMIT filters on the remaining rows/groups*/

/*1. Add a CASE statement declaring which days vendors should come */

SELECT * 
,CASE WHEN vendor_type = 'Fresh Focused' THEN 'Wednesday'
	WHEN vendor_type = 'Prepared Foods' THEN 'Thursday'
	ELSE 'Saturday'
END AS Day_of_speciality

/* 2. Add another CASE statement for Pie Day */

,CASE WHEN vendor_name = "Annie's Pies"
	THEN 'Annie is great'
	ELSE 'Too bad'
END as pie_day

/* 3. Add another CASE statement with an ELSE clause to handle rows evaluating to False */
--,CASE WHEN 

FROM vendor


/* 4. Experiment with selecting a different column instead of just a string value */
SELECT DISTINCT *
,CASE WHEN cost_to_customer_per_qty < 1.00
THEN cost_to_customer_per_qty*5
ELSE cost_to_customer_per_qty
END inflation

FROM customer_purchases
WHERE cost_to_customer_per_qty<1.00

/* just example*/

SELECT DISTINCT product_id, customer_id
FROM customer_purchases
