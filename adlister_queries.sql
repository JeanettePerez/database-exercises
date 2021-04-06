use adlister_db;

SELECT u.email, ad.title as Ad_category
FROM ad
JOIN users u on ad.user_id = u.id;

SELECT ad.title as ad_listing, c.category_name
FROM ad
JOIN ad_categories ac on ad.id = ac.ad_id
JOIN categories c on c.id = ac.categories_id;

SELECT c.category_name, ad.title
FROM ad
JOIN ad_categories ac on ad.id = ac.ad_id
JOIN categories c on c.id = ac.categories_id
WHERE category_name = 'Furniture';

SELECT users.email, a.title AS ad_listing
FROM users
JOIN ad a on users.id = a.user_id;
