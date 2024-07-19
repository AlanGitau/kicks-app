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
