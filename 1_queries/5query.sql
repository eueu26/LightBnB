SELECT reservations.id, title, start_date, cost_per_night, avg(property_reviews.rating) as average_rating
FROM reservations 
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;