import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail_page.dart';
import 'pasien_item_page.dart';
import 'pasien_form_page.dart';
import '../widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
                  idPasien: "232405001",
                  nomorRm: "R0001",
                  namaPasien: "Bryan Domani",
                  tglLahirPasien: "29 Juli 2000",
                  noTlpPasien: "087754689011",
                  alamatPasien: "Jakarta")),
          PasienItem(
              pasien: Pasien(
                  idPasien: "232405002",
                  nomorRm: "R0002",
                  namaPasien: "Al Ghazali",
                  tglLahirPasien: "01 September 1997",
                  noTlpPasien: "087754689097",
                  alamatPasien: "Rumah Ahmad Dhani")),
          PasienItem(
              pasien: Pasien(
                  idPasien: "232405003",
                  nomorRm: "R0003",
                  namaPasien: "Kendall Jenner",
                  tglLahirPasien: "03 November 1995",
                  noTlpPasien: "087723456789",
                  alamatPasien: "Jl. Menuju Surga")),
        ],
      ),
    );
  }
}
