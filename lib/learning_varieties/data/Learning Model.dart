import 'package:first_project/quizzes/data/Quizes%20Model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class itemModel {
  final String title;
  final String image;
  final IconData modelIcon;
  final String itemUrl;

  const itemModel(
      {required this.title,
      required this.image,
      required this.itemUrl,
      this.modelIcon = FontAwesomeIcons.youtube});
}

final Map<String, dynamic> animalsData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/animals.jpg',
  'questions': animalsQuestions,
  'itemList': [
    const itemModel(
        title: "Animal",
        image: "images/animal.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ZfrpbP-_02U"),
    const itemModel(
        title: "Alligator",
        image: "images/alligator.jpg",
        itemUrl: "https://www.youtube.com/watch?v=WgPgUctJOU8"),
    const itemModel(
        title: "Ant",
        image: "images/ant.jpg",
        itemUrl: "https://www.youtube.com/watch?v=GW3lyds5H30"),
    const itemModel(
        title: "Bear",
        image: "images/bear.jpg",
        itemUrl: "https://www.youtube.com/watch?v=2WRtcIwnxyg"),
    const itemModel(
        title: "Bee",
        image: "images/bee.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zMUJUw_TqTc"),
    const itemModel(
        title: "bird",
        image: "images/bird.jpg",
        itemUrl: "https://www.youtube.com/watch?v=CG4XHxIM6tw"),
    const itemModel(
        title: "Butterfly",
        image: "images/butterfly.jpg",
        itemUrl: "https://www.youtube.com/watch?v=oAvWc4Op9q4"),
    const itemModel(
        title: "cat",
        image: "images/cat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=QVTPOg_o5ng"),
    const itemModel(
        title: "Chicken",
        image: "images/chicken.jpg",
        itemUrl: "https://www.youtube.com/watch?v=icxqAxcuDqM"),
    const itemModel(
        title: "Cow",
        image: "images/cow.jpg",
        itemUrl: "https://www.youtube.com/watch?v=pfudFDms9Xg"),
    const itemModel(
        title: "Crab",
        image: "images/crab.jpg",
        itemUrl: "https://www.youtube.com/watch?v=HINIpzab7Ms"),
    const itemModel(
        title: "Dog",
        image: "images/dog.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0EKiH2dtKxg"),
    const itemModel(
        title: "dolphin",
        image: "images/dolphin.jpg",
        itemUrl: "https://www.youtube.com/watch?v=yUqk8lkhFDw"),
    const itemModel(
        title: "elephant",
        image: "images/duck.jpg",
        itemUrl: "https://www.youtube.com/watch?v=CosZoZX-VQA"),
    const itemModel(
        title: "Crab",
        image: "images/elephant.jpg",
        itemUrl: "https://www.youtube.com/watch?v=laUp1EwI3DE"),
    const itemModel(
        title: "giraffe",
        image: "images/fish.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ZwZe2JRqcRQ"),
    const itemModel(
        title: "giraffe",
        image: "images/giraffe.jpg",
        itemUrl: "https://www.youtube.com/watch?v=orRU3Ijv_mE"),
    const itemModel(
        title: "goat",
        image: "images/goat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=FXtPw9K3JMU"),
    const itemModel(
        title: "gorilla",
        image: "images/gorilla.jpg",
        itemUrl: "https://www.youtube.com/watch?v=851Tv4oQlW8"),
    const itemModel(
        title: "hippo",
        image: "images/hippo.jpg",
        itemUrl: "https://www.youtube.com/watch?v=580WmfhiBxs"),
    const itemModel(
        title: "horse",
        image: "images/horse.jpg",
        itemUrl: "https://www.youtube.com/watch?v=g4dsOy42ilg"),
    const itemModel(
        title: "jellyfish",
        image: "images/jellyfish.jpg",
        itemUrl: "https://www.youtube.com/watch?v=860sxxclaVw"),
    const itemModel(
        title: "lion",
        image: "images/lion.jpg",
        itemUrl: "https://www.youtube.com/watch?v=OqmyP6PMkpY"),
    const itemModel(
        title: "llama",
        image: "images/llama.jpg",
        itemUrl: "https://www.youtube.com/watch?v=vy2KPf-z2NU"),
    const itemModel(
        title: "lobster",
        image: "images/lobster.jpg",
        itemUrl: "https://www.youtube.com/watch?v=PRb2p5WEwSg"),
    const itemModel(
        title: "monkey",
        image: "images/monkey.jpg",
        itemUrl: "https://www.youtube.com/watch?v=tmNGIT9R4PM"),
    const itemModel(
        title: "dolphin",
        image: "images/dolphin.jpg",
        itemUrl: "https://www.youtube.com/watch?v=vwUotY3AVss"),
    const itemModel(
        title: "panda",
        image: "images/panda.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zRy7DnaybHk"),
    const itemModel(
        title: "pig",
        image: "images/pig.jpg",
        itemUrl: "https://www.youtube.com/watch?v=MiMY9DL6kHs"),
    const itemModel(
        title: "rabbit",
        image: "images/rabbit.jpg",
        itemUrl: "https://www.youtube.com/watch?v=jUxZf6eliRA"),
    const itemModel(
        title: "rat",
        image: "images/rat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=UC-5Akta_Ug"),
    const itemModel(
        title: "shark",
        image: "images/shark.jpg",
        itemUrl: "https://www.youtube.com/watch?v=OmDbK20El38"),
    const itemModel(
        title: "sheep",
        image: "images/sheep.jpg",
        itemUrl: "https://www.youtube.com/watch?v=MUHD55E_6R4"),
    const itemModel(
        title: "spider",
        image: "images/spider.jpg",
        itemUrl: "https://www.youtube.com/watch?v=NaH0oWh-6sg"),
    const itemModel(
        title: "tiger",
        image: "images/tiger.jpg",
        itemUrl: "https://www.youtube.com/watch?v=GN8FiztigNo"),
    const itemModel(
        title: "whale",
        image: "images/whale.jpg",
        itemUrl: "https://www.youtube.com/watch?v=wsHTFpU3Hwg"),
    const itemModel(
        title: "zebra",
        image: "images/zebra.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qjyCi7RfCAo"),
    const itemModel(
        title: "zoo",
        image: "images/zoo.jpg",
        itemUrl: "https://www.youtube.com/watch?v=5y73soaU0LY"),
  ]
};

final Map<String, dynamic> chatData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/chats.jpg',
  'questions': chatQuestions,
  'itemList': [
    const itemModel(
        title: "Becareful",
        image: "images/becareful.jpg",
        itemUrl: "https://www.youtube.com/watch?v=t_Ni-jR3lAI"),
    const itemModel(
        title: "Bye",
        image: "images/bye.jpg",
        itemUrl: "https://www.youtube.com/watch?v=RsK8sIWGwro"),
    const itemModel(
        title: "Chat",
        image: "images/chat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Tdxqh_mE_Jk"),
    const itemModel(
        title: "Don't Hit",
        image: "images/dont_hit.jpg",
        itemUrl: "https://www.youtube.com/watch?v=3cD6Ltc2UDU"),
    const itemModel(
        title: "Don't know",
        image: "images/dont_know.jpg",
        itemUrl: "https://www.youtube.com/watch?v=aScNGBwNTGY"),
    const itemModel(
        title: "Don't like",
        image: "images/dont_like.jpg",
        itemUrl: "https://www.youtube.com/watch?v=x-qr1nKAedY"),
    const itemModel(
        title: "Excuse Me",
        image: "images/excuse_me.jpg",
        itemUrl: "https://www.youtube.com/watch?v=EYoEGN6ybhw"),
    const itemModel(
        title: "Good",
        image: "images/good.jpg",
        itemUrl: "https://www.youtube.com/watch?v=4_gXibyFSGI"),
    const itemModel(
        title: "Good Morning",
        image: "images/goodMorning.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VKhecyS1et4"),
    const itemModel(
        title: "Good Night",
        image: "images/goodNight.jpg",
        itemUrl: "https://www.youtube.com/watch?v=NbxNIICCY18"),
    const itemModel(
        title: "Good Bye",
        image: "images/goodbye.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Hbwtcoz_CBA"),
    const itemModel(
        title: "Hello",
        image: "images/hello.jpg",
        itemUrl: "https://www.youtube.com/watch?v=xSYGBpalVTA"),
    const itemModel(
        title: "Listen",
        image: "images/listen.jpg",
        itemUrl: "https://www.youtube.com/watch?v=WyuoXZyB2Dk"),
    const itemModel(
        title: "Read",
        image: "images/read.jpg",
        itemUrl: "https://www.youtube.com/watch?v=aflzq8vR3oI"),
    const itemModel(
        title: "Sorry",
        image: "images/sorry.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0W_Jbl7mxuU"),
    const itemModel(
        title: "Spell",
        image: "images/spell.jpg",
        itemUrl: "https://www.youtube.com/watch?v=FU8NTYyOsWU"),
    const itemModel(
        title: "Talk",
        image: "images/talk.jpg",
        itemUrl: "https://www.youtube.com/watch?v=sMA4TFBPRoI"),
    const itemModel(
        title: "Thank You",
        image: "images/thankYou.jpg",
        itemUrl: "https://www.youtube.com/watch?v=O5Tv5KT1VLs"),
    const itemModel(
        title: "Thanks Giving",
        image: "images/thanksgiving.jpg",
        itemUrl: "https://www.youtube.com/watch?v=C9PndR6G_Mg"),
    const itemModel(
        title: "You Are Welcome",
        image: "images/youAreWelcome.jpg",
        itemUrl: "https://www.youtube.com/watch?v=AT8JoDnRY18")
  ]
};

final Map<String, dynamic> clothesDate = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/clothes_bar.jpg',
  'questions': clothesQuestions,
  'itemList': [
    const itemModel(
        title: "Backpack",
        image: "images/backpack.jpg",
        itemUrl: "https://www.youtube.com/watch?v=QnsYMhJ341k"),
    const itemModel(
        title: "Bag",
        image: "images/bag.jpg",
        itemUrl: "https://www.youtube.com/watch?v=UZ9ZZ9LFxWs"),
    const itemModel(
        title: "Belt",
        image: "images/belt.jpg",
        itemUrl: "https://www.youtube.com/watch?v=E2mv1WlPbDY"),
    const itemModel(
        title: "Boots",
        image: "images/boots.jpg",
        itemUrl: "https://www.youtube.com/watch?v=kpO2PklkOyA"),
    const itemModel(
        title: "Clothes",
        image: "images/clothes.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Wsg0bR9EDL8"),
    const itemModel(
        title: "Coat",
        image: "images/coat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=aYZ9yptNMdE"),
    const itemModel(
        title: "Diaper",
        image: "images/diaper.jpg",
        itemUrl: "https://www.youtube.com/watch?v=9H9v3DnuswE"),
    const itemModel(
        title: "Dress",
        image: "images/dress.jpg",
        itemUrl: "https://www.youtube.com/watch?v=nER6fUYMs04"),
    const itemModel(
        title: "Dress Up",
        image: "images/dress_up.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ukFSlwmvAmw"),
    const itemModel(
        title: "Eye Glasses",
        image: "images/eye_glasses.jpg",
        itemUrl: "https://www.youtube.com/watch?v=FYJAFlxsmwc"),
    const itemModel(
        title: "Get Dressed",
        image: "images/get_dressed.jpg",
        itemUrl: "https://www.youtube.com/watch?v=GZYuxC6r1Jg"),
    const itemModel(
        title: "Gloves",
        image: "images/gloves.jpg",
        itemUrl: "https://www.youtube.com/watch?v=jwJVMoO6-w8"),
    const itemModel(
        title: "Hat",
        image: "images/hat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=LE7GTy2QTfA"),
    const itemModel(
        title: "Jacket",
        image: "images/jacket.jpg",
        itemUrl: "https://www.youtube.com/watch?v=f6r4OEmZV78"),
    const itemModel(
        title: "Mittens",
        image: "images/mittens.jpg",
        itemUrl: "https://www.youtube.com/watch?v=XtBNJIk1leM"),
    const itemModel(
        title: "Necktie",
        image: "images/necktie.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zUbi5pmSfrk"),
    const itemModel(
        title: "Pajamas",
        image: "images/pajamas.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Kuu7keMbyJg"),
    const itemModel(
        title: "Pants",
        image: "images/pants.jpg",
        itemUrl: "https://www.youtube.com/watch?v=5VmK8vlWIJU"),
    const itemModel(
        title: "Roller Skate",
        image: "images/rollerskate.jpg",
        itemUrl: "https://www.youtube.com/watch?v=eVtLDN10LiE"),
    const itemModel(
        title: "Sandals",
        image: "images/sandals.jpg",
        itemUrl: "https://www.youtube.com/watch?v=exeEz1wHgVM"),
    const itemModel(
        title: "Scarf",
        image: "images/scarf.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VaTPurA29AE"),
    const itemModel(
        title: "Shirt",
        image: "images/shirt.jpg",
        itemUrl: "https://www.youtube.com/watch?v=h2Dr9DQOlLg"),
    const itemModel(
        title: "Shoes",
        image: "images/shoes.jpg",
        itemUrl: "https://www.youtube.com/watch?v=k2pxhZlnQT8"),
    const itemModel(
        title: "Skate",
        image: "images/skate.jpg",
        itemUrl: "https://www.youtube.com/watch?v=8XbSQcd6g7w"),
    const itemModel(
        title: "Socks",
        image: "images/socks.jpg",
        itemUrl: "https://www.youtube.com/watch?v=w-kXLFxxzYE"),
    const itemModel(
        title: "Sweater",
        image: "images/sweater.jpg",
        itemUrl: "https://www.youtube.com/watch?v=rjgnE7lCSzU"),
    const itemModel(
        title: "Undress",
        image: "images/undress.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DbpbOpNdxm0"),
    const itemModel(
        title: "Zipper",
        image: "images/zipper.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DbpbOpNdxm0"),
  ]
};

final Map<String, dynamic> colorsDate = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/colors.jpg',
  'questions': colorsQuestions,
  'itemList': [
    const itemModel(
        title: "Black",
        image: "images/black.jpg",
        itemUrl: "https://www.youtube.com/watch?v=70-SD632P8o"),
    const itemModel(
        title: "Blue",
        image: "images/blue.jpg",
        itemUrl: "https://www.youtube.com/watch?v=13aMaeRKbPo"),
    const itemModel(
        title: "Brown",
        image: "images/brown.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ZZvcAJHFq-4"),
    const itemModel(
        title: "Color",
        image: "images/color.jpg",
        itemUrl: "https://www.youtube.com/watch?v=YpQfJNZD8Hc"),
    const itemModel(
        title: "Gold",
        image: "images/gold.jpg",
        itemUrl: "https://www.youtube.com/watch?v=L1Ek1b0hOuw"),
    const itemModel(
        title: "Green",
        image: "images/green.jpg",
        itemUrl: "https://www.youtube.com/watch?v=U4RyAkHGLVc"),
    const itemModel(
        title: "Orange",
        image: "images/orange.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0bajoYDAC9k"),
    const itemModel(
        title: "Pink",
        image: "images/pink.jpg",
        itemUrl: "https://www.youtube.com/watch?v=TAsXzXl_ZDk"),
    const itemModel(
        title: "Purple",
        image: "images/purple.jpg",
        itemUrl: "https://www.youtube.com/watch?v=9b9FOfOqvJc"),
    const itemModel(
        title: "Rainbow",
        image: "images/rainbow.jpg",
        itemUrl: "https://www.youtube.com/watch?v=tmC_l9rcASg"),
    const itemModel(
        title: "Red",
        image: "images/red.jpg",
        itemUrl: "https://www.youtube.com/watch?v=W8wnnuPX3pI"),
    const itemModel(
        title: "White",
        image: "images/white.jpg",
        itemUrl: "https://www.youtube.com/watch?v=e731NsO5_GQ"),
    const itemModel(
        title: "Yellow",
        image: "images/yellow.jpg",
        itemUrl: "https://www.youtube.com/watch?v=dAQjWD9imIQ"),
  ]
};

final Map<String, dynamic> foodDate = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/foods.jpg',
  'questions': foodQuestions,
  'itemList': [
    const itemModel(
        title: "Apple",
        image: "images/apple.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Hup2DdvV2Bc"),
    const itemModel(
        title: "Avocado",
        image: "images/avocado.jpg",
        itemUrl: "https://www.youtube.com/watch?v=js4Uflv8c8w"),
    const itemModel(
        title: "Banana",
        image: "images/banana.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Szb5qbVJVX0"),
    const itemModel(
        title: "Bread",
        image: "images/bread.jpg",
        itemUrl: "https://www.youtube.com/watch?v=_IXe_w-GjxM"),
    const itemModel(
        title: "Burger",
        image: "images/burger.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qzJDLHvll00"),
    const itemModel(
        title: "Butter",
        image: "images/butter.jpg",
        itemUrl: "https://www.youtube.com/watch?v=yISOrqadvr0"),
    const itemModel(
        title: "Cake",
        image: "images/cake.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ic5ElEZASt8"),
    const itemModel(
        title: "Cereal",
        image: "images/cereal.jpg",
        itemUrl: "https://www.youtube.com/watch?v=yBA7PR-imbs"),
    const itemModel(
        title: "Cheese",
        image: "images/cheese.jpg",
        itemUrl: "https://www.youtube.com/watch?v=AzRt3eorNuU"),
    const itemModel(
        title: "Cherry",
        image: "images/cherry.jpg",
        itemUrl: "https://www.youtube.com/watch?v=bV1ISi3ZZOU"),
    const itemModel(
        title: "Chicken",
        image: "images/chicken.jpg",
        itemUrl: "https://www.youtube.com/watch?v=icxqAxcuDqM"),
    const itemModel(
        title: "Chocolate",
        image: "images/chocolate.jpg",
        itemUrl: "https://www.youtube.com/watch?v=krPp9btyu5M"),
    const itemModel(
        title: "Cupcake",
        image: "images/cupcake.jpg",
        itemUrl: "https://www.youtube.com/watch?v=pKkoQDstfN8"),
    const itemModel(
        title: "Delicious",
        image: "images/delicious.jpg",
        itemUrl: "https://www.youtube.com/watch?v=doFRWIppi_s"),
    const itemModel(
        title: "Dinner",
        image: "images/dinner.jpg",
        itemUrl: "https://www.youtube.com/watch?v=rgXwrvVabCM"),
    const itemModel(
        title: "Drink",
        image: "images/drink.jpg",
        itemUrl: "https://www.youtube.com/watch?v=66Lu16dZ9zU"),
    const itemModel(
        title: "Eat",
        image: "images/eat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Z3rvyvZ1Dlk"),
    const itemModel(
        title: "Egg",
        image: "images/egg.jpg",
        itemUrl: "https://www.youtube.com/watch?v=7VoSOmUY4yw"),
    const itemModel(
        title: "Flower",
        image: "images/flower.jpg",
        itemUrl: "https://www.youtube.com/watch?v=PGuaOkHVnno"),
    const itemModel(
        title: "Frensh Fries",
        image: "images/french_fries.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Z1XODsIo44g"),
    const itemModel(
        title: "Fish",
        image: "images/fish.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ZwZe2JRqcRQ"),
    const itemModel(
        title: "Grapes",
        image: "images/grapes.jpg",
        itemUrl: "https://www.youtube.com/watch?v=a7fAOLreNRw"),
    const itemModel(
        title: "Hamburger",
        image: "images/hamburger.jpg",
        itemUrl: "https://www.youtube.com/watch?v=gRl9FhtpMa4"),
    const itemModel(
        title: "Honey",
        image: "images/honey.jpg",
        itemUrl: "https://www.youtube.com/watch?v=gzN8qa7192I"),
    const itemModel(
        title: "Hotdog",
        image: "images/hotdog.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DgbxTfUmDxc"),
    const itemModel(
        title: "Ice Cream",
        image: "images/ice_cream.jpg",
        itemUrl: "https://www.youtube.com/watch?v=4siEsRploZ0"),
    const itemModel(
        title: "Jam",
        image: "images/jam.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qGj6CwJ2mJc"),
    const itemModel(
        title: "Juice",
        image: "images/juice.jpg",
        itemUrl: "https://www.youtube.com/watch?v=hdZ4tWJoRAI"),
    const itemModel(
        title: "Ketchup",
        image: "images/ketchup.jpg",
        itemUrl: "https://www.youtube.com/watch?v=6hzuI5C6Ehs"),
    const itemModel(
        title: "Mayonnaise",
        image: "images/mayonnaise.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0yiwf1hYNww"),
    const itemModel(
        title: "Meat",
        image: "images/meat.jpg",
        itemUrl: "https://www.youtube.com/watch?v=T-JEBJY579A"),
    const itemModel(
        title: "Melon",
        image: "images/melon.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VD-2YimtjJo"),
    const itemModel(
        title: "Orange",
        image: "images/orange.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0bajoYDAC9k"),
    const itemModel(
        title: "Pasta",
        image: "images/pasta.jpg",
        itemUrl: "https://www.youtube.com/watch?v=IkZOItF7z3A"),
    const itemModel(
        title: "Peach",
        image: "images/peach.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qnOoTJSEI7E"),
    const itemModel(
        title: "Peanut Butter",
        image: "images/peanut_butter.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VsD8qmIoPyw"),
    const itemModel(
        title: "Pear",
        image: "images/pear.jpg",
        itemUrl: "https://www.youtube.com/watch?v=tI8d8pKcz5w"),
    const itemModel(
        title: "Pineapple",
        image: "images/pineapple.jpg",
        itemUrl: "https://www.youtube.com/watch?v=kA09ZHbKQ_4"),
    const itemModel(
        title: "Pizza",
        image: "images/pizza.jpg",
        itemUrl: "https://www.youtube.com/watch?v=HMlddx9bcFc"),
    const itemModel(
        title: "Plant",
        image: "images/plant.jpg",
        itemUrl: "https://www.youtube.com/watch?v=4mO0K2vCsdw"),
    const itemModel(
        title: "Potato",
        image: "images/potato.jpg",
        itemUrl: "https://www.youtube.com/watch?v=LF7xPx-4E-g"),
    const itemModel(
        title: "Salad",
        image: "images/salad.jpg",
        itemUrl: "https://www.youtube.com/watch?v=KX4Ke02IsEk"),
    const itemModel(
        title: "Sandwich",
        image: "images/sandwich.jpg",
        itemUrl: "https://www.youtube.com/watch?v=_NM34UNGzhE"),
    const itemModel(
        title: "Sauce",
        image: "images/sauce.jpg",
        itemUrl: "https://www.youtube.com/watch?v=WlaVSq0c0po"),
  ]
};

final Map<String, dynamic> letersData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/letter.jpg',
  'questions': lettersQuestions,
  'itemList': [
    const itemModel(
        title: "",
        image: "images/a.jpg",
        itemUrl: "https://www.youtube.com/watch?v=bsYLoba2CV0"),
    const itemModel(
        title: "",
        image: "images/b.jpg",
        itemUrl: "https://www.youtube.com/watch?v=3A4pdSEmuTE"),
    const itemModel(
        title: "",
        image: "images/c.jpg",
        itemUrl: "https://www.youtube.com/watch?v=dJqoBH9NDOI"),
    const itemModel(
        title: "",
        image: "images/d.jpg",
        itemUrl: "https://www.youtube.com/watch?v=unaicv88lLI"),
    const itemModel(
        title: "",
        image: "images/e.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DuqblObUlxk"),
    const itemModel(
        title: "",
        image: "images/f.jpg",
        itemUrl: "https://www.youtube.com/watch?v=SadgQ0mvY50"),
    const itemModel(
        title: "",
        image: "images/g.jpg",
        itemUrl: "https://www.youtube.com/watch?v=UM8feCdEh2k"),
    const itemModel(
        title: "",
        image: "images/h.jpg",
        itemUrl: "https://www.youtube.com/watch?v=gz6Ux2SWVTc"),
    const itemModel(
        title: "",
        image: "images/i.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Hyfqjm3fFNk"),
    const itemModel(
        title: "",
        image: "images/j.jpg",
        itemUrl: "https://www.youtube.com/watch?v=uvqNhKdoUw0"),
    const itemModel(
        title: "",
        image: "images/k.jpg",
        itemUrl: "https://www.youtube.com/watch?v=9KP2yPZTZ5o"),
    const itemModel(
        title: "",
        image: "images/l.jpg",
        itemUrl: "https://www.youtube.com/watch?v=PUVdWVNCZTk"),
    const itemModel(
        title: "",
        image: "images/m.jpg",
        itemUrl: "https://www.youtube.com/watch?v=rrTRRfUzlB0"),
    const itemModel(
        title: "",
        image: "images/n.jpg",
        itemUrl: "https://www.youtube.com/watch?v=fF5_b0dhTS4"),
    const itemModel(
        title: "",
        image: "images/o.jpg",
        itemUrl: "https://www.youtube.com/watch?v=lvl-UxT0oOM"),
    const itemModel(
        title: "",
        image: "images/p.jpg",
        itemUrl: "https://www.youtube.com/watch?v=9dlrwu_9qk8"),
    const itemModel(
        title: "",
        image: "images/q.jpg",
        itemUrl: "https://www.youtube.com/watch?v=asa1mwMzuN8"),
    const itemModel(
        title: "",
        image: "images/r.jpg",
        itemUrl: "https://www.youtube.com/watch?v=S9Wsq66A9xI"),
    const itemModel(
        title: "",
        image: "images/s.jpg",
        itemUrl: "https://www.youtube.com/watch?v=sABdqaGImmw"),
    const itemModel(
        title: "",
        image: "images/t.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Z4RUlAm5EWA"),
    const itemModel(
        title: "",
        image: "images/u.jpg",
        itemUrl: "https://www.youtube.com/watch?v=TMk2OJAmOmE"),
    const itemModel(
        title: "",
        image: "images/v.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0mjIJ_Maf34"),
    const itemModel(
        title: "",
        image: "images/w.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qd5icmqdALI"),
    const itemModel(
        title: "",
        image: "images/x.jpg",
        itemUrl: "https://www.youtube.com/watch?v=vdL-hKuSwTs"),
    const itemModel(
        title: "",
        image: "images/y.jpg",
        itemUrl: "https://www.youtube.com/watch?v=t689H0-w-Ww"),
    const itemModel(
        title: "",
        image: "images/z.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0BlkX6MWByw"),
  ]
};

final Map<String, dynamic> familyData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/family_bar.jpg',
  'questions': familyQuestions,
  'itemList': [
    const itemModel(
        title: "Adult",
        image: "images/adult.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Am2s9M9SQsY"),
    const itemModel(
        title: "Aunt",
        image: "images/aunt.jpg",
        itemUrl: "https://www.youtube.com/watch?v=_i12aKhclT0"),
    const itemModel(
        title: "Baby",
        image: "images/baby.jpg",
        itemUrl: "https://www.youtube.com/watch?v=dJgTfkJq9Q8"),
    const itemModel(
        title: "Babysitter",
        image: "images/babysitter.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ah4m3VAz9uU"),
    const itemModel(
        title: "Boy",
        image: "images/boy.jpg",
        itemUrl: "https://www.youtube.com/watch?v=rEx2qxZzeXQ"),
    const itemModel(
        title: "Brother",
        image: "images/brother.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VKDjD9Gq-hE"),
    const itemModel(
        title: "Children",
        image: "images/children.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Yqkw-eICA3E"),
    const itemModel(
        title: "Cousin",
        image: "images/cousin.jpg",
        itemUrl: "https://www.youtube.com/watch?v=8Rl3CJLO3Us"),
    const itemModel(
        title: "Daddy",
        image: "images/daddy.jpg",
        itemUrl: "https://www.youtube.com/watch?v=dv_OgknPDMY"),
    const itemModel(
        title: "Family",
        image: "images/family.jpg",
        itemUrl: "https://www.youtube.com/watch?v=-AwR6TRqaF0"),
    const itemModel(
        title: "Friend",
        image: "images/friend.jpg",
        itemUrl: "https://www.youtube.com/watch?v=AdiVO_kuY9M"),
    const itemModel(
        title: "Grandfather",
        image: "images/grandfather.jpg",
        itemUrl: "https://www.youtube.com/watch?v=SNqPWzUBSnw"),
    const itemModel(
        title: "Grandmother",
        image: "images/grandmother.jpg",
        itemUrl: "https://www.youtube.com/watch?v=LA-ddZWTVis"),
    const itemModel(
        title: "Man",
        image: "images/man.jpg",
        itemUrl: "https://www.youtube.com/watch?v=D4r7p4QOaIM"),
    const itemModel(
        title: "Mommy",
        image: "images/mommy.jpg",
        itemUrl: "https://www.youtube.com/watch?v=EVUezKawOqo"),
    const itemModel(
        title: "Neighborhood",
        image: "images/neighborhood.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ant7Jt9AFlE"),
    const itemModel(
        title: "Sister",
        image: "images/sister.jpg",
        itemUrl: "https://www.youtube.com/watch?v=QktamJTzT1w"),
    const itemModel(
        title: "Uncle",
        image: "images/uncle.jpg",
        itemUrl: "https://www.youtube.com/watch?v=ETEeCcaAE1o"),
    const itemModel(
        title: "Wife",
        image: "images/wife.jpg",
        itemUrl: "https://www.youtube.com/watch?v=QktamJTzT1w"),
    const itemModel(
        title: "Woman",
        image: "images/woman.jpg",
        itemUrl: "https://www.youtube.com/watch?v=MbNoHOZSKLk"),
  ]
};

final Map<String, dynamic> numbersData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/numbers.jpg',
  'questions': numbersQuestions,
  'itemList': [
    const itemModel(title: "", image: "images/1.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/2.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/3.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/4.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/5.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/6.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/diaper.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/7.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/8.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/9.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/get_dressed.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/10.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/11.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/12.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/13.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/14.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/15.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/16.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/17.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/18.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/19.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/20.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/21.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/22.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/23.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/24.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/25.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/26.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/27.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/28.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/29.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/30.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/35.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/40.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/45.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/50.jpg", itemUrl: ""),
    const itemModel(title: "", image: "images/100.jpg", itemUrl: ""),
  ]
};

final Map<String, dynamic> placesData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/places.jpg',
  'questions': placesQuestions,
  'itemList': [
    const itemModel(
        title: "Basement",
        image: "images/basement.jpg",
        itemUrl: "https://www.youtube.com/watch?v=axb-fFUjyfY"),
    const itemModel(
        title: "Bath",
        image: "images/bath.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Iced6kuPOJA"),
    const itemModel(
        title: "Cupboard",
        image: "images/cupboard.jpg",
        itemUrl: "https://www.youtube.com/watch?v=RAVEhadXAFc"),
    const itemModel(
        title: "Dining Room",
        image: "images/dining_room.jpg",
        itemUrl: "https://www.youtube.com/watch?v=jquHUEFjPYw"),
    const itemModel(
        title: "Downstairs",
        image: "images/downstairs.jpg",
        itemUrl: "https://www.youtube.com/watch?v=y5pRTh4YxD0"),
    const itemModel(
        title: "Garage",
        image: "images/garage.jpg",
        itemUrl: "https://www.youtube.com/watch?v=jGfTmM-nWno"),
    const itemModel(
        title: "Garden",
        image: "images/garden.jpg",
        itemUrl: "https://www.youtube.com/watch?v=iAKE_KlRY3g"),
    const itemModel(
        title: "Hospital",
        image: "images/hospital.jpg",
        itemUrl: "https://www.youtube.com/watch?v=070_E4UOY6o"),
    const itemModel(
        title: "House",
        image: "images/house.jpg",
        itemUrl: "https://www.youtube.com/watch?v=XA9R0yy-mCs"),
    const itemModel(
        title: "Library",
        image: "images/library.jpg",
        itemUrl: "https://www.youtube.com/watch?v=_ocw9HaDUls"),
    const itemModel(
        title: "Magazine",
        image: "images/magazine.jpg",
        itemUrl: "https://www.youtube.com/watch?v=WmHXTDa0Jrg"),
    const itemModel(
        title: "Mall",
        image: "images/mall.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Pz0ppbXlNAU"),
    const itemModel(
        title: "Restaurant",
        image: "images/restaurant.jpg",
        itemUrl: "https://www.youtube.com/watch?v=au7040ztvQs"),
    const itemModel(
        title: "Roof",
        image: "images/roof.jpg",
        itemUrl: "https://www.youtube.com/watch?v=wlI0mOryVuE"),
    const itemModel(
        title: "Shower",
        image: "images/shower.jpg",
        itemUrl: "https://www.youtube.com/watch?v=AWXYplhbLBI"),
    const itemModel(
        title: "Store",
        image: "images/store.jpg",
        itemUrl: "https://www.youtube.com/watch?v=44ppSxGVpu4"),
    const itemModel(
        title: "Toilet",
        image: "images/toilet.jpg",
        itemUrl: "https://www.youtube.com/watch?v=mB1eY5y5oFY"),
    const itemModel(
        title: "Upstairs",
        image: "images/upstairs.jpg",
        itemUrl: "https://www.youtube.com/watch?v=RJb4y25XY7A"),
  ]
};

final Map<String, dynamic> questionsData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/questions_bar.jpg',
  'questions': questionsQuestions,
  'itemList': [
    const itemModel(
        title: "Ask",
        image: "images/ask.jpg",
        itemUrl: "https://www.youtube.com/watch?v=UGHSWJp7yXA"),
    const itemModel(
        title: "Don't",
        image: "images/dont.jpg",
        itemUrl: "https://www.youtube.com/watch?v=LkPrldB7VZA"),
    const itemModel(
        title: "Don't Hit",
        image: "images/dont_hit.jpg",
        itemUrl: "https://www.youtube.com/watch?v=3cD6Ltc2UDU"),
    const itemModel(
        title: "Don't Know",
        image: "images/dont_know.jpg",
        itemUrl: "https://www.youtube.com/watch?v=aScNGBwNTGY"),
    const itemModel(
        title: "Don't Like",
        image: "images/dont_like.jpg",
        itemUrl: "https://www.youtube.com/watch?v=x-qr1nKAedY"),
    const itemModel(
        title: "Don't Want",
        image: "images/dont_want.jpg",
        itemUrl: "https://www.youtube.com/watch?v=a2cxykKNClk"),
    const itemModel(
        title: "Excuse Me",
        image: "images/excuse_me.jpg",
        itemUrl: "https://www.youtube.com/watch?v=EYoEGN6ybhw"),
    const itemModel(
        title: "How",
        image: "images/how.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zXv8j6vNFSk"),
    const itemModel(
        title: "How Much",
        image: "images/how_much.jpg",
        itemUrl: "https://www.youtube.com/watch?v=jsoevaz58tw"),
    const itemModel(
        title: "Please",
        image: "images/please.jpg",
        itemUrl: "https://www.youtube.com/watch?v=VBr_hnELRqM"),
    const itemModel(
        title: "Question",
        image: "images/question.jpg",
        itemUrl: "https://www.youtube.com/watch?v=e-nq46ZclCw"),
    const itemModel(
        title: "What",
        image: "images/what.jpg",
        itemUrl: "https://www.youtube.com/watch?v=aMqj3lGWQxY"),
    const itemModel(
        title: "When",
        image: "images/when.jpg",
        itemUrl: "https://www.youtube.com/watch?v=HuNqXhST9so"),
    const itemModel(
        title: "Where",
        image: "images/where.jpg",
        itemUrl: "https://www.youtube.com/watch?v=-K0l2nZiIHs"),
    const itemModel(
        title: "Who",
        image: "images/who.jpg",
        itemUrl: "https://www.youtube.com/watch?v=yKHJ8GsnAME"),
    const itemModel(
        title: "Why",
        image: "images/why.jpg",
        itemUrl: "https://www.youtube.com/watch?v=mxCsccPO_Q8"),
  ]
};

final Map<String, dynamic> weatherData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/weather_bar.jpg',
  'questions': weatherQuestions,
  'itemList': [
    const itemModel(
        title: "Cloud",
        image: "images/cloud.jpg",
        itemUrl: "https://www.youtube.com/watch?v=kelKiiMDwCA"),
    const itemModel(
        title: "Cold",
        image: "images/cold.jpg",
        itemUrl: "https://www.youtube.com/watch?v=JwIyR8TEUUI"),
    const itemModel(
        title: "Cool",
        image: "images/cool.jpg",
        itemUrl: "https://www.youtube.com/watch?v=SF3JI4UWIvM"),
    const itemModel(
        title: "Dry",
        image: "images/dry.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zdpa7y3YHJM"),
    const itemModel(
        title: "Hot",
        image: "images/hot.jpg",
        itemUrl: "https://www.youtube.com/watch?v=1WscDLitEwQ"),
    const itemModel(
        title: "Rain",
        image: "images/rain.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DK-sKc46tBo"),
    const itemModel(
        title: "Season",
        image: "images/season.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0n5QvByd4Ik"),
    const itemModel(
        title: "Snow",
        image: "images/snow.jpg",
        itemUrl: "https://www.youtube.com/watch?v=irjEm0EDtac"),
    const itemModel(
        title: "Sun",
        image: "images/sun.jpg",
        itemUrl: "https://www.youtube.com/watch?v=DaZv2l5cz0w"),
    const itemModel(
        title: "Weather",
        image: "images/weather.jpg",
        itemUrl: "https://www.youtube.com/watch?v=MeYga74Kxwg"),
    const itemModel(
        title: "Wind",
        image: "images/wind.jpg",
        itemUrl: "https://www.youtube.com/watch?v=-Dw_ZVSqXOU"),
  ]
};

final Map<String, dynamic> jobsData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/jobs_bar.jpg',
  'questions': jobsQuestions,
  'itemList': [
    const itemModel(
        title: "Dentist",
        image: "images/dentist.jpg",
        itemUrl: "https://www.youtube.com/watch?v=JzTMTTl2tSo"),
    const itemModel(
        title: "Doctor",
        image: "images/doctor.jpg",
        itemUrl: "https://www.youtube.com/watch?v=UcmgkB-zeBs"),
    const itemModel(
        title: "Farmer",
        image: "images/farmer.jpg",
        itemUrl: "https://babysignlanguage.com/dictionary/farmer/"),
    const itemModel(
        title: "Janitor",
        image: "images/janitor.jpg",
        itemUrl: "https://www.youtube.com/watch?v=qJLsQexIfz4"),
    const itemModel(
        title: "Job",
        image: "images/job.jpg",
        itemUrl: "https://www.youtube.com/watch?v=8UsWpVYhMAQ"),
    const itemModel(
        title: "Nurse",
        image: "images/nurse.jpg",
        itemUrl: "https://www.youtube.com/watch?v=W2hDrzEqlzk"),
    const itemModel(
        title: "Police",
        image: "images/police.jpg",
        itemUrl: "https://www.youtube.com/watch?v=GNzp4-uBjKI"),
    const itemModel(
        title: "Teacher",
        image: "images/teacher.jpg",
        itemUrl: "https://www.youtube.com/watch?v=9A_ze2ZJWeI"),
    const itemModel(
        title: "Worker",
        image: "images/worker.jpg",
        itemUrl: "https://www.youtube.com/watch?v=H-yVetzEF1c"),
  ]
};

final Map<String, dynamic> daysData = {
  'backColor': Color.fromARGB(255, 114, 164, 206),
  'backImage': 'images/days3.png',
  'questions': daysQuestions,
  'itemList': [
    const itemModel(
        title: "Sunday",
        image: "images/sunday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=D4Qk7YDcT3w"),
    const itemModel(
        title: "Monday",
        image: "images/monday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=n0ulOOMM9tw"),
    const itemModel(
        title: "Tuesday",
        image: "images/tuesday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=zvFM6wEfqYc"),
    const itemModel(
        title: "Wednesday",
        image: "images/wednesday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=0sP6lqWaNNU"),
    const itemModel(
        title: "Thursday",
        image: "images/thursday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Rvgcj9cAgGw"),
    const itemModel(
        title: "Friday",
        image: "images/friday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=Ai1LYYlk5TY"),
    const itemModel(
        title: "Saturday",
        image: "images/saturday.jpg",
        itemUrl: "https://www.youtube.com/watch?v=i-E57y9pWkI"),
    const itemModel(
        title: "Week",
        image: "images/week.jpg",
        itemUrl: "https://www.youtube.com/watch?v=FMAlVnW_lqM"),
  ]
};
