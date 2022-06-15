import 'package:flutter/material.dart';

class CografyaDers extends StatelessWidget {
  const CografyaDers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        appBar: AppBar(
          backgroundColor: Color(0xff008E89),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.forward))
          ],
          title: Text('9.Sınıf Coğrafya Konuları'),
        ),
        body: CografyaPage(),
      ),
    );
  }
}

class CografyaPage extends StatelessWidget {
  CografyaPage({Key? key}) : super(key: key);
  final List<String> entries = <String>[
    '1.Ünite:  Doğal Sistemler',
    '2.Ünite:  Beşeri Sistemler',
    '3.Ünite:  Küresel Ortam: Bölgeler Ve Ülkeler',
    '4.Ünite:  Çevre ve Toplum',
  ];
  final List<int> colorCodes = <int>[600];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color(0xffFFB72B)),
            onPressed: () {},
            child: Container(
              height: 50,
              color: Color(0xffFFB72B),
              child: Center(
                  child: Text(
                '${entries[index]}',
                style: TextStyle(color: Colors.black),
              )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
