import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(id: 'c2', title: 'Rápido & Fácil', color: Colors.red),
  Category(id: 'c3', title: 'Hamburgues', color: Colors.teal),
  Category(id: 'c4', title: 'Alemã', color: Colors.yellow),
  Category(id: 'c5', title: 'Leve & Saudável', color: Colors.amber),
  Category(id: 'c6', title: 'Exótica', color: Colors.green),
  Category(id: 'c7', title: 'Café da Manhã', color: Colors.lightBlue),
  Category(id: 'c8', title: 'Asiática', color: Colors.lightGreen),
  Category(id: 'c9', title: 'Francesa', color: Colors.pink),
  Category(id: 'c10', title: 'Verão', color: Colors.orange),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Espaguete com Molho de Tomate',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de sopa de azeite',
      '1 Cebola',
      '250g Spaghetti',
      'Especiarias',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva um pouco de água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - eles devem estar prontos em cerca de 10 a 12 minutos.',
      'Entretanto, aqueça um pouco de azeite e adicione a cebola cortada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e outros temperos.',
      'O molho estará pronto assim que o espaguete estiver.',
      'Sinta-se à vontade para adicionar um pouco de queijo por cima do prato acabado.'
    ],
    isGluten: false,
    isVegan: true,
    isVegetarian: true,
    isLactose: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 fatia de pão branco',
      '1 fatia de presunto',
      '1 fatia de abacaxi',
      '1-2 Fatias de queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um lado do pão branco',
      'Camada de presunto, abacaxi e queijo no pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C'
    ],
    isGluten: false,
    isVegan: false,
    isVegetarian: false,
    isLactose: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hamburger Clássico',
    cost: Cost.fair,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de alcatra',
      '1 Tomate',
      '1 Pepino',
      '1 Cebolas',
      'Ketchup',
      '2 Pães de hambúrguer'
    ],
    steps: [
      'Forme 2 hambúrgueres',
      'Frite os hambúrgueres por 4 minutos de cada lado',
      'Frite rapidamente os pães por c. 1 minuto de cada lado',
      'Pincele os pães com ketchup',
      'Sirva hambúrguer com tomate, pepino e cebola'
    ],
    isGluten: false,
    isVegan: false,
    isVegetarian: false,
    isLactose: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    cost: Cost.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 costeletas de vitela',
      '4 Ovos',
      '200g Migalhas de pão',
      '100g Farinha',
      '300ml Manteiga',
      '100g Óleo Vegetal',
      'Sal',
      'Fatias de Limão'
    ],
    steps: [
      'Amacie a vitela até cerca de 2-4 mm e salgue dos dois lados.',
      'Em um prato raso, mexa os ovos rapidamente com um garfo.',
      'Cubra levemente as costeletas com farinha, depois mergulhe no ovo e, por fim, cubra com pão ralado.',
      'Numa frigideira grande aqueça a manteiga e o azeite (deixe a gordura ficar bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de mexer a frigideira regularmente para que os schnitzels fiquem rodeados de óleo e o miolo fique \'fofo\'.',
      'Retire e escorra em papel de cozinha. Frite a salsa no óleo restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva decorado com salsa e rodelas de limão.'
    ],
    isGluten: false,
    isVegan: false,
    isVegetarian: false,
    isLactose: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com Salmão Defumado',
    cost: Cost.expensive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface Americana',
      'Salsinha',
      'Erva Doce',
      '200g Salmão Defumado',
      'Mostarda',
      'Vinagre Balsânico',
      'Azeite',
      'Sal e Pimenta'
    ],
    steps: [
      'Lave e corte salada e ervas',
      'Corte o salmão em cubos',
      'Processe a mostarda, o vinagre e o azeite até formar uma sobremesa',
      'Prepare a salada',
      'Adicione cubos de salmão e molho'
    ],
    isGluten: true,
    isVegan: false,
    isVegetarian: true,
    isLactose: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Deliciosa Mousse de Laranja',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Caixas de Gelatina',
      '150ml Orange Juice',
      '80g Açucar',
      '300g Yorgut',
      '200g Sorvete',
      'Casca de laranja',
    ],
    steps: [
      'Dissolver a gelatina na panela',
      'Adicione suco de laranja e açúcar',
      'Tire a panela do fogão',
      'Adicione 2 colheres de sopa de iogurte',
      'Mexa a gelatina sob o iogurte restante',
      'Resfrie tudo na geladeira',
      'Bata as natas e coloque-as sob a massa de laranja',
      'Resfrie novamente por pelo menos 4 horas',
      'Sirva com casca de laranja',
    ],
    isGluten: true,
    isVegan: false,
    isVegetarian: true,
    isLactose: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Xícaras de Farinha',
      '3 1/2 Colheres de Chá de Fermento em pó',
      '1 Colher de Chá de Sal',
      '1 Colher de Sopa de Açúcar',
      '1 1/4 Xícara de Leite',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha, o fermento, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma frigideira ou frigideira levemente untada com óleo em fogo médio-alto.',
      'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Marrom em ambos os lados e servir quente.'
    ],
    isGluten: true,
    isVegan: false,
    isVegetarian: true,
    isLactose: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Curry Cremoso de Frango Indiano',
    cost: Cost.fair,
    complexity: Complexity.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 Dentes de Alho',
      '1 Pedaço de Gengibre',
      '4 Colheres de Sopa de Amêndoas',
      '1 Colher de Chá de Pimenta Caiena',
      '500ml Leite de Côco',
    ],
    steps: [
      'Corte e frite o peito de frango',
      'Processe a cebola, o alho e o gengibre até formar uma pasta e refogue tudo',
      'Adicione temperos e frite',
      'Adicione peito de frango + 250ml de água e cozinhe tudo por 10 minutos',
      'Adicionar leite de coco',
      'Sirva com arroz'
    ],
    isGluten: true,
    isVegan: false,
    isVegetarian: false,
    isLactose: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Suflê de Chocolate',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Colher de Chá de Manteiga Derretida',
      '2 Colheres de Sopa de Açúcar',
      '2 Tigelas de Chocolate Amargo 70%, Quebrado em Pedaços',
      '1 Colher de Sopa de Manteiga',
      '1 Colher de Sopa de Farinha',
      '4 1/3 Colheres de Sopa de Leite Frio',
      '1 Pitada de Sal',
      '1 Pitada de Pimenta do Reino',
      '1 ZGema de Ovo Grande',
      '2 Claras de Ovo Grandes',
      '1 Pitada de Creme de Tártaro',
      '1 Colher de Sopa de Açúcar',
    ],
    steps: [
      'Pré-aqueça o forno a 190°C. Forre uma assadeira com papel manteiga.',
      'Pincele levemente o fundo e as laterais de 2 ramequins com 1 colher de chá de manteiga derretida; cubra o fundo e as laterais até a borda.',
      'Adicione 1 colher de sopa de açúcar branco aos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe com farinha. Bata até que a farinha seja incorporada à manteiga e a mistura engrosse.',
      'Bata o leite frio até a mistura ficar lisa e engrossar. Transfira a mistura para uma tigela com chocolate derretido.',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture bem.',
      'Deixe a tigela acima da água quente (não fervendo) para manter o chocolate quente enquanto você bate as claras.',
      'Coloque 2 claras em uma tigela; adicione o creme de tártaro. Bata até a mistura começar a engrossar e um fiozinho do batedor permanecer na superfície por cerca de 1 segundo antes de desaparecer na mistura.',
      'Adicione 1/3 de açúcar e misture. Adicione um pouco mais de açúcar por cerca de 15 segundos.',
      'Bata o resto do açúcar. Continue batendo até que a mistura fique tão espessa quanto creme de barbear e mantenha picos suaves, 3 a 5 minutos.',
      'Transfira um pouco menos da metade das claras para o chocolate.',
      'Misture até que as claras estejam bem incorporadas ao chocolate.',
      'Adicione o restante das claras; envolva delicadamente no chocolate com uma espátula, levantando do fundo e dobrando.',
      'Pare de misturar depois que a clara do ovo desaparecer. Divida a mistura entre 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse em forno pré-aquecido até que as brigas estejam inchadas e subam acima do topo das bordas, 12 a 15 minutos.',
    ],
    isGluten: true,
    isVegan: false,
    isVegetarian: true,
    isLactose: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Espargos com Tomate Cereja',
    cost: Cost.expensive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Espargos Brancos e Verdes',
      '30g Pinhões',
      '300g Tomate Cereja',
      'Salada',
      'Sal, Pimenta e Azeite'
    ],
    steps: [
      'Lave, descasque e corte os aspargos',
      'Cozinhe em água salgada',
      'Salgue e apimente os aspargos',
      'Assar os pinhões',
      'Divida os tomates pela metade',
      'Misture com aspargos, salada e molho',
      'Sirva com baguete'
    ],
    isGluten: true,
    isVegan: true,
    isVegetarian: true,
    isLactose: true,
  ),
];