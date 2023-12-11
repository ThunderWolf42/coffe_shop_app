class Coffee {
   final int id;
   final String name;
   final String imageUrl;
   final String description;
   final String rating;
   final String price;

   Coffee ({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.price
   });
}

final List<Coffee> listCoffee = [
  Coffee(
    id: 1, 
    name: 'Cappucino', 
    imageUrl: 'images/cappucino1.png', 
    description: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More', 
    rating: "4.9", 
    price: 'Rp 39000'
    ),
    Coffee(
      id: 2, 
      name: "Arabica", 
      imageUrl: 'images/cappucino1.png', 
      description:'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More' , 
      rating: '4.8', 
      price: 'Rp 35000'
      ),
    Coffee(
      id: 3, 
      name: "Arabica", 
      imageUrl: 'images/cappucino2.png', 
      description:'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More' , 
      rating: '4.8', 
      price: 'Rp 35000'
      ),
    Coffee(
      id: 4, 
      name: 'Cappucino', 
      imageUrl: 'images/cappucino2.png', 
      description: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More', 
      rating: "4.9", 
      price: 'Rp 40000'
    ),
    Coffee(
      id: 5, 
      name: 'Cappucino', 
      imageUrl: 'images/cappucino1.png', 
      description: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More', 
      rating: "4.9", 
      price: 'Rp 40000'
    ),
    Coffee(
      id: 6, 
      name: 'Cappucino', 
      imageUrl: 'images/cappucino2.png', 
      description: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More', 
      rating: "4.9", 
      price: 'Rp 48000'
    ),


    
];