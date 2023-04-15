# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Adding categories
categories = Category.create([
    {
      name: "Pizzas",
      image: "https://i.postimg.cc/cHb7kKsJ/Pizzas.png",
    },
    {
      name: "Hamburguesas",
      image: "https://i.postimg.cc/6q4rk93f/Hamburguesas.png",
    },
    {
      name: "Sushi",
      image: "https://i.postimg.cc/bdXx8KSc/Sushi.png",
    },
    {
      name: "Ensaladas",
      image: "https://i.postimg.cc/KcCwRjnF/Ensaladas.png",
    },
    {
      name: "Postres",
      image: "https://i.postimg.cc/Kc1CGB3J/Postres.png",
    },
    {
      name: "Bebidas",
      image: "https://i.postimg.cc/G22JjPnN/Bebidas.png",
    }
])

# Adding products

  products = Product.create([{
    name: "Double Porto Burger",
    description: "Dos hamburguesas de hongos con cheddar de zanahoria y papa, portobellos en vinagreta, lechuga, tomate y salsa mkm en pan brioche. Acompañada de papas al horno y ensalda coleslaw.",
    price: 13,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/j2N2sycF/Double-Porto-Burger.png",
    state: "disponible"
  },
  {
    name: "Mega Burger",
    description: "Pan de hamburguesa de zapallo y harina de arroz + hamburguesa de lentejas y tofu + lechuga + tomate + palta + cebolla caramelizada + queso fundido de calabaza + berenjenas shichimi togarashi. Acompañada de papas al horno y ensalda coleslaw.",
    price: 11,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/zX88bmGB/Mega-Burger.png",
    state: "disponible"

  },
  {
    name: "Double Porto Burger",
    description: "Hamburguesas de hongos con cheddar de zanahoria y papa, portobellos en vinagreta, lechuga, tomate y salsa mkm en pan brioche. Acompañada de papas al horno y ensalda coleslaw.",
    price: 13,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/JhwT08RY/Ribarde.png",
    state: "disponible"
    },
  {
    name: "Power",
    description: "Pan de hamburguesa de zapallo y harina de arroz + hamburguesa de lentejas y tofu + lechuga + tomate + palta + cebolla caramelizada + queso fundido de calabaza + berenjenas shichimi togarashi. Acompañada de papas al horno y ensalda coleslaw.",
    price: 11,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/6pFPZRf0/Power.png",
    state: "disponible"

  },
  {
    name: "Popeye",
    description: "Milanesa de Girgola, lechuga, tomate, salsa golf, guacamole, pan de chipa. Acompañada de papas al horno y ensalda coleslaw.",
    price: 11,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/VsF2hJzf/Popeye.png",
    state: "disponible"
  },
  {
    name: "Borde Relleno",
    description: "Salsa pomodoro, queso de maní, portobellos crispy en tempura, tofu salteados con barbacoa y finalizar con queso cheddar.",
    price: 20,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/HjDm3KQS/Borde-Relleno.png",
    state: "disponible"
  },
  {
    name: "Hot",
    description: "Picante, salsa pomodoro y seitan adobado en salsa picante de chipotle, tomates confitados en hierbas aromáticas, mozzarella caju y terminación con reducción de aceto balsámico.",
    price: 12,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/y861GMM5/Hot.png",
    state: "disponible"
  },
  {
    name: "Margherita",
    description: "Mozzarella de cajú, pomodoro, pesto de albahaca, hongos, brocoli y pimenton.",
    price: 11,
    category_id: 1,
    time_preparation: "20-25 min",
    image: "https://i.postimg.cc/Pfmd5fh9/Margherita.png",
    state: "disponible"
  },
  {
    name: "Borde Relleno",
    description: "Salsa pomodoro, queso de maní, tomate cherry, calabaza, portobellos asados en tempura, tofu salteados con barbacoa y finalizar con queso cheddar.",
    price: 20,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/vmQV32hH/Valentina.png",
    state: "disponible"
  },
  {
    name: "Fugazzetta",
    description: "Queso de arroz, cebolla, orégano, olivas negras, tomates cherry, pimenton amarillo, lentejas verdes y pallares.",
    price: 12,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/15GX2cfg/Fugazzetta.png",
    state: "disponible"
  },
  {
    name: "Trufa y gírgolas",
    description: "Crema de trufas, gírgolas, aceitunas, hierba buena, pimenton y kale.",
    price: 16,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/KzGD3vwf/Trufa-y-g-rgolas.png",
    state: "disponible"
  },
  {
    name: "Bianca",
    description: "Papa, romero, hongos, tomate, berenjena y crema de ajo.",
    price: 11,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/fW3029cX/Bianca.png",
    state: "agotado"
  },
  {
    name: "Amherite",
    description: "Papa, romero, cebolla, perejil, hongos y crema de ajo.",
    price: 11,
    category_id: 1,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/9XSQrgqw/Amherite.png",
    state: "agotado"
  },
  {
    name: "De La Montaña",
    description: "Shitake,palta,batata cocida,cebolla morada, mayonesa cevichera, falso caviar de aji, aceite de cilantro.",
    price: 10,
    category_id: 4,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/QM4HS8V0/De-la-Monta-a.png",
    state: "disponible"
  },
  {
    name: "Despertar Vasquez",
    description: "Shitake,palta,batata cocida,cebolla morada, mayonesa cevichera, falso caviar de aji, aceite de cilantro.",
    price: 10,
    category_id: 4,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/PxJdq1XM/Ceviche-Vasquez.png",
    state: "disponible"
  },
  {
    name: "Tempura Vegetal",
    description: "Coliflor en tempura, con crema cevichera de ají amarillo, palta rostizada, batata, tomate cherry, aceite de ajíes, hojas de cilantro.",
    price: 11,
    category_id: 4,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/cHhTF8wP/Tempura-Vegetal.png",
    state: "agotado"
  },
  {
    name: "Fragancé",
    description: "Coliflor en tempura, con crema cevichera de ají amarillo, palta rostizada, batata, tomate cherry, aceite de ajíes, hojas de cilantro.",
    price: 11,
    category_id: 4,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/TYMhtHYM/Fraganc.png",
    state: "agotado"
  },
  {
    name: "Nigiri Shitake",
    description: "Shari, shitake, Hoisin, edamame (x2)",
    price: 5,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/L8WcVG2j/Nigiri-Shitake.png",
    state: "disponible"
  },
  {
    name: "Nigiri de peras",
    description: "Viene con furikake vvegano y sal marina de wasabi.",
    price: 5,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/8zs8MTQ1/Nigiri-de-peras.png",
    state: "disponible"
  },
  {
    name: "Uramaki Super Kale",
    description: "Queso trufado, palta, girgolas salteadas, cubierto de zanahoria, crispy kale. 10 PIEZAS",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/Sxb8zxz9/Uramaki-Super-Kale.png",
    state: "disponible"
  },
  {
    name: "Uramaki Mango",
    description: "Shari, alga nori, queso crema cajú, remolacha glaseada, verdeo rostizado, cubierto de mango, garrapiñada de semillas, sweet chilli. 10 PIEZAS",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/sXH7BPpf/Uramaki-Mango.png",
    state: "disponible"
  },
  {
    name: "Uramaki Crispy",
    description: "Shari, alga nori, portobellos anticucheros, queso crema tofu, verdeo rostizado, cubierto de palta, crema de ajo ahumada, batata crispy. 10 PIEZAS",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/hvwLY8jZ/Uramaki-Crispy.png",
    state: "disponible"
  },
  {
    name: "Uramaki Furai",
    description: "Shari, alga nori, palta, queso crema de tofu, pepino japonés, tempura, panko, sweet chilli. 10 PIEZAS",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/15k0cKbf/Uramaki-Furai.png",
    state: "disponible"
  },
  {
    name: "Uramaki Gírgola Pank",
    description: "Gírgolas en panko, queso de cajú, palta, cobertura de remolacha, hilos de papa crocante y salsa tari.",
    price: 11,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/FKZjvXzL/Uramaki-G-rgola-Pank.png",
    state: "disponible"
  },
  {
    name: "Uramaki Acebichado",
    description: "Shari, algo nori, girgolas empanizadas, batata, palta. Cubierto de mayonesa cebichera y furikake.",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/gjry4tY6/Uramaki-Acebichado.png",
    state: "disponible"
  },
  {
    name: "Uramaki Spicy New",
    description: "Shari, alga nori, verdeo tempurizado, palta, tartar de portobellos picantes.",
    price: 12,
    category_id: 3,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/gjfhsYSf/Uramaki-Spicy-New.png",
    state: "disponible"
  },
  {
    name: "Torta de chocolate",
    description: "Base de cacao y harina de almsendras, mousse y salsa de chocolate.",
    price: 9,
    category_id: 5,
    time_preparation: "20-25 min",
    image: "https://i.postimg.cc/W1ZnQy0G/Torta-de-chocolate.png",
    state: "agotado"
  },
  {
    name: "Cobbler",
    description: "Relleno de frutas de estación, con masa cobbler, servido caliente con sorbete de maracuyá.",
    price: 9,
    category_id: 5,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/Rhn979n6/Cobbler.png",
    state: "disponible"
  },
  {
    name: "Mousse de Chocolate",
    description: "Mouse de chocolate, con dulce de leche de coco, tierra de cacao, nibs, menta y flowers.",
    price: 9,
    category_id: 5,
    time_preparation: "30-35 min",
    image: "https://i.postimg.cc/Dwzh6qs3/Mousse-de-Chocolate.png",
    state: "disponible"
  },
  {
    name: "Mousse de Fresa",
    description: "Mouse de Fresa, con dulce de leche de coco, tierra de cacao, nibs, menta y flowers.",
    price: 9,
    category_id: 5,
    time_preparation: "30-35 min",
    image: "https://i.postimg.cc/pTKMrkNz/Mousse-de-Fresa.png",
    state: "disponible"
  },
  {
    name: "Cheesecake frutos rojos",
    description: "Crema de cheescake cocida, base de almendras, mermelada de frutos rojos",
    price: 9,
    category_id: 5,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/kGZGCfW8/Cheesecake-frutos-rojos.png",
    state: "disponible"
  },
  {
    name: "Chessecake DDL",
    description: "Base de almendra y dátiles, crema de cajú, y dulce de leche sin gluten a base de coco.",
    price: 9,
    category_id: 5,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/50sj7x0s/Chessecake-DDL.png",
    state: "disponible"
  },
  {
    name: "Tiramisú",
    description: "Bizcochuelo húmedo, almibar de café, mascarpone a base de tofu, merengue italiano de aquafaba y crema.",
    price: 8,
    category_id: 5,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/KvRQ5jzs/Tiramis.png",
    state: "disponible"
  },
  {
    name: "Panqueques de avena",
    description: "Mezcla de avena, plátano, estevia, leche de almendras con almibar de café y crema.",
    price: 8,
    category_id: 5,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/JnVSfJyn/Panqueques.png",
    state: "disponible"
  },
  {
    name: "Agua Mineral",
    description: "",
    price: 2,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/KvztyWhK/Agua-mineral.png",
    state: "disponible"
  },
  {
    name: "Limonada Clásica",
    description: "Zumo de limón, estevia y agua mineral",
    price: 4,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/d0Lqs8tj/Limonada-Cl-sica.png",
    state: "agotado"
  },
  {
    name: "Gin Tonic",
    description: "Gin Tonic",
    price: 7,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/76JYVSFZ/Gin-Tonic.png",
    state: "disponible"
  },
  {
    name: "Jugo Frutal",
    description: "Jugo de frutas según temporada",
    price: 7,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/W19Nc9j4/Jugos-Frutales.png",
    state: "disponible"
  },  {
    name: "Refresco de naranja",
    description: "Jugo de naranja, jugo de limón y almíbar de canela y café",
    price: 6,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/wvQ4nr8f/Refresco-de-naranja.png",
    state: "disponible"
  },
  {
    name: "Refresco de pomelo",
    description: "Jugo de pomelo, jugo de limón y almíbar de hibiscus",
    price: 6,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/mkdXgFr7/Refresco-de-Pomelo.png",
    state: "disponible"
  },
  {
    name: "Té Chai",
    description: "té negro, cardamomo, canela, jengibre, clavo de olor, anís estrellado",
    price: 3,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/k5xTtH4J/T-Chai.png",
    state: "agotado"
  },
  {
    name: "Hierbas Antigripales",
    description: "Preparado de hierbas como: muña, hierba Luisa, uña de gato, anís, manzanilla y limón",
    price: 3,
    category_id: 6,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/yxq6rkKX/Hierbas-Antigripales.png",
    state: "agotado"
  },
  {
    name: "Relleno Fracés",
    description: "Pan de hamburguesa de zapallo y harina de arroz + hamburguesa de lentejas y tofu + lechuga + tomate + palta + cebolla caramelizada + queso fundido de calabaza + berenjenas shichimi togarashi. Acompañada de papas al horno y ensalda coleslaw.",
    price: 3,
    category_id: 2,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/Nj2JQFvr/Relleno-Franc-s.png",
    state: "agotado"
  },
  {
    name: "Mousse de Maracuyá",
    description: "Mouse de Maracuyá, con dulce de leche de coco, tierra de cacao, nibs, menta y flowers.",
    price: 9,
    category_id: 5,
    time_preparation: "30-35 min",
    image: "https://i.postimg.cc/zv5ZgW5M/Mousse-de-Maracuy.png",
    state: "disponible"
  },
  {
    name: "Primaveral",
    description: "Shitake,palta,batata cocida,cebolla morada, mayonesa cevichera, falso caviar de aji, aceite de cilantro.",
    price: 10,
    category_id: 4,
    time_preparation: "10-15 min",
    image: "https://i.postimg.cc/R0fDLFPz/Primaveral.png",
    state: "disponible"
  }
])
