SELECT UserId, Name 
FROM BlogUser
WHERE UserId BETWEEN 5 AND 20
ORDER BY UserId DESC

SELECT urs.UserId, urs.Name AS UserName, Blog.Name AS BlogName, RegistrationDate
FROM BlogUser AS urs
JOIN Blog ON urs.UserId = Blog.UserId
