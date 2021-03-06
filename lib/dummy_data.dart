import 'package:flutter/material.dart';

import 'package:meals/models/meals.dart';

import 'package:meals/models/category.dart';

const DUMMY_CATYGORIES = const [
  Category(
    id: 'c11',
    title: 'وصفات عربية',
    color: Colors.lightGreenAccent,
  ),
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c11',
    ],
    title: 'فطيرة لحم الضأن',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://kitchen.sayidaty.net/uploads/small/ec/ec76ceb783b0e229c2d7ed2e6576fb33_w750_h500.jpg',
    duration: 60,
    ingredients: [
      'لحم الضأن : 500 غراماً (مفروم وخالي الدهن) ',
      'عجينة البف باستيري : عبوة ',
      'زيت الزيتون : 3 ملاعق كبيرة ',
      'البصل الأحمر : 1 حبة (متوسط الحجم)',
      'الثوم : 3 فصوص (مهروس) ',
      'بقدونس : 2 ملعقة كبيرة (مفروم) ',
      'الكزبرة : 2 ملعقة كبيرة (مفرومة) ',
      'مرق اللحم : 2 ملعقة كبيرة (بودرة)',
      'ورشستر صوص : 2 ملعقة صغيرة ',
      'البازيلاء : نصف كوب ',
      ' البيض : 1 حبة ',
      'حبّ البركة : ملعقة صغيرة (للتزيين) ',
      'صلصة الباربيكيو : 2 ملعقة كبيرة ',
    ],
    steps: [
      'يُسخن الزيت في مقلاة غير لاصقة فوق نار متوسطة إلى عالية الحرارة.',
      'يُطهى البصل والثوم لمدة 3 دقائق أو حتى يطرى البصل.',
      'يضاف اللحم المفروم ويُطهى مع التقليب لمدة 8 دقائق أو حتى يُحمر ويُفتت اللحم بواسطة الملعقة الخشبية خلال الطهي.',
      'تضاف بودرة مرق اللحم وصلصة الويرشيستر والباربكيو.',
      'تُخفض درجة الحرارة ويُطهى الخليط مغطى فوق نار هادئة لمدة 15 دقيقة أو حتى يتماسك الخليط.',
      'يُرفع الخليط عن النار وتضاف البازيلاء والبقدونس والكزبرة ويُقلبوا، ويُترك الخليط حتى يبرد.',
      'يُسخن الفرن إلى 200 درجة مئوية وتُدهن 2 صينية خبز كبيرة الحجم بالزيت.',
      'تُقطع كل طبقة من العجين إلى 4 مربعات، تُغرف 2 ملعقة كبيرة من خليط اللحم المفروم فوق نصف مربع العجين.',
      'تُدهن الحواف بالبيض، ويُطوى جانب واحد لغلق الحشوة، يُضغط على الحواف بالشوكة، تُرص مربعات العجين في الصينية المجهزة.',
      'يُرش العجين بجبة البركة ويُخبز لمدة من 18 إلى 20 دقيقة حتى يكتسب لونًا ذهبيًا.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c11',
    ],
    title: 'طاجن اللحم بالعجين',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://kitchen.sayidaty.net/uploads/small/00/001c167f2d415b8e813e55e6e1bf3d3b_w750_h500.jpg',
    duration: 60,
    ingredients: [
      'حبّ البركة : ملعقة كبيرة',
      'السمسم : ملعقة كبيرة  ',
      'صفار البيض : 1 حبة ',
      'ملح : رشّة ',
      'بيكنج بودر : نصف ملعقة صغيرة ',
      'الخميرة الفورية : ملعقة صغيرة ',
      'اللحم : نصف كيلو (مقطع مكعبات) ',
      'طماطم : 2 حبة (مقطعة مكعبات) ',
      'الفلفل الحار : 1 حبة ',
      'الجزر : 1 حبة (مقطع حلقات) ',
      'البطاطس : 1 حبة (مقطعة مكعبات كبيرة)',
      ' الثوم : فصّان (مهروس) ',
      'البصل : 2 حبة (مقطع حلقات) ',
      'فلفل رومي : 2 حبة (مقطع مكعبات) ',
      'إكليل الجبل : ملعقة صغيرة ',
      'كزبرة خضراء : 4 أعواد (مفرومة) ',
      'ورق غار : 2 ورقة ',
      'هيل : 2 حبة ',
      ' فلفل أسود : ملعقة صغيرة ',
      'جوزة الطيب : ربع ملعقة صغيرة',
      'ملح : حسب الرغبة ',
      'طحين : 2 كوب ',
      'لبن زبادي : كوب ',
    ],
    steps: [
      'في إناء به زيت ساخن على النار، نضع اللحم (نرشه بالقليل من الطحين).',
      'نضيف البصل والجزر والطماطم والفلفل الرومي والفلفل الحار وورق الغار والهيل والثوم وإكليل الجبل والكزبرة الخضراء.',
      'نضيف إلى الخليط الملح والفلفل الأسود وجوزة الطيب وبعدها نضيف الماء.',
      'نترك الخليط للغليان، ثم نهدأ النار ونغطي الإناء.',
      'في وعاء متوسط،  نضع الدقيق ثم الزبادي والخميرة والبيكنج باودر والزيت ونعجن جيداً ثم نضع على العجين القليل من الزيت ونتركها لترتاح.',
      'بعد نضج اللحم نضع مكعبات البطاطس ونغطي الإناء لمدة 5 دقائق ثم نضع خليط اللحم في الطاجن.',
      'نرش دقيق على سطح مستو ونفرد العجينة ونغطي الطاجن بالعجين ونغرز الشوكة على الأطراف وندهن الوجه بصفار البيض عليه ملح وفلفل أسود.',
      'نرش الوجه بحبة البركة والقليل من السمسم وتدخل الفرن حتى يحمر العجين.',
      'يفتح العجين ويقدم الطاجن ساخناً.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c11',
    ],
    title: 'ضلع اللحم المشوي بالأعشاب',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://kitchen.sayidaty.net/uploads/small/bb/bb8f3ec867e23120dcbe91f6e3c35199_w750_h500.jpg',
    duration: 60,
    ingredients: [
      'العسل : 200 غم ',
      'صلصة تشيلي الحلوة : 100 غراماً ',
      'الثوم : 100 غراماً ',
      'صلصة الفطر الجاهزة : 100 غراماً ',
      'البصل الأخضر : 200 غم ',
      'خيار : 200 غم ',
      'أعشاب مجففة : ملعقة كبيرة ',
      'التوابل : 8 غم ',
      'ملح : 3 غم ',
      'صلصة الصويا : 5 غرام (الخفيفة) ',
      'سكر : 200 غم (أبيض) ',
      'الثوم : ربع ملعقة صغيرة ',
      'البصل : نصف ملعقة صغيرة ',
      'الصلصة : 50 غم (صلصة الفاصولياء) ',
      'صلصة الزوزو : 200 غم ',
      'صلصة الهويسين : 350 غراماً ',
      'ضلع الخروف : 1 كيلو وثلث ',
    ],
    steps: [
      'ننقع ضلع اللحم بصلصة الهويسين، والزوزو، والفاصولياء، والبصل والثوم، والسكر الأبيض، وصلصة الصويا الخفيفة، والملح، ومسحوق التوابل لمدة ليلة كاملة.',
      'نشوي اللحم لمدة 20 دقيقة.',
      'نضع العسل لإضفاء النكهة والرائحة الطيبة، ثم نشوي اللحم من جديد لمدة خمس دقائق.',
      'للتقديم:  نزين الطبق بالخيار، والبصل الأخضر وصلصة الفطر، والثوم، والتشيلي الحلوة ويقدم طبق الضلع المشوي ساخناً.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c11',
    ],
    title: 'تتبيلة اللحم المشوي على الفحم بالزبادي لعيد الأضحى',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://kitchen.sayidaty.net/uploads/small/1a/1a7fb90d68740fcf7ce26b67118f45ac_w750_h500.jpg',
    duration: 20,
    ingredients: [
      'اللحم : 750 غرام (مقطّع إلى مكعبات) ',
      'زيت الزيتون : ربع كوب ',
      'صلصة ورشسترشاير : ربع كوب ',
      'زبادي : عبوة ',
      'صلصة الصويا : 3 ملاعق كبيرة ',
      'عصير الليمون : ملعقة صغيرة ',
      'الخردل : ملعقة كبيرة (ديجون) ',
      'الثوم : 3 فصوص (مهروس) ',
      'فلفل أسود : 2 ملعقة صغيرة ',
    ],
    steps: [
      'في وعاء، ضعي الزيت، صلصة ورسسترشاير، صلصة الصويا، عصير الليمون والزبادي.',
      'أضيفي الخردل والثوم ونكّهي بالفلفل الأسود.',
      'اخلطي المكوّنات جيداً حتى تتداخل.',
      'ضعي مكعبات اللحم في كيس بلاستيكي وأضيفي إليه التتبيلة.',
      'أغلقي الكيس بإحكام وأدخليه إلى الثلاجة لـ4 ساعات على الأقل.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c11',
    ],
    title: 'كباب مشوي بالفرن',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://kitchen.sayidaty.net/uploads/small/98/98142a0d8d43e8faa911152fa340a15d_w750_h500.jpg',
    duration: 40,
    ingredients: [
      'لحم مفروم : 1 كيلو ',
      'بقدونس : كوب (مفروم) ',
      'البصل : 1 حبة (كبير الحجم) ',
      'ملح : ملعقة كبيرة ',
      'بهارات مشكلة : نصف ملعقة صغيرة',
      'فلفل أسود : نصف ملعقة صغيرة ',
      'الشطة : ثمن ملعقة صغيرة ',
    ],
    steps: [
      'في وعاء عميق، ضعي اللحم المفروم، البقدونس والبصل ثم اخلطي المكونات حتى تتداخل.',
      'نكهي بالملح، البهارات المشكلة، الفلفل الأسود والفلفل الحريف.',
      'اخلطي المكونات من جديد حتى تحصلي على خليط متجانس القوام ومتماسك.',
      'غلفي الوعاء ثم أدخليه إلى الثلاجة 30 دقيقة حتى يجمد الخليط.',
      'شكلي خليط الكباب على عيدان خشبية ثم صفيها في صينية فرن مغلفة بورق قصدير.',
      'أدخلي الصينية إلى فرن محمى مسبقاً على حرارة 180 درجة مئوية 30 دقيقة حتى ينضج الكباب جيداً.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
