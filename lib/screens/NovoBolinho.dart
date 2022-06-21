import 'package:flutter/material.dart';
export 'NovoBolinho.dart';

class NovoBolinho extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Bolinho'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => {
                    Navigator.pop(context)
                  },
              child: const Text(
                'Adicionar',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.cake_outlined,
                    color: Colors.white,
                  ),
                  label: Text("Nome do bolo"),
                  labelStyle: TextStyle(color: Colors.orange),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange, width: 1, style: BorderStyle.solid))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.cake_outlined,
                    color: Colors.white,
                  ),
                  label: Text("Receita"),
                  labelStyle: TextStyle(color: Colors.orange),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange, width: 1, style: BorderStyle.solid))),
            ),
          ),
        ],
      ),
    );
  }
}
