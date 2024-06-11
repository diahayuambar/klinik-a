import 'package:flutter/material.dart';
import '/model/pasien.dart';
import '/ui/pasien_detail_page.dart';
import '/ui/pasien_page.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _idPasienCtrl = TextEditingController();
  final _nomorRmPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _tglLahirPasienCtrl = TextEditingController();
  final _noTlpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [_fieldNamaPasien(), SizedBox(height: 20), _tombolSimpan()],
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: column,
        ),
      ),
    );
  }

  Widget _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          var _idPasienCtrl;
          var _nomorRmPasienCtrl;
          var _namaPasienCtrl;
          var _tglLahirPasienCtrl;
          var _noTlpPasienCtrl;
          var _alamatPasienCtrl;
          Pasien pasien = new Pasien(
              idPasien: _idPasienCtrl.text,
              nomorRm: _nomorRmPasienCtrl.text,
              namaPasien: _namaPasienCtrl.text,
              tglLahirPasien: _tglLahirPasienCtrl.text,
              noTlpPasien: _noTlpPasienCtrl.text,
              alamatPasien: _alamatPasienCtrl.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan"));
  }
}
