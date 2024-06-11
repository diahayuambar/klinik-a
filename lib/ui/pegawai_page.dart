import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail_page.dart';
import 'pegawai_item_page.dart';
import 'pegawai_form_page.dart';
import '../widget/sidebar.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
              pegawai: Pegawai(
                  idPegawai: "001",
                  nipPegawai: "19220318",
                  namaPegawai: "Diah Ayu Ambarwati",
                  tglLahirPegawai: "19 November 2002",
                  noTlpPegawai: "081223074187",
                  emailPegawai: "diahayuam@gmail.com",
                  passwordPegawai: "kepitingrebus")),
          PegawaiItem(
              pegawai: Pegawai(
                  idPegawai: "002",
                  nipPegawai: "19221798",
                  namaPegawai: "Manuel Rios Fernandez",
                  tglLahirPegawai: "17 Desember 1998",
                  noTlpPegawai: "087754689011",
                  emailPegawai: "manurios@gmail.com",
                  passwordPegawai: "lobsterladahitam")),
          PegawaiItem(
              pegawai: Pegawai(
                  idPegawai: "003",
                  nipPegawai: "19221303",
                  namaPegawai: "Patrick Quiroz",
                  tglLahirPegawai: "13 Maret 2000",
                  noTlpPegawai: "082178689053",
                  emailPegawai: "patrick@gmail.com",
                  passwordPegawai: "kerangajaib")),
        ],
      ),
    );
  }
}
