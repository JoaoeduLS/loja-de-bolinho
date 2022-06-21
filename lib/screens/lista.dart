import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(16, (index) {
    return {
      "id": index,
      "title": "Bolo",
      "subtitle": "Sobremesa"
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[900],
        title: const Text('Bolinhos'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.orange,
        onPressed: () => {
          Navigator.pushNamed(context, "/novoLugar")
        },
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) => index < 15
                ? Card(
                    elevation: 6,
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(lista[index + 1]['id'].toString()),
                        backgroundColor: Colors.yellow[700],
                      ),
                      title: Text(lista[index]["title"]),
                      subtitle: Text(lista[index]["subtitle"]),
                      trailing: Icon(
                        Icons.cake_rounded,
                        color: Colors.yellow[700],
                      ),
                    ),
                  )
                : Card(
                    elevation: 6,
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      title: Text('Chegou ao fim'),
                      subtitle: Text('Adicione bolinhos mais tarde!'),
                    ),
                  )),
      ),
    );
  }
}
