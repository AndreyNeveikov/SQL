USE [LessonTadCreate]
GO

/****** Object:  Table [dbo].[BlogUser]    Script Date: 18.01.2022 19:55:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BlogUser](
	[UserLogin] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
 CONSTRAINT [DF_BlogUser_UserLogin_Unigue] UNIQUE NONCLUSTERED 
(
	[UserLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BlogUser] ADD  CONSTRAINT [DF_BlogUser_RegistrationDate]  DEFAULT (getdate()) FOR [RegistrationDate]
GO

ALTER TABLE BlogUser
ADD CONSTRAINT DF_BlogUser_Email_Unigue UNIQUE (Email)
GO

ALTER TABLE BlogUser
ADD UserId int IDENTITY(1,1)
GO

ALTER TABLE BlogUser
ADD CONSTRAINT PK_BlogUser_UserID PRIMARY KEY CLUSTERED (UserID)
GO

TRUNCATE TABLE BlogUser
GO

INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Lila','Marshall','Lang, Basia D.','molestie@etultrices.ca','Aristotle','IZU81PHH8TX','181029'),('Walker','Vaughn','Williamson, Ishmael U.','scelerisque@lectus.co.uk','Hamilton','FYS46IYW8NQ','180308'),('Buffy','Le','Hansen, Ashton B.','ornare.elit.elit@milacinia.edu','Axel','JKL66QWE9OC','180602'),('Noble','Tran','Walls, Griffith A.','lacus.Aliquam@Maurismagna.com','Isaac','ZSR80OKY7CI','180104'),('Andrew','Workman','Perez, Reed E.','cursus@a.org','Reece','DEL13QKS3CE','181118'),('Serina','Mclean','Atkins, Uta R.','dapibus.gravida.Aliquam@a.com','Alexander','XRN44NJZ5MD','180715'),('Latifah','Santos','Evans, Alice F.','augue.scelerisque.mollis@maurissapien.ca','Kato','LUK63WYJ7YB','181003'),('Juliet','Munoz','Erickson, Merrill M.','in.consequat.enim@Integer.edu','Micah','NRH10HRQ0BB','190715'),('Kennedy','Cook','Skinner, Matthew A.','nec@felis.org','Gabriel','XUS31UEB7ZW','180622'),('Charity','Irwin','Morrison, Jackson B.','eget.nisi.dictum@acipsumPhasellus.net','Fuller','GRZ87JMQ6AA','190714');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Scarlett','Lynn','Dickerson, Mechelle K.','dolor@in.ca','Vincent','WFZ35ATJ0XZ','180103'),('Haviva','Reilly','Robinson, Ariana C.','facilisi.Sed@Nunc.com','Alan','HPH22VVC8NI','190123'),('Hyacinth','Blackwell','Mclean, Yoshio D.','egestas.Duis.ac@risusvariusorci.ca','Amir','BSN72DZR8DX','190730'),('Tamara','Tran','Stephens, Noelle Z.','conubia@mollislectus.ca','Tobias','FFZ01NMJ6YU','190405'),('Wynne','Giles','Sharpe, Darius Q.','urna@Maurisquis.com','Carl','ULQ92ILG0QS','180219'),('Lionel','Doyle','Landry, John B.','Donec.tempor@odiotristiquepharetra.net','Elliott','EAJ09JPO0DQ','181105'),('Cheyenne','Peters','Heath, Savannah Y.','Integer.urna@libero.edu','Stone','BHY32AKV4OY','181223'),('Giselle','Chapman','Stephenson, Rinah B.','a.feugiat.tellus@tempus.co.uk','Ulric','NRI96VPJ1AA','180321'),('Macaulay','Ross','Cross, Zane P.','nec.enim@Phasellusvitae.co.uk','Raja','WON80GBS2NY','190203'),('Olivia','Bullock','Henry, Olympia V.','nisi@dapibusquamquis.org','Chase','XIX64VNM8VB','180217');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Walker','Mcfarland','Hodge, Howard G.','gravida@eleifendnon.com','Abdul','ZZQ78DTZ7EK','190806'),('Lacy','Thompson','Morrow, Rogan M.','tellus.Phasellus@pulvinararcuet.ca','Hu','IIJ76JIB0CQ','180724'),('Gillian','Emerson','Diaz, Kaitlin L.','malesuada.vel@Nunccommodo.net','Kenneth','QYR53SPN6EJ','180214'),('Howard','Crawford','Solis, Len E.','imperdiet.nec@accumsanconvallisante.org','Marshall','LBG94YYA2YY','170926'),('Alvin','Drake','Collins, Xantha W.','Vivamus.rhoncus.Donec@ipsumnunc.org','Gary','SLU88XHV9TW','180101'),('Heather','Hoffman','Farmer, Zephania D.','leo.Cras.vehicula@ridiculusmus.ca','Arthur','DUT21RZZ2HG','180902'),('Kellie','Parsons','Stone, Blaze Z.','Aliquam@dolorNullasemper.edu','Hoyt','MVN87TZU8PV','190425'),('Kirestin','Dyer','Mcguire, Charde J.','tincidunt.aliquam.arcu@seddui.org','Mason','FEK94FAV7FN','180210'),('Lara','Dunlap','Hernandez, Lunea Q.','ultrices@Vestibulum.ca','Merrill','CNO73IEL1GO','190603'),('Zahir','Trevino','Dejesus, Elton I.','elit@dui.ca','Hamish','ZYE17PND6WF','180121');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Victoria','Cain','Flynn, Mona S.','amet@sitamet.net','Chase','YMA61LTX1UC','190208'),('Emery','Shelton','Barry, Jessica H.','eu@dolor.com','Damian','QSD26KSK9ZH','190821'),('Brady','Stevens','Adams, Emery F.','Nulla@eueros.ca','Barrett','UVL85ZVH4RI','181211'),('Dante','Buckley','Deleon, Kane L.','aliquet.nec@orci.co.uk','Macaulay','OUO23WQY0PP','171204'),('Nichole','Crosby','Bruce, Whoopi D.','metus.In.nec@nullamagnamalesuada.co.uk','Yardley','JXS58CFF0MP','181107'),('Kellie','Preston','Hickman, Avram Y.','a.odio@loremauctor.edu','Carter','ONA92VJM7DU','190410'),('Paki','Pacheco','Dillard, Malachi M.','Vestibulum.ante.ipsum@Intincidunt.com','Adam','MPG46YYO3OO','171222'),('Rae','Potts','Hewitt, Arsenio L.','Nullam@blandit.org','Adrian','OHM19ECF4UJ','171001'),('Rajah','Dale','Haney, Marcia S.','nascetur@Aliquamvulputateullamcorper.com','Orson','MBD26OMP8GI','180514'),('Brennan','Forbes','Gonzalez, Hamish J.','in@ultricies.com','Isaiah','USI15FJH6ZC','180927');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Quentin','Mayo','Key, Piper X.','ut.ipsum.ac@vehiculaaliquetlibero.org','Zephania','EDA11IRP4RQ','180603'),('Bell','Singleton','Manning, Carly J.','Donec@tellusjusto.ca','Raja','ZSP34WJH4DZ','180629'),('Damian','Velazquez','Craig, Catherine N.','odio.Nam@varius.org','Wade','JKO34EXS8ZY','190225'),('Tanek','Wilson','Lawrence, Eleanor I.','mollis.vitae.posuere@vitaeorci.edu','Myles','GQT39RXW4MQ','190510'),('Hillary','Foley','Pena, Jacob L.','a.scelerisque@Praesentinterdumligula.org','Colin','JQA68TQC7NC','181002'),('Kathleen','Velasquez','Kirby, Tara K.','est.Nunc@vulputateullamcorpermagna.edu','Dennis','FHS76PUY9FH','180919'),('Yvette','Lloyd','Castillo, Coby Z.','lorem.auctor@maurisrhoncus.org','Rooney','OBX73AFE6DH','180621'),('Grant','Garrett','Walker, Slade I.','Donec@scelerisqueneque.ca','Sawyer','TZQ10ZXF1KX','181230'),('Bruno','Anderson','Richards, Fatima R.','molestie@fermentumconvallisligula.net','Nolan','PER66EEZ1HC','181108'),('Preston','Shepard','Robinson, Zachary P.','nec.imperdiet.nec@purusinmolestie.org','Warren','BJK87OTF0CW','180407');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Debra','Mckenzie','Shaw, Inez W.','et.malesuada.fames@loremlorem.ca','Malachi','USB30MMC3CD','180825'),('Jael','Mccoy','Schultz, Dillon D.','quam.dignissim@Cras.co.uk','Galvin','UPC77RZD6SZ','190519'),('Isabelle','Beck','Lott, Mannix J.','mauris@Proinvelarcu.ca','George','GGU04EYG1XI','190525'),('Sacha','Alford','Odonnell, Nomlanga W.','sed.turpis.nec@Integer.org','Troy','STK48JOK1UB','190313'),('Adele','Sherman','West, Lacy I.','leo.Morbi.neque@pretiumaliquet.co.uk','Blaze','FLS98DXQ3NT','180516'),('Kathleen','Carroll','Rice, Olga Q.','ut@massa.ca','Keith','USA15MXH1LQ','181227'),('Madeson','Livingston','Hurst, Abel W.','a.mi@Aliquamfringilla.com','Simon','HSP77PUD5DE','170926'),('Mollie','Glenn','Meadows, Octavius B.','enim.Etiam@molestieSed.co.uk','Chaim','RVD12JEV8BQ','180530'),('Arsenio','Keller','Burnett, Uriel C.','facilisis.non.bibendum@lacus.co.uk','Ignatius','JJZ44LIR7ND','180920'),('Cynthia','Rodriquez','Bridges, Tiger V.','ultrices.posuere@enim.ca','Basil','BTO36ZBJ0BH','190723');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Lila','Castro','Cochran, Finn M.','Integer.eu@nisiAeneaneget.com','Kermit','VLH53ZPY7HO','171212'),('Gay','Munoz','Larson, Shay O.','bibendum.Donec@Cras.org','Emery','IYX11PYS5RK','190405'),('Aphrodite','Carver','Hodge, Linda A.','Cras.dictum@necorci.ca','Trevor','OOK74JZP2CQ','180701'),('Samuel','Rivera','West, Kyle S.','et@at.com','Ali','LVP50XTB3NR','190806'),('Chelsea','Porter','Lloyd, Damon E.','velit@consequat.com','Robert','VNP81JWS0FE','180131'),('Audrey','Byrd','Anthony, Aaron B.','lorem@Integer.co.uk','Dylan','UQB42IFS5CY','171007'),('Blake','Wheeler','Herrera, Asher Z.','vitae.purus@adipiscinglobortisrisus.net','Kane','FQX41CNR6SQ','181101'),('Tamekah','Winters','Kennedy, Marshall A.','et.lacinia.vitae@ipsumcursus.org','Plato','BRP16PHU2FG','171225'),('May','Petty','Conley, Valentine U.','Quisque.porttitor.eros@metusfacilisis.ca','Akeem','FQF65LOK5RL','181027'),('Amir','Weiss','Stevens, Cody I.','fringilla.ornare.placerat@vestibulum.org','Porter','FMF54ZWD9KI','171125');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Yoshio','Huber','Camacho, Ivory P.','non.luctus@Duisacarcu.edu','Callum','TMM75PPJ4BT','180602'),('Zia','Levine','Washington, Denton M.','non.luctus@mollisnon.ca','Dominic','TMW57KEZ4UV','180522'),('Alfonso','Mercer','Reeves, Jesse G.','odio.semper.cursus@dictumProin.edu','Adrian','CBJ80FQQ6ZZ','190628'),('Cody','Gardner','Cruz, Macy X.','Aenean@Namtempor.ca','Marsden','RYP24CIE6KX','181025'),('Wyoming','Aguirre','Hall, Marny J.','arcu.Vestibulum.ante@sitametfaucibus.edu','Hayden','QQT28LYY6MX','190916'),('Amal','Mcconnell','Bridges, Caldwell J.','Duis.at@veliteu.net','Marvin','JVY28KRW4YI','180105'),('Illiana','Hunt','Barker, Katell H.','a@rhoncus.net','Hamilton','ALA89XNX4CJ','180624'),('Maxwell','Giles','Head, Cora R.','mollis@nislQuisque.net','Mannix','WAA53IMM8NO','181205'),('Brynne','Hartman','Ferguson, Xaviera V.','ut.nisi@Cras.com','Alan','MFB22EQR8QU','180122'),('Nicholas','Marsh','Estrada, Christian I.','porttitor@eratin.co.uk','Carson','ETB99WVH8BS','180708');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Julian','Blevins','Wheeler, Adam J.','congue.a@velsapien.org','Arden','FSP63UPQ5OK','181125'),('Owen','Foley','Burch, Abel I.','laoreet.ipsum.Curabitur@tempus.co.uk','Merrill','QRI96CLM2LE','190330'),('Grant','Roth','Sanders, Ralph P.','Donec.nibh@magna.com','Ashton','IKL25ROL8QW','181031'),('Tanner','Fry','Solomon, Nichole O.','sem@auctorvelitAliquam.net','Tobias','JSS81SAX0EG','180201'),('Regina','Barnett','Richard, Medge G.','dignissim@euismodest.co.uk','Cain','VUY45FGD8OC','180616'),('Joshua','Velazquez','Ryan, Keely S.','nec@luctus.org','Valentine','AMU96QTT6TL','190302'),('Isadora','Fulton','Nelson, Ira I.','ut@dolorelit.edu','Theodore','UAC48CUZ0WT','190529'),('Harrison','Pickett','Hawkins, Marny X.','mi.Aliquam@Nullamscelerisque.net','Vladimir','LAJ56SJZ2RE','181204'),('Blaine','Cox','Kline, Breanna Y.','euismod@pellentesque.net','Acton','SJE07RCM2TF','171211'),('Theodore','Pittman','Bauer, Joan O.','Pellentesque.habitant.morbi@cursusluctus.co.uk','Coby','FON80EJT6TX','180403');
INSERT INTO BlogUser([Name],[Surname],[Patronymic],[Email],[UserLogin],[UserPassword],[RegistrationDate]) VALUES('Veronica','Garrison','Ortega, Harrison U.','eu.tempor@velpedeblandit.net','Herman','RHK78OJE1OM','190614'),('Dorothy','Huber','Wood, Wing S.','a@Classaptenttaciti.com','Tyler','IFJ17DVU0OO','180328'),('Fay','French','Gallegos, Elmo P.','Etiam.bibendum@sapien.co.uk','Devin','TIZ17PLF9JS','190818'),('Garth','Edwards','Guerra, Elmo A.','Proin@placerat.ca','Branden','UYW56EXY2WG','190519'),('Rigel','Griffin','Simpson, Kai W.','malesuada@magna.org','Edward','ZRT14JSJ1PC','190407'),('Ruth','Rios','Gates, Steven E.','diam.luctus@semmolestiesodales.co.uk','Macaulay','DNY35AHO4IH','190222'),('Xenos','Sykes','Aguilar, John L.','laoreet.posuere@ametornarelectus.co.uk','Elvis','VWA41UCV5PY','190915'),('Lance','York','Chambers, Akeem Z.','Quisque.ornare.tortor@egestasblandit.edu','Christopher','IRF61CQG4GA','180120'),('Kylan','Avila','Foster, Indigo I.','id.sapien.Cras@Duis.ca','Macaulay','LHA73IZN0XR','171013'),('Nerea','Cooke','Richard, Katell Q.','quis.arcu@nasceturridiculus.com','Dalton','MXL39VWA9VF','180516');
