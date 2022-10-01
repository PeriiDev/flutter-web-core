const mockData = [
  {
    "id": 1,
    "first_name": "Avis",
    "last_name": "Henlon",
    "email": "ahenlon0@smugmug.com",
    "password": "oD2npO55r",
    "role": "Electrician"
  },
  {
    "id": 2,
    "first_name": "Fenelia",
    "last_name": "Flukes",
    "email": "fflukes1@tripod.com",
    "password": "NCi30YZN",
    "role": "Construction Worker"
  },
  {
    "id": 3,
    "first_name": "Gilberto",
    "last_name": "Sheilds",
    "email": "gsheilds2@un.org",
    "password": "N6HmDNzg",
    "role": "Architect"
  },
  {
    "id": 4,
    "first_name": "Annabell",
    "last_name": "Vallintine",
    "email": "avallintine3@networkadvertising.org",
    "password": "w1PXLBd",
    "role": "Engineer"
  },
  {
    "id": 5,
    "first_name": "Glenna",
    "last_name": "Luckett",
    "email": "gluckett4@t-online.de",
    "password": "loQMJQ581h",
    "role": "Architect"
  },
  {
    "id": 6,
    "first_name": "Odette",
    "last_name": "Faiers",
    "email": "ofaiers5@pen.io",
    "password": "WPyVWenEsBh",
    "role": "Estimator"
  },
  {
    "id": 7,
    "first_name": "Ebonee",
    "last_name": "Crennan",
    "email": "ecrennan6@ucsd.edu",
    "password": "dd8QHwysoq5G",
    "role": "Supervisor"
  },
  {
    "id": 8,
    "first_name": "Jed",
    "last_name": "Haster",
    "email": "jhaster7@wunderground.com",
    "password": "g9bi8UDJ",
    "role": "Supervisor"
  },
  {
    "id": 9,
    "first_name": "Tabatha",
    "last_name": "Cowpland",
    "email": "tcowpland8@amazon.com",
    "password": "o0eXcZNVVX",
    "role": "Construction Expeditor"
  },
  {
    "id": 10,
    "first_name": "Ralph",
    "last_name": "Rummings",
    "email": "rrummings9@china.com.cn",
    "password": "nZcnfiLJRrn",
    "role": "Estimator"
  },
  {
    "id": 11,
    "first_name": "Cornell",
    "last_name": "Marmion",
    "email": "cmarmiona@altervista.org",
    "password": "ujtata",
    "role": "Subcontractor"
  },
  {
    "id": 12,
    "first_name": "Gabby",
    "last_name": "Quoit",
    "email": "gquoitb@hubpages.com",
    "password": "ZauLN2",
    "role": "Electrician"
  },
  {
    "id": 13,
    "first_name": "Clerc",
    "last_name": "Dussy",
    "email": "cdussyc@jigsy.com",
    "password": "DzYcCMW",
    "role": "Construction Worker"
  },
  {
    "id": 14,
    "first_name": "Tamma",
    "last_name": "Parkyns",
    "email": "tparkynsd@nasa.gov",
    "password": "HiETdy0kZ7dC",
    "role": "Construction Expeditor"
  },
  {
    "id": 15,
    "first_name": "Sharron",
    "last_name": "Fessier",
    "email": "sfessiere@berkeley.edu",
    "password": "URavHNzv",
    "role": "Construction Expeditor"
  },
  {
    "id": 16,
    "first_name": "Aubrey",
    "last_name": "Caberas",
    "email": "acaberasf@imdb.com",
    "password": "e7rOlefMf",
    "role": "Project Manager"
  },
  {
    "id": 17,
    "first_name": "Bunny",
    "last_name": "Bazire",
    "email": "bbazireg@webnode.com",
    "password": "zFDn1JO",
    "role": "Supervisor"
  },
  {
    "id": 18,
    "first_name": "Leigh",
    "last_name": "Frankham",
    "email": "lfrankhamh@sphinn.com",
    "password": "FY8HsVtBhNop",
    "role": "Engineer"
  },
  {
    "id": 19,
    "first_name": "Lorianna",
    "last_name": "Ales",
    "email": "lalesi@posterous.com",
    "password": "t5toz5gLYoHW",
    "role": "Project Manager"
  },
  {
    "id": 20,
    "first_name": "Denys",
    "last_name": "Wickens",
    "email": "dwickensj@dmoz.org",
    "password": "MIHfUac2sf",
    "role": "Supervisor"
  },
  {
    "id": 21,
    "first_name": "Angie",
    "last_name": "Fordyce",
    "email": "afordycek@tuttocitta.it",
    "password": "e1e6h3uo",
    "role": "Construction Foreman"
  },
  {
    "id": 22,
    "first_name": "Faun",
    "last_name": "Barrows",
    "email": "fbarrowsl@cafepress.com",
    "password": "ySz17m",
    "role": "Supervisor"
  },
  {
    "id": 23,
    "first_name": "Larissa",
    "last_name": "Millom",
    "email": "lmillomm@e-recht24.de",
    "password": "dyq56V7",
    "role": "Electrician"
  },
  {
    "id": 24,
    "first_name": "Trip",
    "last_name": "Coupe",
    "email": "tcoupen@blogs.com",
    "password": "x8AxrihP",
    "role": "Construction Worker"
  },
  {
    "id": 25,
    "first_name": "Ferdy",
    "last_name": "Fissenden",
    "email": "ffissendeno@toplist.cz",
    "password": "qZ5svwh",
    "role": "Construction Worker"
  },
  {
    "id": 26,
    "first_name": "Kathy",
    "last_name": "Fawthorpe",
    "email": "kfawthorpep@apple.com",
    "password": "CT8m4vjt",
    "role": "Electrician"
  },
  {
    "id": 27,
    "first_name": "Moore",
    "last_name": "Irwin",
    "email": "mirwinq@eepurl.com",
    "password": "pauUJel",
    "role": "Subcontractor"
  },
  {
    "id": 28,
    "first_name": "Ashlee",
    "last_name": "McEachern",
    "email": "amceachernr@berkeley.edu",
    "password": "1AjwwrzfTmUh",
    "role": "Construction Expeditor"
  },
  {
    "id": 29,
    "first_name": "Jasmine",
    "last_name": "Crace",
    "email": "jcraces@reverbnation.com",
    "password": "kXio5i",
    "role": "Subcontractor"
  },
  {
    "id": 30,
    "first_name": "Renado",
    "last_name": "Beldon",
    "email": "rbeldont@gov.uk",
    "password": "9rSTaz",
    "role": "Subcontractor"
  },
  {
    "id": 31,
    "first_name": "Taite",
    "last_name": "Cowerd",
    "email": "tcowerdu@360.cn",
    "password": "1hxWcZgfOKX",
    "role": "Electrician"
  },
  {
    "id": 32,
    "first_name": "Job",
    "last_name": "Camelin",
    "email": "jcamelinv@businessweek.com",
    "password": "8HR50rgO",
    "role": "Architect"
  },
  {
    "id": 33,
    "first_name": "Nerty",
    "last_name": "Monery",
    "email": "nmoneryw@slideshare.net",
    "password": "7RHuDaiWuPx",
    "role": "Construction Manager"
  },
  {
    "id": 34,
    "first_name": "Reuven",
    "last_name": "Cowthard",
    "email": "rcowthardx@deviantart.com",
    "password": "uFr4HltGn6iC",
    "role": "Construction Manager"
  },
  {
    "id": 35,
    "first_name": "Selena",
    "last_name": "Genny",
    "email": "sgennyy@biglobe.ne.jp",
    "password": "Osra4PJ",
    "role": "Construction Worker"
  },
  {
    "id": 36,
    "first_name": "Kiel",
    "last_name": "Seagrove",
    "email": "kseagrovez@economist.com",
    "password": "Tgq8UUf",
    "role": "Electrician"
  },
  {
    "id": 37,
    "first_name": "Dolli",
    "last_name": "Baudy",
    "email": "dbaudy10@salon.com",
    "password": "OcaH9XXT",
    "role": "Construction Foreman"
  },
  {
    "id": 38,
    "first_name": "Gabrila",
    "last_name": "Kerswell",
    "email": "gkerswell11@slate.com",
    "password": "sNuv2g4jvJh",
    "role": "Project Manager"
  },
  {
    "id": 39,
    "first_name": "Cordula",
    "last_name": "Kenelin",
    "email": "ckenelin12@walmart.com",
    "password": "y0vQuBI91",
    "role": "Electrician"
  },
  {
    "id": 40,
    "first_name": "Shirline",
    "last_name": "McFie",
    "email": "smcfie13@is.gd",
    "password": "4XnWPRlXkid",
    "role": "Engineer"
  },
  {
    "id": 41,
    "first_name": "Jayme",
    "last_name": "Hamberston",
    "email": "jhamberston14@printfriendly.com",
    "password": "8IBEtxZY",
    "role": "Electrician"
  },
  {
    "id": 42,
    "first_name": "Franklyn",
    "last_name": "Cloney",
    "email": "fcloney15@ifeng.com",
    "password": "Nyc6mRTXdv",
    "role": "Construction Foreman"
  },
  {
    "id": 43,
    "first_name": "Isa",
    "last_name": "Beresford",
    "email": "iberesford16@reference.com",
    "password": "59NxYfHi",
    "role": "Construction Worker"
  },
  {
    "id": 44,
    "first_name": "Grace",
    "last_name": "Lang",
    "email": "glang17@surveymonkey.com",
    "password": "bnTrnEfZ5A",
    "role": "Electrician"
  },
  {
    "id": 45,
    "first_name": "Horatia",
    "last_name": "Perham",
    "email": "hperham18@uiuc.edu",
    "password": "P58kT59",
    "role": "Subcontractor"
  },
  {
    "id": 46,
    "first_name": "Isadora",
    "last_name": "Rutty",
    "email": "irutty19@issuu.com",
    "password": "aK2Xa2dl",
    "role": "Surveyor"
  },
  {
    "id": 47,
    "first_name": "Gustie",
    "last_name": "Cousen",
    "email": "gcousen1a@shinystat.com",
    "password": "0VkejQSiYbPu",
    "role": "Construction Manager"
  },
  {
    "id": 48,
    "first_name": "Rhodie",
    "last_name": "Kobiera",
    "email": "rkobiera1b@unesco.org",
    "password": "i3mSYx4YOs6R",
    "role": "Electrician"
  },
  {
    "id": 49,
    "first_name": "Poul",
    "last_name": "D'Hooghe",
    "email": "pdhooghe1c@ted.com",
    "password": "3U7zHK3Litzy",
    "role": "Electrician"
  },
  {
    "id": 50,
    "first_name": "Tannie",
    "last_name": "Laurent",
    "email": "tlaurent1d@cpanel.net",
    "password": "dKAFL3eRKt",
    "role": "Construction Expeditor"
  }
];
