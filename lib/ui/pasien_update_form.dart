import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail_page.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idPasienCtrl = TextEditingController();
  final _nomorRmPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _tglLahirPasienCtrl = TextEditingController();
  final _noTlpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idPasienCtrl.text = widget.pasien.idPasien;
      _nomorRmPasienCtrl.text = widget.pasien.nomorRm;
      _namaPasienCtrl.text = widget.pasien.namaPasien;
      _tglLahirPasienCtrl.text = widget.pasien.tglLahirPasien;
      _noTlpPasienCtrl.text = widget.pasien.noTlpPasien;
      _alamatPasienCtrl.text = widget.pasien.alamatPasien;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldIdPasien(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldIdPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Id Pasien"),
      controller: _idPasienCtrl,
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _fieldTgllahirPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tglLahirPasienCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          var text;
          Pasien pasien = new Pasien(
              idPasien: _idPasienCtrl.text,
              nomorRm: _nomorRmPasienCtrl.text,
              namaPasien: _namaPasienCtrl.text,
              tglLahirPasien: _tglLahirPasienCtrl.text,
              noTlpPasien: _noTlpPasienCtrl.text,
              alamatPasien: _alamatPasienCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}

class _idPasienCtrl {
  static var text;
}
