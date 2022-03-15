import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        centerTitle: true,
        title: Text(
          'Client',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFCCBC),
                  blurRadius: 3,
                ),
              ]),
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabled: true,
                  border: InputBorder.none,
                ),
              )),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });

                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(' dismissed')));
                  },
                  background: Container(
                    margin:
                        EdgeInsets.only(bottom: 10, top: 5, left: 25, right: 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)
                      ],
                    ),
                  ),
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 10, top: 5, left: 25, right: 5),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)
                      ],
                    ),
                    child: ListTile(
                      title: Stack(
                        children: [
                          Container(
                              height: 52,
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 5, left: 25, right: 5),
                              width: MediaQuery.of(context).size.width,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffF47D3A), blurRadius: 1)
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            " Thomas AndrewShelby",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              )),
                          Positioned(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://static.wikia.nocookie.net/pediaofinterest/images/2/26/MV5BMTQxODMxMjAzNl5BMl5BanBnXkFtZTcwMTczODc3OQ%40%40._V1_SY317_CR33%2C0%2C214%2C317_.jpg/revision/latest/scale-to-width-down/290?cb=20131011202426'),
                              maxRadius: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
