// main.dart
import 'package:flutter/material.dart';
// import 'screenprofileRider.dart';
import 'screenprofile.dart';

class listRider extends StatefulWidget {
  const listRider({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<listRider> {
  TextEditingController editingController = TextEditingController();

  List<CompanyStocks> stocksList = [
 CompanyStocks(name: "A10 NETWORKS INC.",price: 10.34,image: 'images/rider/1.jpg',),
 CompanyStocks(name: "Intel Corp", price: 56.96,image: 'images/rider/p3.png'),
 CompanyStocks(name: "HP Inc", price: 32.43,image: 'images/rider/p4.png'),
 CompanyStocks(name: "Advanced Micro Devices Inc.", price: 77.44,image: 'images/rider/p5.png'),
 CompanyStocks(name: "Apple Inc", price: 133.98,image: 'images/rider/p6.png'),
 CompanyStocks(name: "Amazon.com, Inc.", price: 3505.44,image: 'images/rider/p7.png'),
 CompanyStocks(name: "Microsoft Corporation", price: 265.51,image: 'images/rider/p8.png'),
 CompanyStocks(name: "Facebook", price: 339.1,image: 'images/rider/p9.png'),
 CompanyStocks(name: "A10 NETWORKS INC.", price: 10.34,image: 'images/rider/p10.jpg'),

  ];
   List<CompanyStocks> items = [];
   @override
   void initState(){
    items = stocksList;
    super.initState();
   }

   void searchItems(String query){
    setState(() {
      items = stocksList
      .where((item) => 
          item.name.toLowerCase().contains(query.toLowerCase()) 
          || item.price.toString().contains(query)
          )
        .toList();
    });
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View Builder"),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.all(8.0),
              child: TextField( 
                onChanged: (value) {
                  searchItems(value);
                },
                controller: editingController,
                decoration: InputDecoration( 
                  labelText: 'Search',
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: 
                    BorderRadius.all(Radius.circular(25.0))
                  )

                ),
              ),),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 10, 10),
                        child: ListTile(
                          title: Text(
                            items[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          leading: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.blue[900],
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(stocksList[index].image),
                            ),
                          ),
                          trailing: Text("\$ ${stocksList[index].price}"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profile(),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyStocks {
  String name;
  double price;
  String image;

  CompanyStocks({
    required this.name,
    required this.price,
    required this.image,
  });
}
