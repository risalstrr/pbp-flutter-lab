import 'package:flutter/material.dart';
import 'package:tugas_flutter/drawer.dart';
import 'package:tugas_flutter/pages/form.dart';
import 'package:tugas_flutter/main.dart';
import 'package:tugas_flutter/model/budget.dart';

class budget extends StatefulWidget {
  budget({super.key});

  @override
  State<budget> createState() => _budgetState();
}

class _budgetState extends State<budget> {
  static List<Budget> listBudget = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          listBudget == null || listBudget.isEmpty
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
                    itemCount: listBudget.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(listBudget[index].judul),
                          subtitle: Text(listBudget[index].nominal),
                          trailing: Column(
                            children: [
                              Text(listBudget[index].jenis),
                              Text(listBudget[index].date)
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

void setBudget(String judul, String nominal, String jenis, String tanggal) {
  Budget newBudget = Budget(judul, nominal, jenis, tanggal);
  _budgetState.listBudget.add(newBudget);
}
