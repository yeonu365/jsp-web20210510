SELECT m.id, m.name
FROM Member m LEFT JOIN Board b ON m.id = b.memberId
WHERE b.memberId IS NULL;

SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m ON m.id = b.memberId
WHERE b.memberId IS NULL;

