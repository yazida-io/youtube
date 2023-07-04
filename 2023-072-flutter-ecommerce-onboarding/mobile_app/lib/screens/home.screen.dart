import 'package:flutter/material.dart';
import 'package:mobile_app/models/category.model.dart';
import 'package:mobile_app/screens/products.screen.dart';
import 'package:mobile_app/services/product.service.dart';

import '../models/product.model.dart';
import '../widgets/product-card.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search ...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: HeroWidget(),
          ),
          ProductCategories(),
          ProductCategorySection(
            name: 'New Arrivals',
            category: 'sacs',
          ),
          ProductCategorySection(
            name: 'Vetements',
            category: 'vetements',
          ),
          ProductCategorySection(
            name: 'Montres',
            category: 'montres',
          ),
        ],
      ),
    );
  }
}

class ProductCategories extends StatefulWidget {
  const ProductCategories({super.key});

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  List<Category> categories = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxHeight: 100),
          child: FutureBuilder(
            future: ProductService.categories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: snapshot.data!.map<Widget>((category) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey.withOpacity(.3),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            image: DecorationImage(
                              image: NetworkImage(category.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 3,
                            ),
                            color: Colors.black.withOpacity(0.3),
                            child: Center(
                              child: Text(
                                category.name,
                                style: const TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        )
      ],
    );
  }
}

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  final _infos = [
    {
      'code': 'Summer Offer',
      'title': '20% off in our \n All products',
      'image':
          'https://plus.unsplash.com/premium_photo-1680831748248-47616728ee9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80',
    },
    {
      'code': 'Summer Offer',
      'title': '20% off in our\nAll products',
      'image':
          'https://images.unsplash.com/photo-1528154291023-a6525fabe5b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
    }
  ];
  int _currentInfo = 0;
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() => _currentInfo = _pageController.page!.round());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: NetworkImage(_infos[_currentInfo]['image']!),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _infos
                .map((info) => Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: _buildInfo(info),
                    ))
                .toList(),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.only(bottom: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: _infos.map((info) => _buildPagination(info)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPagination(Map<String, String> info) {
    return Container(
      width: _infos.indexOf(info) == _currentInfo ? 30 : 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: _infos.indexOf(info) == _currentInfo
            ? Colors.white
            : Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildInfo(Map<String, String> info) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _infos[_currentInfo]['code']!.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _infos[_currentInfo]['title']!.split('\n').map(
            (word) {
              return Text(
                word.trim(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ).toList(),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          child: const Text('Shop Now'),
        ),
      ],
    );
  }
}

class ProductCategorySection extends StatelessWidget {
  final String category;
  final String name;

  const ProductCategorySection(
      {super.key, required this.category, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProductsScreen.routeName,
                      arguments: {'category': category, 'name': name}
                  );
                },
                child: const Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 350,
          child: FutureBuilder(
              future: ProductService.products(category),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: snapshot.data![index],
                      );
                    },
                  );
                }
                return const CircularProgressIndicator();
              }),
        )
      ],
    );
  }
}
