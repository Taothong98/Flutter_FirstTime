import 'package:flutter/material.dart';
import 'screenprofile.dart';


class listRider extends StatefulWidget {
  const listRider({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<listRider> {
  TextEditingController editingController = TextEditingController();

  List<CompanyStocks> stocksList = [
 CompanyStocks(name: "ริวมินะเซเนน",price: 10.34,image: 'images/rider/ริวมินะเซเนน.png'),
 CompanyStocks(name: "เจนนี่", price: 56.96,image: 'images/rider/เจนนี่.jpg'),
 CompanyStocks(name: "อานอสโกดีโอส", price: 32.43,image: 'images/rider/อานอสโกดีโอส.jpg'),
 CompanyStocks(name: "เมรี่ยาน่า", price: 77.44,image: 'images/rider/เมรี่ยาน่า.jpg'),

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
          backgroundColor: Colors.red,
          title: const Text("Rider"),
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
      settings: RouteSettings(
        arguments: {
          'name': items[index].name,
          'price': items[index].price,
          'image': items[index].image,
        },
      ),
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
