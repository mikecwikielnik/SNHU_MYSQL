/*USE test;
SELECT * FROM "fan duel user data"
WHERE registration_date = '2018-10-11'
AND "first_deposit_amount" IS NOT NULL*/


/*USE test;
SELECT registration_date AS DATE, first_deposit_date FROM "fan duel user data"
WHERE (registration_date = '2018-10-11' 
OR registration_date = '2019-10-11')
AND first_deposit_date IS NULL*/



USE test;
SELECT registration_paid_media_partner_name AS 'TWITTER COLUMN', 
product_account_id AS 'ID NUMBER', first_paid_entry_date AS 'PAID ENTRY DATE'
FROM "fan duel user data"
WHERE (registration_paid_media_partner_name = 'TWITTER'
AND first_paid_entry_date IS NOT NULL
AND first_paid_entry_date = '2020-09-11')
OR(registration_paid_media_partner_name = 'TWITTER'
AND first_paid_entry_date IS NOT NULL
AND first_paid_entry_date = '2020-10-11')
ORDER BY product_account_id DESC
