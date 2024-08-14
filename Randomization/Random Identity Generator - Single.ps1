# This script will generate a random identity (first name, last name, etc.), but most of the data is hard-coded


# Introduction message
Write-Host "This script will generate a random identity and copy it to your clipboard"
Start-Sleep -Seconds 2

# Array to define male first names
$MaleFirstNamesArray = @(
    "Aaron",
    "Abel",
    "Abraham",
    "Abram",
    "Adam",
    "Addison",
    "Adrian",
    "Aiden",
    "Alan",
    "Albert",
    "Alex",
    "Alexander",
    "Alfred",
    "Alonzo",
    "Alvin",
    "Amos",
    "Anderson",
    "Andrew",
    "Angelo",
    "Anthony",
    "Archie",
    "Arnold",
    "Arthur",
    "Ashton",
    "Austin",
    "Barrett",
    "Barry",
    "Beau",
    "Benjamin",
    "Bennett",
    "Benson",
    "Bernard",
    "Bill",
    "Billy",
    "Blaine",
    "Blake",
    "Bobby",
    "Booker",
    "Bradley",
    "Brady",
    "Brandon",
    "Brian",
    "Brock",
    "Brooks",
    "Bruce",
    "Bryan",
    "Bryce",
    "Cade",
    "Caesar",
    "Caleb",
    "Calvin",
    "Cameron",
    "Carl",
    "Carlos",
    "Carlton",
    "Carter",
    "Casey",
    "Cecil",
    "Chandler",
    "Charles",
    "Chester",
    "Chris",
    "Christian",
    "Christopher",
    "Clarence",
    "Clark",
    "Claude",
    "Clayton",
    "Clifford",
    "Clinton",
    "Clyde",
    "Cody",
    "Colby",
    "Coleman",
    "Colin",
    "Connor",
    "Conrad",
    "Cornelius",
    "Cory",
    "Craig",
    "Curtis",
    "Dale",
    "Dallas",
    "Dalton",
    "Damien",
    "Daniel",
    "Darrell",
    "Darren",
    "Daryl",
    "David",
    "Dean",
    "Declan",
    "Demetrius",
    "Dennis",
    "Derek",
    "Desmond",
    "Dexter",
    "Dominic",
    "Donald",
    "Donovan",
    "Douglas",
    "Drake",
    "Drew",
    "Duncan",
    "Dustin",
    "Dwight",
    "Dylan",
    "Edward",
    "Edwin",
    "Elijah",
    "Eric",
    "Ethan",
    "Eugene",
    "Evan",
    "Felix",
    "Frank",
    "Gabriel",
    "Gary",
    "Gavin",
    "George",
    "Gerald",
    "Gilbert",
    "Glenn",
    "Gordon",
    "Grant",
    "Gregory",
    "Harold",
    "Harry",
    "Henry",
    "Howard",
    "Hunter",
    "Ian",
    "Isaac",
    "Jack",
    "Jacob",
    "Jaden",
    "James",
    "Jared",
    "Jason",
    "Jasper",
    "Jay",
    "Jefferson",
    "Jeffrey",
    "Jeremiah",
    "Jeremy",
    "Jerome",
    "Jerry",
    "Jesse",
    "Jim",
    "Joaquin",
    "Joe",
    "John",
    "Jonah",
    "Jonathan",
    "Jordan",
    "Joseph",
    "Joshua",
    "Julian",
    "Justice",
    "Justin",
    "Kaden",
    "Kai",
    "Kameron",
    "Kane",
    "Keith",
    "Kendrick",
    "Kenneth",
    "Kenton",
    "Kevin",
    "Kirk",
    "Knox",
    "Kristopher",
    "Kyle",
    "Lance",
    "Landon",
    "Lane",
    "Larry",
    "Lawrence",
    "Lee",
    "Lennon",
    "Leo",
    "Leonard",
    "Leroy",
    "Levi",
    "Lewis",
    "Lincoln",
    "Lionel",
    "Logan",
    "Lorenzo",
    "Louie",
    "Louis",
    "Luca",
    "Lucas",
    "Luke",
    "Mack",
    "Malachi",
    "Malcolm",
    "Manuel",
    "Marcus",
    "Mark",
    "Martin",
    "Marvin",
    "Mason",
    "Matthew",
    "Matthias",
    "Maurice",
    "Maverick",
    "Max",
    "Melvin",
    "Micah",
    "Michael",
    "Miguel",
    "Miles",
    "Milo",
    "Mitchell",
    "Morgan",
    "Moses",
    "Nash",
    "Nathan",
    "Nathaniel",
    "Neil",
    "Nelson",
    "Nicholas",
    "Nico",
    "Nigel",
    "Nixon",
    "Noah",
    "Nolan",
    "Norman",
    "Oliver",
    "Orlando",
    "Orson",
    "Oscar",
    "Otis",
    "Owen",
    "Pablo",
    "Parker",
    "Patrick",
    "Paul",
    "Perry",
    "Peter",
    "Philip",
    "Porter",
    "Preston",
    "Quentin",
    "Quincy",
    "Quinton",
    "Rafael",
    "Ralph",
    "Randall",
    "Raymond",
    "Reed",
    "Reese",
    "Reid",
    "Reuben",
    "Rhett",
    "Richard",
    "Ricky",
    "Riley",
    "Robert",
    "Rocco",
    "Rodney",
    "Roger",
    "Roland",
    "Romeo",
    "Ronald",
    "Ross",
    "Rowan",
    "Roy",
    "Russell",
    "Ryan",
    "Ryder",
    "Salvador",
    "Samson",
    "Samuel",
    "Santiago",
    "Saul",
    "Sawyer",
    "Scott",
    "Sean",
    "Seth",
    "Shane",
    "Shawn",
    "Silas",
    "Simon",
    "Spencer",
    "Stanley",
    "Stephen",
    "Sterling",
    "Steve",
    "Steven",
    "Stuart",
    "Talon",
    "Tate",
    "Terry",
    "Theodore",
    "Thomas",
    "Timothy",
    "Tobias",
    "Toby",
    "Todd",
    "Tomas",
    "Tony",
    "Travis",
    "Trent",
    "Trenton",
    "Trevor",
    "Troy",
    "Tucker",
    "Tyler",
    "Ulysses",
    "Uriel",
    "Vance",
    "Vaughn",
    "Vernon",
    "Victor",
    "Vince",
    "Vincent",
    "Wade",
    "Walker",
    "Wallace",
    "Walter",
    "Warren",
    "Waylon",
    "Wayne",
    "Wendell",
    "Wesley",
    "Weston",
    "William",
    "Wilson",
    "Winston",
    "Wyatt",
    "Xander",
    "Xavi",
    "Xavier",
    "Yahir",
    "Yosef",
    "Zachary",
    "Zane",
    "Zeke",
    "Zion"
    )

# Array to define the list of female first names
$FemaleFirstNamesArray = @(
    "Abigail",
    "Addison",
    "Adelaide",
    "Adeline",
    "Ainsley",
    "Alana",
    "Alexa",
    "Alice",
    "Alina",
    "Allison",
    "Alyssa",
    "Amara",
    "Amaya",
    "Amber",
    "Amelia",
    "Amelie",
    "Anastasia",
    "Anaya",
    "Andrea",
    "Angela",
    "Angelina",
    "Annabelle",
    "Anya",
    "Ariana",
    "Ariella",
    "Ashlyn",
    "Aspen",
    "Athena",
    "Aubree",
    "Aubrey",
    "Aurora",
    "Autumn",
    "Ava",
    "Avery",
    "Ayla",
    "Bailey",
    "Barbara",
    "Beatrice",
    "Bella",
    "Bethany",
    "Bianca",
    "Blair",
    "Blake",
    "Bonnie",
    "Brianna",
    "Bridget",
    "Brielle",
    "Brittany",
    "Brooke",
    "Bryn",
    "Cadence",
    "Caitlin",
    "Callie",
    "Camila",
    "Camille",
    "Carly",
    "Carmen",
    "Caroline",
    "Cassandra",
    "Catherine",
    "Cecilia",
    "Celeste",
    "Charity",
    "Charlotte",
    "Chelsea",
    "Chloe",
    "Christina",
    "Cindy",
    "Claire",
    "Clara",
    "Clementine",
    "Colette",
    "Corinne",
    "Crystal",
    "Dahlia",
    "Daisy",
    "Dakota",
    "Daniella",
    "Danielle",
    "Daphne",
    "Darla",
    "Davina",
    "Deborah",
    "Delaney",
    "Delia",
    "Delilah",
    "Demi",
    "Denise",
    "Desiree",
    "Destiny",
    "Diana",
    "Dixie",
    "Dorothy",
    "Eden",
    "Edith",
    "Eileen",
    "Eleanor",
    "Elena",
    "Eliana",
    "Elise",
    "Eliza",
    "Elizabeth",
    "Ella",
    "Elliot",
    "Eloise",
    "Elsa",
    "Elsie",
    "Ember",
    "Emerson",
    "Emery",
    "Emilia",
    "Emily",
    "Emma",
    "Emmy",
    "Erica",
    "Esme",
    "Estella",
    "Esther",
    "Etta",
    "Eva",
    "Evangeline",
    "Evelyn",
    "Everly",
    "Faith",
    "Farrah",
    "Faye",
    "Felicity",
    "Fern",
    "Fiona",
    "Francesca",
    "Freya",
    "Frida",
    "Gabriella",
    "Gabrielle",
    "Gail",
    "Gemma",
    "Genesis",
    "Genevieve",
    "Georgia",
    "Gianna",
    "Gillian",
    "Giselle",
    "Gloria",
    "Grace",
    "Gracie",
    "Greta",
    "Gretchen",
    "Guinevere",
    "Gwen",
    "Gwendolyn",
    "Hadley",
    "Hailey",
    "Hallie",
    "Hannah",
    "Harley",
    "Harmony",
    "Harper",
    "Harriet",
    "Hattie",
    "Haven",
    "Hazel",
    "Heidi",
    "Helen",
    "Helena",
    "Henrietta",
    "Hillary",
    "Holly",
    "Hope",
    "Imogen",
    "India",
    "Ingrid",
    "Irene",
    "Iris",
    "Isabella",
    "Isadora",
    "Isla",
    "Isobel",
    "Ivana",
    "Ivory",
    "Ivy",
    "Jacqueline",
    "Jada",
    "Jade",
    "Janelle",
    "Janet",
    "Janice",
    "Jasmine",
    "Jayla",
    "Jean",
    "Jenna",
    "Jennifer",
    "Jessica",
    "Jillian",
    "Joanna",
    "Jocelyn",
    "Jordan",
    "Josephine",
    "Josie",
    "Joy",
    "Judith",
    "Julia",
    "Juliana",
    "Juliet",
    "June",
    "Juniper",
    "Kaia",
    "Kaitlyn",
    "Kara",
    "Karen",
    "Karina",
    "Katelyn",
    "Katherine",
    "Katrina",
    "Kay",
    "Kayla",
    "Kaylee",
    "Keira",
    "Kelsey",
    "Kendall",
    "Kendra",
    "Kennedy",
    "Kiera",
    "Kimberly",
    "Kinsley",
    "Kira",
    "Kristen",
    "Kristina",
    "Kyla",
    "Kylie",
    "Lacey",
    "Laila",
    "Lana",
    "Lara",
    "Laura",
    "Lauren",
    "Layla",
    "Leah",
    "Leila",
    "Lena",
    "Leslie",
    "Lila",
    "Lillian",
    "Lilly",
    "Lily",
    "Lindsay",
    "Lisa",
    "Livia",
    "Lola",
    "Lorelei",
    "Louisa",
    "Lucia",
    "Lucille",
    "Lucy",
    "Luna",
    "Lydia",
    "Lyla",
    "Mabel",
    "Mackenzie",
    "Madeline",
    "Madelyn",
    "Madison",
    "Mae",
    "Maeve",
    "Maggie",
    "Maisie",
    "Makayla",
    "Mallory",
    "Mara",
    "Margaret",
    "Margot",
    "Maria",
    "Mariah",
    "Mariana",
    "Marie",
    "Marilyn",
    "Marina",
    "Marissa",
    "Martha",
    "Mary",
    "Matilda",
    "Maya",
    "Mckenna",
    "Megan",
    "Melanie",
    "Melissa",
    "Melody",
    "Meredith",
    "Mia",
    "Michelle",
    "Mila",
    "Mina",
    "Miranda",
    "Molly",
    "Monica",
    "Morgan",
    "Mya",
    "Nadia",
    "Nancy",
    "Naomi",
    "Natalia",
    "Natalie",
    "Natasha",
    "Nell",
    "Nia",
    "Nicole",
    "Nina",
    "Noelle",
    "Nora",
    "Norah",
    "Nova",
    "Nyla",
    "Oakley",
    "Olive",
    "Olivia",
    "Opal",
    "Ophelia",
    "Paige",
    "Paisley",
    "Paloma",
    "Pamela",
    "Patricia",
    "Paula",
    "Payton",
    "Penelope",
    "Penny",
    "Peyton",
    "Phoebe",
    "Piper",
    "Poppy",
    "Presley",
    "Priscilla",
    "Quinn",
    "Rachel",
    "Raegan",
    "Raven",
    "Reagan",
    "Rebecca",
    "Reese",
    "Regina",
    "Remi",
    "Renee",
    "Riley",
    "Rita",
    "River",
    "Robyn",
    "Rory",
    "Rosalie",
    "Rose",
    "Rosie",
    "Rowan",
    "Ruby",
    "Ruth",
    "Sabrina",
    "Sadie",
    "Sage",
    "Samantha",
    "Sandra",
    "Sara",
    "Sarah",
    "Savannah",
    "Scarlett",
    "Selena",
    "Serena",
    "Shannon",
    "Sharon",
    "Sheila",
    "Shelby",
    "Sienna",
    "Sierra",
    "Simone",
    "Skye",
    "Skylar",
    "Sloane",
    "Sofia",
    "Sophia",
    "Sophie",
    "Stacy",
    "Stella",
    "Stephanie",
    "Summer",
    "Susan",
    "Sydney",
    "Sylvia",
    "Tabitha",
    "Talia",
    "Tamara",
    "Tara",
    "Taryn",
    "Tatiana",
    "Taylor",
    "Teagan",
    "Teresa",
    "Tessa",
    "Thea",
    "Theresa",
    "Tiffany",
    "Tina",
    "Tori",
    "Tracy",
    "Trinity",
    "Valentina",
    "Valerie",
    "Vanessa",
    "Vera",
    "Veronica",
    "Victoria",
    "Violet",
    "Vivian",
    "Wendy",
    "Whitney",
    "Willa",
    "Willow",
    "Winnie",
    "Winter",
    "Wren",
    "Yara",
    "Yasmin",
    "Yvette",
    "Yvonne",
    "Zara",
    "Zelda",
    "Zoe",
    "Zoey",
    "Zuri"
    )

# Array to define the list of last names
$LastNamesArray = @(
    "Abbott",
    "Adams",
    "Adkins",
    "Alexander",
    "Allen",
    "Alvarez",
    "Anderson",
    "Andrews",
    "Armstrong",
    "Arnold",
    "Atkins",
    "Austin",
    "Bailey",
    "Baker",
    "Banks",
    "Barker",
    "Barnes",
    "Barnett",
    "Bates",
    "Beck",
    "Bell",
    "Bennett",
    "Bishop",
    "Black",
    "Blair",
    "Boone",
    "Bowen",
    "Boyd",
    "Bradley",
    "Brady",
    "Brewer",
    "Bridges",
    "Brooks",
    "Brown",
    "Bryant",
    "Burns",
    "Burton",
    "Butler",
    "Cain",
    "Caldwell",
    "Cameron",
    "Campbell",
    "Cannon",
    "Carlson",
    "Carroll",
    "Carson",
    "Carter",
    "Chambers",
    "Chapman",
    "Chavez",
    "Christensen",
    "Clark",
    "Clarkson",
    "Clayton",
    "Clements",
    "Cline",
    "Collins",
    "Conner",
    "Conway",
    "Cook",
    "Cooper",
    "Cox",
    "Craig",
    "Cruz",
    "Cunningham",
    "Curtis",
    "Dalton",
    "Daniels",
    "Davidson",
    "Davis",
    "Dawson",
    "Dean",
    "Decker",
    "Delgado",
    "Dennis",
    "Diaz",
    "Dixon",
    "Douglas",
    "Doyle",
    "Drake",
    "Dudley",
    "Duffy",
    "Duncan",
    "Dunn",
    "Eaton",
    "Edwards",
    "Elliott",
    "Ellis",
    "Ellison",
    "Emerson",
    "Erickson",
    "Espinoza",
    "Estrada",
    "Evans",
    "Ferguson",
    "Fernandez",
    "Fields",
    "Fisher",
    "Fitzgerald",
    "Fleming",
    "Fletcher",
    "Flores",
    "Floyd",
    "Ford",
    "Foster",
    "Fowler",
    "Fox",
    "Francis",
    "Franklin",
    "Freeman",
    "Frost",
    "Fuller",
    "Garcia",
    "Garner",
    "Garrett",
    "Garrison",
    "Gibbs",
    "Gibson",
    "Gilbert",
    "Glover",
    "Golden",
    "Gomez",
    "Gonzales",
    "Gonzalez",
    "Goodman",
    "Gordon",
    "Graham",
    "Grant",
    "Graves",
    "Gray",
    "Green",
    "Greene",
    "Griffin",
    "Griffith",
    "Gross",
    "Guerrero",
    "Gutierrez",
    "Hale",
    "Hall",
    "Hamilton",
    "Hampton",
    "Hansen",
    "Hardy",
    "Harmon",
    "Harper",
    "Harris",
    "Hart",
    "Hawkins",
    "Hayden",
    "Hayes",
    "Henderson",
    "Hendrix",
    "Hensley",
    "Hernandez",
    "Hess",
    "Hester",
    "Hickman",
    "Hicks",
    "Higgins",
    "Hill",
    "Hines",
    "Hodges",
    "Hoffman",
    "Hogan",
    "Holland",
    "Holloway",
    "Holmes",
    "Hoover",
    "Hopkins",
    "Horne",
    "Horton",
    "House",
    "Houston",
    "Howard",
    "Howe",
    "Hubbard",
    "Hudson",
    "Huff",
    "Hughes",
    "Hunt",
    "Hunter",
    "Hurst",
    "Hutchinson",
    "Ingram",
    "Irwin",
    "Jackson",
    "Jacobs",
    "James",
    "Jefferson",
    "Jenkins",
    "Jennings",
    "Jensen",
    "Jimenez",
    "Johns",
    "Johnson",
    "Johnston",
    "Jones",
    "Jordan",
    "Joseph",
    "Joyce",
    "Juarez",
    "Kane",
    "Kaufman",
    "Keith",
    "Keller",
    "Kelley",
    "Kelly",
    "Kemp",
    "Kennedy",
    "Kent",
    "Kerr",
    "Key",
    "Kidd",
    "Kim",
    "King",
    "Kirk",
    "Klein",
    "Knox",
    "Koch",
    "Kramer",
    "Lamb",
    "Lambert",
    "Lancaster",
    "Landry",
    "Lane",
    "Lang",
    "Lara",
    "Larsen",
    "Larson",
    "Lawrence",
    "Lawson",
    "Leach",
    "Leblanc",
    "Lee",
    "Leonard",
    "Lester",
    "Levine",
    "Lewis",
    "Lindsey",
    "Little",
    "Livingston",
    "Lloyd",
    "Logan",
    "Long",
    "Lopez",
    "Love",
    "Lowe",
    "Lucas",
    "Luna",
    "Lynch",
    "Lynn",
    "Lyons",
    "Macdonald",
    "Macias",
    "Mack",
    "Madden",
    "Maddox",
    "Maldonado",
    "Malone",
    "Mann",
    "Manning",
    "Marks",
    "Marquez",
    "Marsh",
    "Marshall",
    "Martin",
    "Martinez",
    "Mason",
    "Massey",
    "Mathews",
    "Mathis",
    "Matthews",
    "Maxwell",
    "May",
    "Mayer",
    "Maynard",
    "Mayo",
    "McCarthy",
    "Mccarty",
    "Mccormick",
    "Mccoy",
    "Mccullough",
    "Mcdaniel",
    "McDonald",
    "Mcfadden",
    "Mcfarland",
    "McGee",
    "Mcgowan",
    "Mcguire",
    "Mcintosh",
    "Mckay",
    "Mckee",
    "McKenzie",
    "Mckinney",
    "Mcknight",
    "Mclaughlin",
    "Mclean",
    "Mcleod",
    "Mcmahon",
    "Mcmillan",
    "Mcneil",
    "Mcpherson",
    "Meadows",
    "Medina",
    "Mejia",
    "Melendez",
    "Melton",
    "Mendez",
    "Mendoza",
    "Mercado",
    "Mercer",
    "Merrill",
    "Merritt",
    "Meyer",
    "Meyers",
    "Michael",
    "Middleton",
    "Miles",
    "Miller",
    "Mills",
    "Miranda",
    "Mitchell",
    "Molina",
    "Monroe",
    "Montgomery",
    "Moody",
    "Moore",
    "Morales",
    "Moran",
    "Moreno",
    "Morgan",
    "Morris",
    "Morrison",
    "Morrow",
    "Morse",
    "Morton",
    "Moses",
    "Mosley",
    "Moss",
    "Mueller",
    "Mullen",
    "Mullins",
    "Munoz",
    "Murphy",
    "Murray",
    "Myers",
    "Nash",
    "Navarro",
    "Neal",
    "Nelson",
    "Newman",
    "Newton",
    "Nguyen",
    "Nichols",
    "Nicholson",
    "Nielsen",
    "Nixon",
    "Noble",
    "Noel",
    "Nolan",
    "Norman",
    "Norris",
    "Norton",
    "Nunez",
    "O’Brien",
    "O’Connell",
    "O’Connor",
    "O’Donnell",
    "O’Neal",
    "O’Neill",
    "O’Rourke",
    "O’Sullivan",
    "Obrien",
    "Ochoa",
    "Odom",
    "Oliver",
    "Olsen",
    "Olson",
    "Orr",
    "Ortega",
    "Ortiz",
    "Osborn",
    "Osborne",
    "Owen",
    "Owens",
    "Pace",
    "Pacheco",
    "Padilla",
    "Page",
    "Palmer",
    "Park",
    "Parker",
    "Parks",
    "Parrish",
    "Parsons",
    "Pate",
    "Patel",
    "Patrick",
    "Patterson",
    "Patton",
    "Paul",
    "Payne",
    "Pearson",
    "Peck",
    "Pena",
    "Pennington",
    "Perez",
    "Perkins",
    "Perry",
    "Peters",
    "Peterson",
    "Petty",
    "Phelps",
    "Phillips",
    "Pickett",
    "Pierce",
    "Pittman",
    "Pitts",
    "Pollard",
    "Poole",
    "Pope",
    "Porter",
    "Potter",
    "Potts",
    "Powell",
    "Powers",
    "Pratt",
    "Preston",
    "Price",
    "Prince",
    "Pruitt",
    "Puckett",
    "Pugh",
    "Quinn",
    "Ramirez",
    "Ramos",
    "Ramsey",
    "Randall",
    "Randolph",
    "Rasmussen",
    "Ratliff",
    "Ray",
    "Raymond",
    "Reed",
    "Reese",
    "Reeves",
    "Reid",
    "Reilly",
    "Reyes",
    "Reynolds",
    "Rhodes",
    "Rice",
    "Rich",
    "Richard",
    "Richards",
    "Richardson",
    "Richmond",
    "Riddle",
    "Riggs",
    "Riley",
    "Rios",
    "Rivas",
    "Rivera",
    "Rivers",
    "Roach",
    "Robbins",
    "Roberson",
    "Roberts",
    "Robertson",
    "Robinson",
    "Robles",
    "Rocha",
    "Rodgers",
    "Rodriguez",
    "Rogers",
    "Rojas",
    "Rollins",
    "Roman",
    "Romero",
    "Rosa",
    "Rosales",
    "Rosario",
    "Rose",
    "Ross",
    "Roth",
    "Rowe",
    "Rowland",
    "Roy",
    "Ruiz",
    "Rush",
    "Russell",
    "Russo",
    "Ryan",
    "Salas",
    "Salazar",
    "Sampson",
    "Sanchez",
    "Sanders",
    "Sandoval",
    "Sanford",
    "Santana",
    "Santiago",
    "Santos",
    "Sargent",
    "Saunders",
    "Savage",
    "Sawyer",
    "Schmidt",
    "Schneider",
    "Schroeder",
    "Schultz",
    "Schwartz",
    "Scott",
    "Sears",
    "Sellers",
    "Serrano",
    "Sexton",
    "Shaffer",
    "Shannon",
    "Sharp",
    "Sharpe",
    "Shaw",
    "Shelton",
    "Shepard",
    "Shepherd",
    "Sheppard",
    "Sherman",
    "Shields",
    "Short",
    "Silva",
    "Simmons",
    "Simon",
    "Simpson",
    "Sims",
    "Singleton",
    "Skinner",
    "Slater",
    "Sloan",
    "Small",
    "Smith",
    "Snow",
    "Snyder",
    "Solis",
    "Solomon",
    "Sosa",
    "Soto",
    "Sparks",
    "Spears",
    "Spence",
    "Spencer",
    "Stafford",
    "Stanley",
    "Stanton",
    "Stark",
    "Steele",
    "Stein",
    "Stephens",
    "Stephenson",
    "Stevens",
    "Stevenson",
    "Stewart",
    "Stokes",
    "Stone",
    "Stout",
    "Strickland",
    "Strong",
    "Stuart",
    "Suarez",
    "Sullivan",
    "Summers",
    "Sutton",
    "Swanson",
    "Sweeney",
    "Sweet",
    "Sykes",
    "Talley",
    "Tanner",
    "Tate",
    "Taylor",
    "Terrell",
    "Terry",
    "Thomas",
    "Thompson",
    "Thornton",
    "Tillman",
    "Todd",
    "Torres",
    "Townsend",
    "Tran",
    "Travis",
    "Trevino",
    "Trujillo",
    "Tucker",
    "Turner",
    "Tyler",
    "Tyson",
    "Underwood",
    "Upton",
    "Valdez",
    "Valencia",
    "Valentine",
    "Valenzuela",
    "Vance",
    "Vang",
    "Vargas",
    "Vasquez",
    "Vaughan",
    "Vaughn",
    "Vazquez",
    "Vega",
    "Velasquez",
    "Velazquez",
    "Velez",
    "Villarreal",
    "Vincent",
    "Vinson",
    "Wade",
    "Wagner",
    "Walker",
    "Wall",
    "Wallace",
    "Waller",
    "Walls",
    "Walsh",
    "Walter",
    "Walters",
    "Walton",
    "Ward",
    "Ware",
    "Warner",
    "Warren",
    "Washington",
    "Waters",
    "Watkins",
    "Watson",
    "Watts",
    "Weaver",
    "Webb",
    "Weber",
    "Webster",
    "Weeks",
    "Weiss",
    "Welch",
    "Wells",
    "West",
    "Wheeler",
    "Whitaker",
    "White",
    "Whitehead",
    "Whitfield",
    "Whitley",
    "Whitney",
    "Wiggins",
    "Wilcox",
    "Wilder",
    "Wiley",
    "Wilkerson",
    "Wilkins",
    "Wilkinson",
    "William",
    "Williams",
    "Williamson",
    "Willis",
    "Wilson",
    "Winters",
    "Wise",
    "Witt",
    "Wolf",
    "Wolfe",
    "Wong",
    "Wood",
    "Woodard",
    "Woods",
    "Woodward",
    "Wooten",
    "Workman",
    "Wright",
    "Wyatt",
    "Wynn",
    "Xavier",
    "Xiong",
    "Yang",
    "Yates",
    "York",
    "Young",
    "Zamora",
    "Zimmer",
    "Zimmerman"
    )

# Array to define the list of locations
$LocationsArray = @(
    "Abilene, TX",
    "Acton, MA",
    "Akron, OH",
    "Albuquerque, NM",
    "Alexandria, VA",
    "Alhambra, CA",
    "Allen, TX",
    "Allentown, PA",
    "Amarillo, TX",
    "Amesbury, MA",
    "Anaheim, CA",
    "Anchorage, AK",
    "Andover, MA",
    "Ann Arbor, MI",
    "Antioch, CA",
    "Arlington, MA",
    "Arlington, TX",
    "Arvada, CO",
    "Athens, GA",
    "Atlanta, GA",
    "Augusta, GA",
    "Aurora, CO",
    "Aurora, IL",
    "Austin, TX",
    "Ayer, MA",
    "Bakersfield, CA",
    "Baltimore, MD",
    "Baton Rouge, LA",
    "Beaumont, TX",
    "Bedford, MA",
    "Bellevue, WA",
    "Belmont, MA",
    "Bend, OR",
    "Berkeley, CA",
    "Beverly, MA",
    "Billerica, MA",
    "Billings, MT",
    "Birmingham, AL",
    "Bloomington, IL",
    "Boise, ID",
    "Boston, MA",
    "Boulder, CO",
    "Boxborough, MA",
    "Bridgeport, CT",
    "Brockton, MA",
    "Broken Arrow, OK",
    "Brookline, MA",
    "Brownsville, TX",
    "Buffalo, NY",
    "Burbank, CA",
    "Burlington, MA",
    "Cambridge, MA",
    "Cape Coral, FL",
    "Carlisle, MA",
    "Carlsbad, CA",
    "Carmel, IN",
    "Carrollton, TX",
    "Cary, NC",
    "Cedar Rapids, IA",
    "Centennial, CO",
    "Chandler, AZ",
    "Charleston, SC",
    "Charlotte, NC",
    "Chattanooga, TN",
    "Chelmsford, MA",
    "Chelsea, MA",
    "Chesapeake, VA",
    "Chicago, IL",
    "Chico, CA",
    "Chino Hills, CA",
    "Chino, CA",
    "Chula Vista, CA",
    "Cincinnati, OH",
    "Citrus Heights, CA",
    "Clarksville, TN",
    "Clearwater, FL",
    "Cleveland, OH",
    "Clinton, MI",
    "College Station, TX",
    "Colorado Springs, CO",
    "Columbia, MO",
    "Columbia, SC",
    "Columbus, OH",
    "Concord, CA",
    "Concord, MA",
    "Coral Springs, FL",
    "Corona, CA",
    "Corpus Christi, TX",
    "Costa Mesa, CA",
    "Dallas, TX",
    "Daly City, CA",
    "Davenport, IA",
    "Davie, FL",
    "Dayton, OH",
    "Denton, TX",
    "Denver, CO",
    "Des Moines, IA",
    "Detroit, MI",
    "Downey, CA",
    "Dracut, MA",
    "Durham, NC",
    "Edinburg, TX",
    "El Cajon, CA",
    "El Monte, CA",
    "El Paso, TX",
    "Elgin, IL",
    "Elizabeth, NJ",
    "Elk Grove, CA",
    "Escondido, CA",
    "Eugene, OR",
    "Evansville, IN",
    "Everett, MA",
    "Everett, WA",
    "Fairfield, CA",
    "Fall River, MA",
    "Fargo, ND",
    "Fayetteville, NC",
    "Fishers, IN",
    "Fontana, CA",
    "Fort Collins, CO",
    "Fort Lauderdale, FL",
    "Fort Wayne, IN",
    "Fort Worth, TX",
    "Fremont, CA",
    "Fresno, CA",
    "Frisco, TX",
    "Fullerton, CA",
    "Gainesville, FL",
    "Garden Grove, CA",
    "Garland, TX",
    "Gilbert, AZ",
    "Glendale, AZ",
    "Glendale, CA",
    "Gloucester, MA",
    "Grand Prairie, TX",
    "Grand Rapids, MI",
    "Greeley, CO",
    "Green Bay, WI",
    "Greensboro, NC",
    "Gresham, OR",
    "Groton, MA",
    "Hampton, VA",
    "Hartford, CT",
    "Harvard, MA",
    "Haverhill, MA",
    "Hayward, CA",
    "Hemet, CA",
    "Henderson, NV",
    "Hesperia, CA",
    "Hialeah, FL",
    "High Point, NC",
    "Hillsboro, OR",
    "Hollywood, FL",
    "Honolulu, HI",
    "Houston, TX",
    "Huntington Beach, CA",
    "Huntsville, AL",
    "Independence, MO",
    "Indianapolis, IN",
    "Inglewood, CA",
    "Irvine, CA",
    "Irving, TX",
    "Jackson, MS",
    "Jacksonville, FL",
    "Jersey City, NJ",
    "Joliet, IL",
    "Jurupa Valley, CA",
    "Kansas City, KS",
    "Kansas City, MO",
    "Kent, WA",
    "Killeen, TX",
    "Knoxville, TN",
    "Lafayette, LA",
    "Lakeland, FL",
    "Lakewood, CO",
    "Lakewood, NJ",
    "Lancaster, CA",
    "Lansing, MI",
    "Laredo, TX",
    "Las Cruces, NM",
    "Las Vegas, NV",
    "Lawrence, MA",
    "League City, TX",
    "Lewisville, TX",
    "Lexington, KY",
    "Lexington, MA",
    "Lincoln, NE",
    "Little Rock, AR",
    "Littleton, MA",
    "Long Beach, CA",
    "Los Angeles, CA",
    "Louisville, KY",
    "Lowell, MA",
    "Lubbock, TX",
    "Lynn, MA",
    "Macon, GA",
    "Madison, WI",
    "Malden, MA",
    "Manchester, NH",
    "McAllen, TX",
    "McKinney, TX",
    "Medford, MA",
    "Melrose, MA",
    "Memphis, TN",
    "Menifee, CA",
    "Meridian, ID",
    "Mesa, AZ",
    "Mesquite, TX",
    "Methuen, MA",
    "Miami Gardens, FL",
    "Miami, FL",
    "Midland, TX",
    "Milwaukee, WI",
    "Minneapolis, MN",
    "Miramar, FL",
    "Mobile, AL",
    "Modesto, CA",
    "Montgomery, AL",
    "Moreno Valley, CA",
    "Murfreesboro, TN",
    "Murrieta, CA",
    "Nampa, ID",
    "Naperville, IL",
    "Nashville, TN",
    "New Bedford, MA",
    "New Haven, CT",
    "New Orleans, LA",
    "New York, NY",
    "Newark, NJ",
    "Newburyport, MA",
    "Newport News, VA",
    "Newton, MA",
    "Norfolk, VA",
    "Norman, OK",
    "North Andover, MA",
    "North Las Vegas, NV",
    "North Reading, MA",
    "Norwalk, CA",
    "Oakland, CA",
    "Oceanside, CA",
    "Odessa, TX",
    "Oklahoma City, OK",
    "Olathe, KS",
    "Omaha, NE",
    "Ontario, CA",
    "Orange, CA",
    "Orlando, FL",
    "Overland Park, KS",
    "Oxnard, CA",
    "Palm Bay, FL",
    "Palmdale, CA",
    "Pasadena, CA",
    "Pasadena, TX",
    "Paterson, NJ",
    "Peabody, MA",
    "Pearland, TX",
    "Pembroke Pines, FL",
    "Peoria, AZ",
    "Peoria, IL",
    "Pepperell, MA",
    "Philadelphia, PA",
    "Phoenix, AZ",
    "Pittsburgh, PA",
    "Plano, TX",
    "Pomona, CA",
    "Pompano Beach, FL",
    "Port St. Lucie, FL",
    "Portland, OR",
    "Providence, RI",
    "Provo, UT",
    "Pueblo, CO",
    "Quincy, MA",
    "Raleigh, NC",
    "Rancho Cucamonga, CA",
    "Reading, MA",
    "Redding, CA",
    "Reno, NV",
    "Renton, WA",
    "Revere, MA",
    "Rialto, CA",
    "Richardson, TX",
    "Richmond, CA",
    "Richmond, VA",
    "Riverside, CA",
    "Rochester, MN",
    "Rochester, NY",
    "Rockford, IL",
    "Roseville, CA",
    "Round Rock, TX",
    "Sacramento, CA",
    "Saint Paul, MN",
    "Salem, MA",
    "Salem, OR",
    "Salinas, CA",
    "Salt Lake City, UT",
    "San Angelo, TX",
    "San Antonio, TX",
    "San Bernardino, CA",
    "San Diego, CA",
    "San Francisco, CA",
    "San Jose, CA",
    "San Marcos, CA",
    "San Mateo, CA",
    "Sandy Springs, GA",
    "Santa Ana, CA",
    "Santa Clara, CA",
    "Santa Clarita, CA",
    "Santa Maria, CA",
    "Santa Rosa, CA",
    "Savannah, GA",
    "Scottsdale, AZ",
    "Seattle, WA",
    "Shirley, MA",
    "Shreveport, LA",
    "Simi Valley, CA",
    "Sioux Falls, SD",
    "Somerville, MA",
    "South Bend, IN",
    "Sparks, NV",
    "Spokane Valley, WA",
    "Spokane, WA",
    "Springfield, IL",
    "Springfield, MA",
    "Springfield, MO",
    "St. Louis, MO",
    "St. Petersburg, FL",
    "Stamford, CT",
    "Sterling Heights, MI",
    "Stockton, CA",
    "Stoneham, MA",
    "Sugar Land, TX",
    "Sunnyvale, CA",
    "Surprise, AZ",
    "Syracuse, NY",
    "Tacoma, WA",
    "Tallahassee, FL",
    "Tampa, FL",
    "Temecula, CA",
    "Tempe, AZ",
    "Tewksbury, MA",
    "Thornton, CO",
    "Thousand Oaks, CA",
    "Toledo, OH",
    "Topeka, KS",
    "Torrance, CA",
    "Tucson, AZ",
    "Tulsa, OK",
    "Tuscaloosa, AL",
    "Tyler, TX",
    "Tyngsborough, MA",
    "Vacaville, CA",
    "Vallejo, CA",
    "Vancouver, WA",
    "Ventura, CA",
    "Victorville, CA",
    "Virginia Beach, VA",
    "Visalia, CA",
    "Vista, CA",
    "Waco, TX",
    "Wakefield, MA",
    "Waltham, MA",
    "Warren, MI",
    "Washington, DC",
    "Waterbury, CT",
    "Watertown, MA",
    "West Covina, CA",
    "West Jordan, UT",
    "West Palm Beach, FL",
    "West Valley City, UT",
    "Westford, MA",
    "Westminster, CO",
    "Wichita Falls, TX",
    "Wichita, KS",
    "Wilmington, MA",
    "Wilmington, NC",
    "Winchester, MA",
    "Winston-Salem, NC",
    "Woburn, MA",
    "Woodbridge, NJ",
    "Worcester, MA",
    "Yonkers, NY"
    )

# Retrieve random items from the arrays
$RandomMaleFirstName = Get-Random $MaleFirstNamesArray
$RandomFemaleFirstName = Get-Random $FemaleFirstNamesArray
$RandomLastName = Get-Random $LastNamesArray
$RandomLocation = Get-Random $LocationsArray

# Function to prompt the user to input a gender (only male or female, not out of insensitivity but for simplicity) and validate the input
Function Get-ValidGender {
    While ($True) {
        $InputGender = Read-Host `n"Enter a gender of male or female"
        # Normalize the input to lowercase
        $NormalizedGender = $InputGender.ToLower()
        # Validate the user input for gender
        If ($NormalizedGender -eq "male" -or $NormalizedGender -eq "m" -or $NormalizedGender -eq "female" -or $NormalizedGender -eq "f") {
            Return $NormalizedGender
        } Else {
            Write-Host `n"Please enter male or female (not out of insensitivity, but for the simplicity of this script)"
        }
    }
}

# Prompts the user to enter an age in years and validates the input
Function Get-ValidAge {
    $CurrentYear = (Get-Date).Year
    $MaxAge = $CurrentYear - 1
    While ($True) {
        $InputAge = Read-Host `n"Enter an age in years"
        # Checks if the input is a number and within the valid range
        If ($InputAge -match '^\d+$' -and [int]$InputAge -ge 0 -and [int]$InputAge -le $MaxAge) {
            Return [int]$InputAge
        } Else {
            Write-Host `n"Please enter a valid age (no negative numbers and no higher than the current year minus 1)"
        }
    }
}

# Get valid inputs from the user
$InputGender = Get-ValidGender
$InputAge = Get-ValidAge

# Calculates the birth year range
$CurrentDate = Get-Date
$BirthYearStart = $CurrentDate.Year - $InputAge - 1
$BirthYearEnd = $CurrentDate.Year - $InputAge

# Generates a random date within the birth year range
$RandomPlaceholder = New-Object System.Random
$RandomYear = $RandomPlaceholder.Next($BirthYearStart, $BirthYearEnd + 1)
$RandomMonth = $RandomPlaceholder.Next(1, 13)
$RandomDay = $RandomPlaceholder.Next(1, [DateTime]::DaysInMonth($RandomYear, $RandomMonth) + 1)

# Creates the random date and formats it to exclude the timestamp
$RandomDoBWithTimestamp = Get-Date -Year $RandomYear -Month $RandomMonth -Day $RandomDay
$RandomDoB = $RandomDoBWithTimestamp.ToString("MM/dd/yyyy")

# Conclusion message
If ($InputGender -eq "male" -or $InputGender -eq "m") {
    $RandomIdentity = "Your random identity is $RandomMaleFirstName $RandomLastName from $RandomLocation born on $RandomDoB"
    $RandomIdentity | Set-Clipboard
    Write-Host `n$RandomIdentity
    Write-Host `n"Your random identity has been copied to the clipboard"`n
    Pause
} ElseIf ($InputGender -eq "female" -or $InputGender -eq "f") {
    $RandomIdentity = "Your random identity is $RandomFemaleFirstName $RandomLastName from $RandomLocation born on $RandomDoB"
    $RandomIdentity | Set-Clipboard
    Write-Host `n$RandomIdentity
    Write-Host `n"Your random identity has been copied to the clipboard"`n
    Pause
}