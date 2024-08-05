

class DummyDb{
  static List <Map> category = [
    {
      "image":"assets/images/football.png",
      "name":"Football",
      "questionCount":5,
    },
    {
      "image":"assets/images/flutter.png",
      "name":"Flutter",
       "questionCount":8,
    },
    {
      "image":"assets/images/science.png",
      "name":"Science",
       "questionCount":10,
      
    },
    {
      "image":"assets/images/english.png",
      "name":"English",
       "questionCount":5,
    }
  ];
   static const List<List<Map>> questions= [
    [
    //football questions
    {
      "question": "Which country won the FIFA World Cup in 2018?",
      "options": ["Brazil", "Germany", "France", "Argentina"],
      "answerIndex": 2
    },
    {
      "question": "Who is known as the 'King of Football'?",
      "options": ["Diego Maradona", "Cristiano Ronaldo", "Lionel Messi", "Pelé"],
      "answerIndex": 3
    },
    {
      "question": "Which club has won the most UEFA Champions League titles?",
      "options": ["Barcelona", "Liverpool", "Real Madrid", "Bayern Munich"],
      "answerIndex": 2
    },
    {
      "question": "What is the maximum number of players allowed on the field for one team?",
      "options": ["10", "11", "12", "13"],
      "answerIndex": 1
    },
    {
      "question": "Who is the all-time top scorer for the Argentina national team?",
      "options": ["Diego Maradona", "Gabriel Batistuta", "Lionel Messi", "Sergio Agüero"],
      "answerIndex": 2
    },
    ],
    [
      //flutter questions
      {
      "question": "What is Flutter?",
      "options": ["A web development framework", "A mobile app SDK", "A programming language", "A database system"],
      "answerIndex": 1
    },
    {
      "question": "Which language is used to write Flutter apps?",
      "options": ["Java", "Kotlin", "Dart", "Swift"],
      "answerIndex": 2
    },
    {
      "question": "Which widget is used to create an immutable container in Flutter?",
      "options": ["Container", "StatelessWidget", "StatefulWidget", "Scaffold"],
      "answerIndex": 1
    },
    {
      "question": "What is the use of the 'pubspec.yaml' file in Flutter?",
      "options": ["To define app dependencies", "To set the app's theme", "To write the app's main logic", "To configure the app's database"],
      "answerIndex": 0
    },
    {
      "question": "How do you run a Flutter app in debug mode?",
      "options": ["flutter debug", "flutter run --debug", "flutter run", "flutter start --debug"],
      "answerIndex": 2
    },
     {
    "question": "Which tool can be used to check Flutter app performance?",
    "options": ["Dart Analyzer", "Flutter Doctor", "DevTools", "Xcode"],
    "answerIndex": 2
  },
  {
    "question": "What does 'hot reload' do in Flutter?",
    "options": ["Restart the app", "Save changes and rebuild", "Refresh the app UI", "Only update code without restart"],
    "answerIndex": 2
  },
  {
    "question": "Which of the following is a layout widget in Flutter?",
    "options": ["AppBar", "Scaffold", "Column", "Text"],
    "answerIndex": 2
  },
  
    ],
    //sciece questions
    [
    {
      "question": "What is the chemical symbol for water?",
      "options": ["H2O", "O2", "CO2", "NaCl"],
      "answerIndex": 0
    },
    {
      "question": "What planet is known as the Red Planet?",
      "options": ["Earth", "Mars", "Jupiter", "Venus"],
      "answerIndex": 1
    },
    {
      "question": "What is the speed of light?",
      "options": ["300,000 km/s", "150,000 km/s", "1,000 km/s", "3,000 km/s"],
      "answerIndex": 0
    },
    {
      "question": "Who proposed the theory of relativity?",
      "options": ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Niels Bohr"],
      "answerIndex": 2
    },
    {
      "question": "What is the most abundant gas in the Earth's atmosphere?",
      "options": ["Oxygen", "Hydrogen", "Carbon Dioxide", "Nitrogen"],
      "answerIndex": 3
    },
    {
      "question": "What is the chemical symbol for gold?",
      "options": ["Au", "Ag", "Pb", "Fe"],
      "answerIndex": 0
    },
    {
      "question": "What is the process by which plants make their food?",
      "options": ["Photosynthesis", "Respiration", "Transpiration", "Fermentation"],
      "answerIndex": 0
    },
    {
      "question": "What is the powerhouse of the cell?",
      "options": ["Nucleus", "Mitochondria", "Ribosome", "Golgi Apparatus"],
      "answerIndex": 1
    },
    {
      "question": "What is the main gas found in the air we breathe?",
      "options": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      "answerIndex": 2
    },
    {
      "question": "What is the chemical formula for table salt?",
      "options": ["HCl", "NaCl", "KCl", "CaCl2"],
      "answerIndex": 1
    }
   ],
   //englsih questions
   [
    {
    "question": "Which word is a noun?",
    "options": ["Run", "Happy", "Cat", "Quickly"],
    "answerIndex": 2
  },
  {
    "question": "Which word is a verb?",
    "options": ["Table", "Eat", "Beautiful", "Blue"],
    "answerIndex": 1
  },
  {
    "question": "Which word is an adjective?",
    "options": ["Jump", "Apple", "Bright", "Swiftly"],
    "answerIndex": 2
  },
  {
    "question": "What is the plural form of 'child'?",
    "options": ["Childs", "Children", "Childes", "Childrens"],
    "answerIndex": 1
  },
  {
    "question": "Which word is an adverb?",
    "options": ["Slowly", "Tree", "Sing", "Beautiful"],
    "answerIndex": 0
  },
  
   ]
   ];
}