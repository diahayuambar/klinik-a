import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '/ui/pegawai_detail_page.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _tglLahirPegawaiCtrl = TextEditingController();
  final _noTlpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idPegawaiCtrl.text = widget.pegawai.idPegawai;
      _nipPegawaiCtrl.text = widget.pegawai.nipPegawai;
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
      _tglLahirPegawaiCtrl.text = widget.pegawai.tglLahirPegawai;
      _noTlpPegawaiCtrl.text = widget.pegawai.noTlpPegawai;
      _emailPegawaiCtrl.text = widget.pegawai.emailPegawai;
      _passwordPegawaiCtrl.text = widget.pegawai.passwordPegawai;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldIdPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Id Pegawai"),
      controller: _idPegawaiCtrl,
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  _fieldTgllahirPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tglLahirPegawaiCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          var text;
          Pegawai pegawai = new Pegawai(
              idPegawai: _idPegawaiCtrl.text,
              nipPegawai: _nipPegawaiCtrl.text,
              namaPegawai: _namaPegawaiCtrl.text,
              tglLahirPegawai: _tglLahirPegawaiCtrl.text,
              noTlpPegawai: _noTlpPegawaiCtrl.text,
              emailPegawai: _emailPegawaiCtrl.text,
              passwordPegawai: _passwordPegawaiCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}

class _idPegawaiCtrl {
  static var text;
}
