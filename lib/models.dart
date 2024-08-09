class ShoeCategory {
  final String imageUrl;
  final String name;

  const ShoeCategory({required this.imageUrl, required this.name});
}

const List<ShoeCategory> shoeCategories = [
  ShoeCategory(imageUrl: 'https://i.pinimg.com/736x/55/f6/8e/55f68e1fbbfb3a97de3447dea15fbe28.jpg', name: 'Nike'),
  ShoeCategory(imageUrl: 'https://logowik.com/content/uploads/images/820_puma.jpg', name: 'Puma'),
  ShoeCategory(imageUrl: 'https://w7.pngwing.com/pngs/488/478/png-transparent-adidas-originals-t-shirt-logo-brand-adidas-angle-text-retail-thumbnail.png', name: 'Adidas'),
  ShoeCategory(imageUrl: 'https://w7.pngwing.com/pngs/159/715/png-transparent-new-balance-red-nb-product-logos-thumbnail.png', name: 'New Balance'),
  ShoeCategory(imageUrl: 'https://seeklogo.com/images/V/vans-logo-C9E618A891-seeklogo.com.png', name: 'Vans'),
  ShoeCategory(imageUrl: 'https://thumbnail.imgbin.com/9/7/13/imgbin-crocs-logo-calvin-klein-fashion-logo-QXwNTQyX67H4eM5dNQuwnWmhY_t.jpg', name: 'Crocs'),
];

//model to display a list of different shoes
class Shoe {
  final String imageUrl;
  final String name;
  final double price;

   Shoe({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
  }

   List<Shoe> shoes =[
    Shoe(imageUrl: 'https://images.stockx.com/images/Air-Jordan-4-Retro-Black-Cat-2020-PS-Product.jpg?fit=fill&bg=FFFFFF&w=140px&h=75px&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1651518954&q=60',name:'Black cats',price:100.00),
    Shoe(imageUrl: 'https://images.stockx.com/images/Nike-Dunk-Low-Anthracite-Pure-Platinum-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1700169024',name:'Nike low dunk Anthracite',price:100.00),
    Shoe(imageUrl: 'https://images.stockx.com/images/New-Balance-550-White-Green-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1628002321',name:'new balance 550 white green',price:58),
    Shoe(imageUrl: 'https://images.stockx.com/images/Nike-Kobe-4-Protro-Gold-Medal-2024-Product.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1722970750&q=60',name:'Nike Kobe 4 Protro Gold Medal',price:198),
    Shoe(imageUrl: 'https://images.stockx.com/360/Air-Jordan-1-Retro-Low-Golf-Chicago/Images/Air-Jordan-1-Retro-Low-Golf-Chicago/Lv2/img01.jpg?fm=webp&auto=compress&w=480&dpr=2&updated_at=1642760150&h=320&q=60',name:'Jordan 1 Retro Low Golf',price:158),
    Shoe(imageUrl: 'https://images.stockx.com/images/Crocs-Pollex-Clog-by-Salehe-Bembury-Tide-Product.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1664259289&q=60',name:'Crocs Pollex Clog',price:58),
  ]; 


