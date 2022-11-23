import 'package:flutter/material.dart';
import 'package:tugas_flutter/pages/data.dart';
import 'package:tugas_flutter/main.dart';
import 'package:tugas_flutter/model/budget.dart';
import 'package:tugas_flutter/drawer.dart';

class tambahBudgetPage extends StatefulWidget {
  const tambahBudgetPage({super.key});

  @override
  State<tambahBudgetPage> createState() => _tambahBudgetPageState();
}

class _tambahBudgetPageState extends State<tambahBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String _hari = "";
  DateTime? _date;
  String jenisBudget = "Pilih Jenis";
  List<String> listJenisBudget = ["Pilih Jenis", "Pemasukan", "Pengeluaran"];

  void _addBudget() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        String hari = _date.toString();
        _hari = hari;
        hari = hari.substring(0, 10);
        setBudget(_judul, _nominal, jenisBudget, hari);
      });

      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 15,
            child: Container(
              child: ListView(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                shrinkWrap: true,
                children: <Widget>[
                  Center(child: const Text('Informasi Data !')),
                  SizedBox(height: 20),
                  Text(
                    'Judul: ' + _judul,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Nominal: ' + _nominal,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Jenis: ' + jenisBudget,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Tanggal: ' + _hari.substring(0, 10),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        _judul = "";
                        _nominal = "";
                        _hari = "";
                        jenisBudget = "Pilih Jenis";
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const tambahBudgetPage()),
                      );
                    },
                    child: Text('Kembali'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Budget'),
      ),
      drawer: MyDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Judul",
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    validator: (String? value) {
                      return value == null ? 'Tidak Boleh Kosong!' : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Nominal",
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    validator: (String? value) {
                      return value == null ? 'Tidak Boleh Kosong!' : null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              labelText: "Pilih Jenis",
                            ),
                            value: jenisBudget,
                            items: listJenisBudget.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                jenisBudget = value!;
                              });
                            },
                            validator: (String? value) {
                              return value == null
                                  ? 'Tidak Boleh Kosong!'
                                  : null;
                            },
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2023),
                        ).then((value) {
                          setState(() {
                            _date = value;
                          });
                        });
                      },
                      child: Text("Pilih Tanggal"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: TextButton(
          child: const Text(
            "Simpan",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: _addBudget,
        ),
      ),
    );
  }
}
