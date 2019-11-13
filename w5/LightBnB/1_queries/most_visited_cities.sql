SELECT properties.city, COUNT(reservations) AS total_reservations
FROM properties
JOIN reservations ON property_id = properties.id
GROUP BY properties.city
ORDER by total_reservations DESC;
