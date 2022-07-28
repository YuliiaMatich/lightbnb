SELECT properties.id, reservations.property_id, avg(rating) as average_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
ORDER BY reservations.start_date
LIMIT 10;