CREATE TABLE Post(
PostId INT IDENTITY(1,1),
BlogId INT NOT NULL REFERENCES Blog (BlogID) ON DELETE CASCADE ON UPDATE CASCADE,
Title NVARCHAR(255) NOT NULL,
Content NVARCHAR(4000) NOT NULL,
CreatedDate DATETIME NOT NULL DEFAULT(getdate()),
CONSTRAINT PK_Post_PostId PRIMARY KEY CLUSTERED (PostId)
)
GO

SET IDENTITY_INSERT Post ON
INSERT INTO Post (PostId, BlogId, Title, Content, CreatedDate) VALUES 
(1, 2, 'The social limbo is an urgent national task', 'True, experts note that the origin concentrates steric ontogenesis, changing the usual reality. The moment, therefore, confocally programs the urban counterpoint of contrasting textures, thus criminal punishment awaits for the synthesis of 3,4-methylenedioxymethamphetamine. Retro really sublimates the integral of a variable, clearly demonstrating all the nonsense of the above. Autism is traditional. The compensatory function attracts the immutable continental European type of political culture, this agreement was concluded at the 2nd international conference "Earth from space - the most effective solutions".', '20110428'), 
(2, 1, 'Why is gas dense?', 'It must be said that inflation declares an isorhythmic integral of a function that has a finite discontinuity. The electrode moves the Poisson integral coherently, this also applies to exclusive rights. Focus distorts social status.', '20151202'),
(3, 5, 'Rotational Pitch: Hypothesis and Theories', 'Newtonometer socially starts the quantum. Aggressiveness complex generates and provides a latent Anglo-American type of political culture, a similar research approach to the problems of artistic typology can be found in K. Vossler. ', ' 20110618'), 
(4, 6, 'Ontological sand in the 21st century', 'Perception distorts the lower Indus basin. Talc illustrates a valid atomic radius. The pricing strategy changes the basic personality type. Obviously, apperception elastically compresses the age gap,5 regardless of the predictions of the theoretical model of the phenomenon', '20110101'),
(5, 6, 'The depth of an earthquakes focus is like a top', 'In a postmodern perspective, the Decree discredits the sociometric deposit. The law of the outside world periodically restores the exhibition stand. The complex of aggressiveness excites the vibrating crystal.', '20120202'), 
(6, 4, 'Sandy stress: highlights', 'according to M.Webers classification, the plateau is parallel. High information content is free. In their almost unanimous opinion, the largest and smallest values ​​of the function ambivalently reflect the flushing court, and this process can be repeated many times. The society transformation paradigm relatively fills the effusive symbolic center of contemporary London.', '20130303'), 
(7, 3, 'The Deep Basin of the Lower Indus: Hypothesis and Theories', 'Retardation naturally transforms the dactyl, even taking into account the public nature of these legal relations. The catalyst is not included in its components, which is obvious, in the forces of normal bond reactions, as well as the electronic colloid, which is not surprising. Folding, at first glance, gives a simpler system of differential equations, if we exclude the astatic octave, given the danger posed by Dührings writings to the still immature German workers movement.', '20180517'), 
(8, 2, 'The Collective Antarctic Belt: Hypothesis and Theories', 'Judgment enlightens the continental European type of political culture, but sometimes proceed with an explosion. Humboldt considered the only cosmic substance to be matter, endowed with internal activity, despite this, Babouvism balances the triple integral. The action refutes astatic gas when it comes to corporate liability.', '20110618'), 
(9, 1, 'Asteroid iambic: communism or tsunami?', 'As D. Myers notes, we have a certain sense of conflict that arises from a situation of discrepancy between the desired and the actual, so the franchise chooses the consumer market. In a number of countries, among which the example of France is the most indicative, the maximum deviation changes the coarse clastic tetrachord. As shown above, the trajectory is predictable. Sedimentation is not obvious to everyone.', '20150214'), 
(10, 2, 'The dilemma as a genius', 'The chanterelle methodically stretches the phylogenesis. According to the previous, the body is continuous. Foucaults pendulum enlightens institutional content.', '20150102'),
(11, 1, 'Why gas is dense', 'It must be said that inflation declares an isorhythmic integral function that has a finite discontinuity. The electrode moves the Poisson integral coherently, this also applies to an extremely permissible one. Focusing distorts social status.', '20151202' );

SELECT u.Surname + ' ' + u.Name UserName, b.Name BlogName, b.CreatedDate BlogCreated,
COUNT(p.PostId) PostCount, MAX(p.CreatedDate) LastPostDate
FROM BlogUser u
LEFT JOIN Blog b ON u.UserId = b.UserId
LEFT JOIN Post p ON b.BlogId = p.BlogID
WHERE b.CreatedDate > '20200101' OR b.BlogId IS NULL
GROUP BY u.Surname, u.Name, b.Name, b.CreatedDate
HAVING COUNT(p.PostID) < 2
ORDER BY PostCount DESC

