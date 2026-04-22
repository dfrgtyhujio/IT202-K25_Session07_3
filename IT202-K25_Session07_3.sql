SELECT s.email
FROM Students AS s
WHERE NOT EXISTS (
    SELECT 1 
    FROM Payments AS p 
    WHERE p.student_id = s.id 
      AND p.payment_date >= '2024-01-01' 
      AND p.payment_date <= '2024-12-31'
);
