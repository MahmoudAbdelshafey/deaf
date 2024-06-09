class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

class Questions {
  final List<Answer> answersList;
  final String imagePath;

  const Questions({required this.answersList, required this.imagePath});
}

Map<String, dynamic> animalsQuestions = {
  "data": [
    {
      'Answers': [
        Answer("Aligator", false),
        Answer("Animal", true),
        Answer("Ant", false),
        Answer("Bear", false),
      ],
      "Question_Picture": 'images/animal.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Bird", false),
        Answer("Bee", false),
        Answer("Bear", true),
        Answer("Butterfly", false),
      ],
      "Question_Picture": 'images/bear.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Cat", true),
        Answer("Chicken", false),
        Answer("Cow", false),
        Answer("Crab", false),
      ],
      "Question_Picture": 'images/cat.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("True", true),
        Answer("False", false),
      ],
      "Question_Picture": 'images/dog.jpg',
      "Question": "Dog ?"
    },
    {
      'Answers': [
        Answer("Gorilla", false),
        Answer("Goat", false),
        Answer("Fish", false),
        Answer("Elephant ", true),
      ],
      "Question_Picture": 'images/elephant.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Giraffe", true),
        Answer("Goat", false),
        Answer("Gorilla", false),
        Answer("Hippo ", false),
      ],
      "Question_Picture": 'images/giraffe.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Lion", false),
        Answer("Jelly fish", false),
        Answer("Horse", true),
        Answer("Lobster", false),
      ],
      "Question_Picture": 'images/horse.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Monkey", false),
        Answer("Octopus", true),
        Answer("Panda", false),
        Answer("Pig", false),
      ],
      "Question_Picture": 'images/octopus.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Rabit", true),
        Answer("Rat", false),
        Answer("Shark", false),
        Answer("Sheep", false),
      ],
      "Question_Picture": 'images/rabbit.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Zebra", true),
        Answer("Spider", false),
        Answer("Shrimp", false),
        Answer("whale", false),
      ],
      "Question_Picture": 'images/zebra.jpg',
      "Question": ""
    },
  ],
};

Map<String, dynamic> chatQuestions = {
  "data": [
    {
      'Answers': [
        Answer("Becareful", true),
        Answer("Bye", false),
        Answer("Bye-bye", false),
        Answer("Chat", false),
      ],
      "Question_Picture": 'images/becareful.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Bye", false),
        Answer("Chat", true),
        Answer("Don't hit", false),
        Answer("Don't like", false),
      ],
      "Question_Picture": 'images/chat.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Hi", false),
        Answer("Hello", false),
        Answer("Don't like", true),
        Answer("See you later", false),
      ],
      "Question_Picture": 'images/dont_like.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("True", true),
        Answer("False", false),
      ],
      "Question_Picture": 'images/good.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("type", false),
        Answer("Thank you", false),
        Answer("Smell", false),
        Answer("Talk ", true),
      ],
      "Question_Picture": 'images/talk.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Listen", false),
        Answer("Read", false),
        Answer("Bye-bye", false),
        Answer("Sorry ", true),
      ],
      "Question_Picture": 'images/sorry.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Spell", true),
        Answer("Good bye", false),
        Answer("Bad", false),
        Answer("Hello", false),
      ],
      "Question_Picture": 'images/spell.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Eat", false),
        Answer("Look", false),
        Answer("Listen", true),
        Answer("Wait", false),
      ],
      "Question_Picture": 'images/listen.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Thank you", false),
        Answer("Read", true),
        Answer("Thanks giving", false),
        Answer("You are welcome ", false),
      ],
      "Question_Picture": 'images/read.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("You are welcome", true),
        Answer("You are not welcome", false),
        Answer("You are good", false),
        Answer("You are bad ", false),
      ],
      "Question_Picture": 'images/youAreWelcome.jpg',
      "Question": ""
    },
  ],
};

Map<String, dynamic> clothesQuestions = {
  "data": [
    {
      'Answers': [
        Answer("Back pack", false),
        Answer("Bag", false),
        Answer("Belt", true),
        Answer("Boots", false),
      ],
      "Question_Picture": 'images/belt.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Clothes", false),
        Answer("Coat", true),
        Answer("Diaper", false),
        Answer("Dress", false),
      ],
      "Question_Picture": 'images/coat.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Dress up", false),
        Answer("Dress", false),
        Answer("Get dressed", false),
        Answer("Gloves", true),
      ],
      "Question_Picture": 'images/gloves.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("True", true),
        Answer("False", false),
      ],
      "Question_Picture": 'images/hat.jpg',
      "Question": "Hat ?"
    },
    {
      'Answers': [
        Answer("Hat", false),
        Answer("Jacket", false),
        Answer("Shoes", false),
        Answer("Skate ", true),
      ],
      "Question_Picture": 'images/skate.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Mittens", false),
        Answer("Necktie", true),
        Answer("Pajamas", false),
        Answer("Pants ", false),
      ],
      "Question_Picture": 'images/necktie.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Roller skate", true),
        Answer("Sandals", false),
        Answer("Scarf", false),
        Answer("Shirt", false),
      ],
      "Question_Picture": 'images/rollerskate.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Shoes", false),
        Answer("Skate", false),
        Answer("Socks", true),
        Answer("Sweater", false),
      ],
      "Question_Picture": 'images/socks.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Gloves", false),
        Answer("Jacket", true),
        Answer("Bag", false),
        Answer("You are welcome ", false),
      ],
      "Question_Picture": 'images/jacket.jpg',
      "Question": ""
    },
    {
      'Answers': [
        Answer("Sweater", true),
        Answer("Undress", false),
        Answer("Zipper", false),
        Answer("None", false),
      ],
      "Question_Picture": 'images/sweater.jpg',
      "Question": ""
    },
  ],
};



Map<String, dynamic> colorsQuestions = {      
  "data": [
    {
      'Answers':  [
      Answer("Red", false),
      Answer("White", false),
      Answer("Black", true),
      Answer("Yellow", false),
    ],
      "Question_Picture": 'images/black.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Gold", false),
      Answer("Color", true),
      Answer("Pink", false),
      Answer("Green", false),
    ],
      "Question_Picture": 'images/color.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Red", false),
      Answer("Yellow", false),
      Answer("Purple", false),
      Answer("Gold", true),
    ],
      "Question_Picture": 'images/gold.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/green.jpg',
      "Question": "Hat ?"
    },
    {
      'Answers': [
      Answer("Blue", true),
      Answer("Rainbow", false),
      Answer("Red", false),
      Answer("Green", false),
    ],
      "Question_Picture": 'images/blue.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Color", false),
      Answer("White", false),
      Answer("Orange", true),
      Answer("Black", false),
    ],
      "Question_Picture": 'images/orange.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Purple", false),
      Answer("Pink", true),
      Answer("Yellow", false),
      Answer("Red", false),
    ],
      "Question_Picture": 'images/pink.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Yellow", true),
      Answer("Red", false),
      Answer("Green", false),
      Answer("Blue", false),
    ],
      "Question_Picture": 'images/yellow.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Black", false),
      Answer("Purple", true),
      Answer("Rainbow", false),
      Answer("Blue", false),
    ],
      "Question_Picture": 'images/purple.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Pink", false),
      Answer("Green", false),
      Answer("Rainbow", true),
      Answer("Red", false),
    ],
      "Question_Picture": 'images/rainbow.jpg',
      "Question": ""
    },
  ],
};

Map<String, dynamic> daysQuestions = {
  "data": [
    {
      'Answers':   [
      Answer("Sunday", false),
      Answer("Monday", true),
    ],
      "Question_Picture": 'images/sunday.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Monday", false),
      Answer("Tuesday", true),
    ],
      "Question_Picture": 'images/tuesday.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/wednesday.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Thrusday", false),
      Answer("Friday", true),
    ],
      "Question_Picture": 'images/friday.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Week", true),
      Answer("Sunday", false),
    ],
      "Question_Picture": 'images/week.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Friday", false),
      Answer("Week", false),
      Answer("Saturday", true),
      Answer("Monday", false),
    ],
      "Question_Picture": 'images/saturday.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Friday", true),
      Answer("Saturday", false),
      Answer("Sunday", false),
      Answer("Thuesday", false),
    ],
      "Question_Picture": 'images/friday.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Yesterday", false),
      Answer("Tomowrrow", false),
      Answer("After tomowrrow", false),
      Answer("Thursday", true),
    ],
      "Question_Picture": 'images/thursday.jpg',
      "Question": ""
    },
    
  ],
};




Map<String, dynamic> familyQuestions= {
  "data": [
    {
      'Answers':  [
      Answer("Adult", false),
      Answer("Aunt", false),
      Answer("Baby", false),
      Answer("Baby sitter", true),
    ],
      "Question_Picture": 'images/babysitter.jpg',
      "Question": ""
    },
    {
      'Answers':   [
      Answer("Aunt", false),
      Answer("Adult", false),
      Answer("Baby", true),
      Answer("Boy", false),
    ],
      "Question_Picture": 'images/baby.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Boy", true),
      Answer("Brother", false),
      Answer("Children", false),
      Answer("Cousin", false),
    ],
      "Question_Picture": 'images/boy.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/daddy.jpg',
      "Question": "Father ?"
    },
    {
      'Answers':   [
      Answer("Family", false),
      Answer("Friend", false),
      Answer("Grand father", false),
      Answer("Grand mother", true),
    ],
      "Question_Picture": 'images/grandmother.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Boy", false),
      Answer("Girl", false),
      Answer("Man", true),
      Answer("None ", false),
    ],
      "Question_Picture": 'images/man.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Mommy", true),
      Answer("Daddy", false),
      Answer("Mother", false),
      Answer("Father", false),
    ],
      "Question_Picture": 'images/mommy.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Neighborhood", false),
      Answer("Sister", false),
      Answer("Brother", false),
      Answer("Uncle", true),
    ],
      "Question_Picture": 'images/octopus.jpg',
      "Question": ""
    },
     {
      'Answers':[
      Answer("Sister", true),
      Answer("Uncle", false),
      Answer("Wife", false),
      Answer("Woman", false),
    ],
      "Question_Picture": 'images/sister.jpg',
      "Question": ""
    },
     {
      'Answers': [
      Answer("Family", true),
      Answer("Neighborhood", false),
      Answer("Uncle", false),
      Answer("Father", false),
    ],
      "Question_Picture": 'images/family.jpg',
      "Question": ""
    },
    
  ],
};


Map<String, dynamic> foodQuestions= {
  "data": [
    {
      'Answers': [
      Answer("Apple", false),
      Answer("Avocado", true),
      Answer("Banana", false),
      Answer("Bread", false),
    ],
      "Question_Picture": 'images/avocado.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Burger", false),
      Answer("Butter", false),
      Answer("Cake", true),
      Answer("Cereal", false),
    ],
      "Question_Picture": 'images/cake.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Cheese", true),
      Answer("Cherry", false),
      Answer("Chicken", false),
      Answer("Chocolate", false),
    ],
      "Question_Picture": 'images/cherry.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/daddy.jpg',
      "Question": "Food ?"
    },
    {
      'Answers':   [
      Answer("Delicious", false),
      Answer("Dinner", false),
      Answer("Drink", false),
      Answer("Eat ", true),
    ],
      "Question_Picture": 'images/eat.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Egg", true),
      Answer("Flower", false),
      Answer("Hot dog", false),
      Answer("Shrimp", false),
    ],
      "Question_Picture": 'images/egg.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Drink", false),
      Answer("French fries", false),
      Answer("Fruit", true),
      Answer("Grapes", false),
    ],
      "Question_Picture": 'images/fruit.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Hot dog", false),
      Answer("Honey", true),
      Answer("Ice cream", false),
      Answer("Juice", false),
    ],
      "Question_Picture": 'images/honey.jpg',
      "Question": ""
    },
     {
      'Answers':[
      Answer("Melon", true),
      Answer("Pasta", false),
      Answer("Salad", false),
      Answer("Plant", false),
    ],
      "Question_Picture": 'images/melon.jpg',
      "Question": ""
    },
     {
      'Answers': [
      Answer("Pear", false),
      Answer("Delicious", true),
      Answer("Shrimp", false),
      Answer("Potato", false),
    ],
      "Question_Picture": 'images/dilicious.jpg',
      "Question": ""
    },
    
  ],
};

Map<String, dynamic> jobsQuestions= {
  "data": [
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/dentist.jpg',
      "Question": "Dentist ?"
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/doctor.jpg',
      "Question": "Doctor ?"
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/job.jpg',
      "Question": "Janitor ?"
    },
    {
      'Answers':[
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/nurse.jpg',
      "Question": "Job ?"
    },
    {
      'Answers':  [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/police.jpg',
      "Question": "Police ?"
    },
    {
      'Answers':[
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/teacher.jpg',
      "Question": "Teacher ?"
    },
    {
      'Answers':[
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/worker.jpg',
      "Question": "Doctor ?"
    },
    {
      'Answers':[
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/farmer.jpg',
      "Question": "Farmer ?"
    },
     {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/worker.jpg',
      "Question": "Engineer ?"
    },
     {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/janitor.jpg',
      "Question": "Janitor ?"
    },
    
  ],
};

Map<String, dynamic> lettersQuestions= {
  "data": [
    {
      'Answers': [
      Answer("A", true),
      Answer("B", false),
      Answer("C", false),
      Answer("D", false),
    ],
      "Question_Picture": 'images/a_q.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("E", false),
      Answer("F", false),
      Answer("G", false),
      Answer("C", true),
    ],
      "Question_Picture": 'images/c_q.png',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Z", false),
      Answer("H", false),
      Answer("D", true),
      Answer("Q", false),
    ],
      "Question_Picture": 'images/d_q.png',
      "Question": ""
    },
    {
      'Answers':[
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/k.jpg',
      "Question": "K ?"
    },
    {
      'Answers':  [
      Answer("R", false),
      Answer("M", true),
      Answer("N", false),
      Answer("I ", false),
    ],
      "Question_Picture": 'images/m_q.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("S", true),
      Answer("P", false),
      Answer("N", false),
      Answer("E ", false),
    ],
      "Question_Picture": 'images/s_q.png',
      "Question": ""
    },
    {
      'Answers':[
      Answer("T", true),
      Answer("F", false),
      Answer("G", false),
      Answer("J ", false),
    ],
      "Question_Picture": 'images/t_q.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("D", false),
      Answer("A", false),
      Answer("U", true),
      Answer("L ", false),
    ],
      "Question_Picture": 'images/u_q.png',
      "Question": ""
    },
     {
      'Answers': [
      Answer("C", false),
      Answer("F", true),
      Answer("Y", false),
      Answer("N ", false),
    ],
      "Question_Picture": 'images/f_q.png',
      "Question": ""
    },
     {
      'Answers': [
      Answer("I", true),
      Answer("Z", false),
      Answer("Y", false),
      Answer("V ", false),
    ],
      "Question_Picture": 'images/i_q.png',
      "Question": ""
    },
    
  ],
};

Map<String, dynamic> numbersQuestions= {
  "data": [
    {
      'Answers': [
      Answer("1", true),
      Answer("2", false),
      Answer("3", false),
      Answer("4", false),
    ],
      "Question_Picture": 'images/1_quiz.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("5", false),
      Answer("6", true),
      Answer("7", false),
      Answer("8", false),
    ],
      "Question_Picture":  'images/6_quiz.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("9", false),
      Answer("10", false),
      Answer("7", true),
      Answer("11", false),
    ],
      "Question_Picture": 'images/7_quiz.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/11_quiz.png',
      "Question": "10 ?"
    },
    {
      'Answers':  [
      Answer("11", false),
      Answer("12", true),
      Answer("13", false),
      Answer("14 ", false),
    ],
      "Question_Picture": 'images/12_quiz.png',
      "Question": ""
    },
    {
      'Answers': [
      Answer("6", false),
      Answer("14", false),
      Answer("8", false),
      Answer("13 ", true),
    ],
      "Question_Picture": 'images/13_quiz.png',
      "Question": ""
    },
    {
      'Answers':[
      Answer("89", false),
      Answer("50", false),
      Answer("20", true),
      Answer("66", false),
    ],
      "Question_Picture": 'images/20_quiz.png',
      "Question": ""
    },
    {
      'Answers':[
      Answer("21", false),
      Answer("23", false),
      Answer("22", true),
      Answer("12", false),
    ],
      "Question_Picture": 'images/22_quiz.png',
      "Question": ""
    },
     {
      'Answers': [
      Answer("44", false),
      Answer("23", true),
      Answer("43", false),
      Answer("53 ", false),
    ],
      "Question_Picture":  'images/23_quiz.png',
      "Question": ""
    },
     {
      'Answers': [
      Answer("28", true),
      Answer("35", false),
      Answer("26", false),
      Answer("39 ", false),
    ],
      "Question_Picture": 'images/28_quiz.png',
      "Question": ""
    },
    
  ],
};



Map<String, dynamic> placesQuestions= {
  "data": [
    {
      'Answers': [
      Answer("Bath", false),
      Answer("Basement", true),
      Answer("Cup board", false),
      Answer("Dining room", false),
    ],
      "Question_Picture": 'images/basement.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Down stairs", false),
      Answer("Garage", false),
      Answer("Garden", true),
      Answer("Home", false),
    ],
      "Question_Picture":   'images/garden.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Hospital", true),
      Answer("House", false),
      Answer("library", false),
      Answer("Magazine", false),
    ],
      "Question_Picture":   'images/hospital.jpg',
      "Question": ""
    },
    {
      'Answers': [
      Answer("Hospital", true),
      Answer("House", false),
      Answer("library", false),
      Answer("Magazine", false),
    ],
      "Question_Picture":  'images/hospital.jpg',
      "Question": "10 ?"
    },
    {
      'Answers':   [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/hospital.jpg',
      "Question": "Hospital ?"
    },
    {
      'Answers':   [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/mall.jpg',
      "Question": "Mall ?"
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture":  'images/library.jpg',
      "Question": "Restaurant ?"
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/22_quiz.png',
      "Question": "Roof ?"
    },
     {
      'Answers':  [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture":  'images/shower.jpg',
      "Question": "Shower ?"
    },
     {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/toilet.jpg',
      "Question": "Store ?"
    },
    
  ],
};

Map<String, dynamic> questionsQuestions= {
  "data": [
    {
      'Answers':  [
      Answer("Ask", false),
      Answer("Dont", false),
      Answer("Dont hit", true),
      Answer("Why", false),
    ],
      "Question_Picture": 'images/dont_hit.jpg',
      "Question": ""
    },
    {
      'Answers':    [
      Answer("Dont want", false),
      Answer("Dont like", true),
      Answer("Dont hit", false),
      Answer("Excuse me", false),
    ],
      "Question_Picture":    'images/dont_like.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Dont want", true),
      Answer("Excuse me", false),
      Answer("How", false),
      Answer("Why", false),
    ],
      "Question_Picture":  'images/dont_want.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture":  'images/ask.jpg',
      "Question": "Ask ?"
    },
    {
      'Answers':   [
      Answer("How", false),
      Answer("How many", false),
      Answer("How comes", false),
      Answer("How much", true),
    ],
      "Question_Picture": 'images/how_much.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("Does", false),
      Answer("please", false),
      Answer("Question", true),
      Answer("None ", false),
    ],
      "Question_Picture": 'images/question.jpg',
      "Question": ""
    },
    {
      'Answers':  [
      Answer("What", true),
      Answer("When", false),
      Answer("Where", false),
      Answer("Why", false),
    ],
      "Question_Picture":   'images/what.jpg',
      "Question": ""
    },
    {
      'Answers':[
      Answer("Who", false),
      Answer("Why", false),
      Answer("How", false),
      Answer("Please", true),
    ],
      "Question_Picture":  'images/please.jpg',
      "Question": ""
    },
     {
      'Answers':   [
      Answer("Ask", false),
      Answer("Dont know", true),
      Answer("When", false),
      Answer("None", false),
    ],
      "Question_Picture":   'images/dont_know.jpg',
      "Question": ""
    },
     {
      'Answers':  [
      Answer("Who", true),
      Answer("Does", false),
      Answer("How", false),
      Answer("where", false),
    ],
      "Question_Picture":  'images/who.jpg',
      "Question": ""
    },
    
  ],
};

Map<String, dynamic> weatherQuestions= {
  "data": [
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture":  'images/cloud.jpg',
      "Question": "Cloud ?"
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/cold.jpg',
      "Question": "Cold ?"
    },
    {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/cool.jpg',
      "Question": "Dry ?"
    },
    {
      'Answers':  [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/hot.jpg',
      "Question": "Cold ?"
    },
    {
      'Answers': [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture": 'images/hot.jpg',
      "Question": "Hot ?"
    },
    {
      'Answers':  [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture":   'images/rain.jpg',
      "Question": "Rain ?"
    },
    {
      'Answers':[
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/season.jpg',
      "Question": "Winter ?"
    },
    
     {
      'Answers': [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture": 'images/snow.jpg',
      "Question": "Snow ?"
    },
     {
      'Answers':  [
      Answer("True", false),
      Answer("False", true),
    ],
      "Question_Picture":  'images/sun.jpg',
      "Question": "Moon ?"
    },
    {
      'Answers':   [
      Answer("True", true),
      Answer("False", false),
    ],
      "Question_Picture":  'images/weather.jpg',
      "Question": "Weather ?"
    },
    
  ],
};













// 