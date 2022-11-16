import 'package:flutter/material.dart';
import 'package:tugas_flutter/form.dart';
import 'package:tugas_flutter/main.dart';

class budget extends StatefulWidget {
  budget({super.key, this.budgetItem});
  var budgetItem;

  @override
  State<budget> createState() => _budgetState();
}

class _budgetState extends State<budget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const tambahBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => budget()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          widget.budgetItem.length == 0
              ? Center(
                  child: Column(
                    children: [
                      const Text(
                        "Tidak terdapat data!",
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: widget.budgetItem.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(widget.budgetItem[index].judul),
                          subtitle: Text(widget.budgetItem[index].nominal),
                          trailing: Column(
                            children: [
                              Text(widget.budgetItem[index].jenis),
                              Text(widget.budgetItem[index].date)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
