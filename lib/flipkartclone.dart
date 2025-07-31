import 'package:flutter/material.dart';

class Flipkartclone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Container(
          height: 200.0,
          width: 200.0,

          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage(
                '/Users/skundu/Development/flipkart/assets/images/flipkart-plus_8d85f4.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10.0),
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            // SizedBox(height:5.0 ),
            Menustripe(),
            // SizedBox(height:5.0 ),
            OfferSlider(),
            // SizedBox(height:5.0 ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemCard(
                    imageUrl:
                        '/Users/skundu/Development/flipkart/assets/images/mobiles.png',
                    offer: 'Min. 80% off',
                  ),
                  ItemCard(
                    imageUrl: 'assets/images/Grocery.png',
                    offer: 'Min. 30% off',
                  ),
                  ItemCard(
                    imageUrl:
                        '/Users/skundu/Development/flipkart/assets/images/fashion.png',
                    offer: 'Min. 70% off',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discounts for You',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Center(
                        child: Text(
                          'View all',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.white,
              height: 400.0,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: 
                      [
                        Expanded(child: ItemCard(imageUrl: '/Users/skundu/Development/flipkart/assets/images/electronic.png',)),
                        Expanded(child: ItemCard(imageUrl: '/Users/skundu/Development/flipkart/assets/images/home.jpg',))
                        ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: 
                      [
                        Expanded(child: ItemCard(imageUrl: '/Users/skundu/Development/flipkart/assets/images/applience.png',)),
                        Expanded(child: ItemCard(imageUrl: '/Users/skundu/Development/flipkart/assets/images/topoffers.png',))
                        ],
                    ),
                  ),
                  
                  
                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String? imageUrl;
  final String? offer;

  const ItemCard({super.key, this.imageUrl, this.offer});

  @override
  Widget build(BuildContext context) {
    // Placeholder content for ItemCard
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160.0,
        width: 130,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Colors.blueAccent.withOpacity(0.2),

          borderRadius: BorderRadius.circular(12.0),
        ),

        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 120.0,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '${imageUrl ?? '/Users/skundu/Development/flipkart/assets/images/topoffers.png'}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Container(
                height: 20.0,
                width: 100.0,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: Colors.yellow,
                ),
                child: Center(
                  child: Text(
                    offer ?? 'Min. 50% off',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: "search for products bargains and more",
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: const Color.fromARGB(255, 227, 219, 219),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              width: 50.0,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Center(child: Icon(Icons.mic, color: Colors.blueAccent)),
            ),
          ),
        ),
      ),
    );
  }
}

class Menustripe extends StatelessWidget {
  const Menustripe({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(color: Colors.white),

      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.5,
        scrollDirection: Axis.horizontal,

        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 37.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),

                  child: Center(child: Icon(Icons.menu, color: Colors.white)),
                ),

                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                ),
              ],
            ),
          ),

          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/applience.png',
            iteamLabel: 'Appliances',
          ),
          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/topoffers.png',
            iteamLabel: 'Top Offers',
          ),
          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/electronic.png',
            iteamLabel: 'Electronic',
          ),
          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/fashion.png',
            iteamLabel: 'Fashion',
          ),
          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/Grocery.png',
            iteamLabel: 'Grocery',
          ),
          MenuStripeItem(
            imageUrl:
                '/Users/skundu/Development/flipkart/assets/images/home.jpg',
            iteamLabel: 'Home',
          ),
        ],
      ),
    );
  }
}

class MenuStripeItem extends StatelessWidget {
  final String? imageUrl;
  final String? iteamLabel;

  const MenuStripeItem({
    super.key,
    required this.imageUrl,
    required this.iteamLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                '${imageUrl ?? '/Users/skundu/Development/flipkart/assets/images/topoffers.png'}',
              ),
            ),
          ),
        ),
        Text(
          iteamLabel ?? 'Top Offers',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
        ),
      ],
    );
  }
}

class OfferSlider extends StatelessWidget {
  const OfferSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder widget for OfferSlider
    return Container(
      height: 270.0,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.5,
        scrollDirection: Axis.horizontal,
        children: [
          OfferSliderItem(
            imageUrl:
                'https://cdn.pixabay.com/photo/2020/03/28/16/03/dog-4977599_1280.jpg',
            offerLabel:
                'Computer Bestesellers \n Laptops, Printers, Monitors, ',
          ),
          OfferSliderItem(
            imageUrl:
                'https://constantintegratedph.com/wp-content/uploads/2018/03/Beat-the-Summer-Heat-4-Types-of-Air-Conditioners-For-Your-Home.jpg',
            offerLabel:
                'Computer Bestesellers \n Laptops, Printers, Monitors, ',
          ),
          OfferSliderItem(
            imageUrl:
                'https://cielowigle.com/wp-content/uploads/2021/10/mini-split-with-cielo-breez-1.jpg',
            offerLabel:
                'Computer Bestesellers \n Laptops, Printers, Monitors, ',
          ),
          OfferSliderItem(
            imageUrl:
                'https://zebronics.com/cdn/shop/collections/Zeb-LED_TV-banner.png?v=1688110832&width=1600',
            offerLabel:
                'Computer Bestesellers \n Laptops, Printers, Monitors, ',
          ),
        ],
      ),
    );
  }
}

class OfferSliderItem extends StatelessWidget {
  final String? imageUrl;
  final String? offerLabel;
  final String? offerPercentage;

  const OfferSliderItem({
    super.key,
    required this.imageUrl,
    required this.offerLabel,
    this.offerPercentage,
  });

  @override
  Widget build(BuildContext context) {
    // Placeholder content for the offer slider item
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(imageUrl ?? '').image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offerLabel ?? '',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 30.0,
                width: 100.0,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Center(
                  child: Text(
                    offerPercentage ?? '30-75% OFF',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              SizedBox(height: 50.0),

              Container(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No Cost EMI  Durablility Certified',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
