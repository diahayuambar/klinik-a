import 'package:flutter/material.dart';
import '/model/pegawai.dart';
import '/ui/pegawai_detail_page.dart';
import '/ui/pegawai_page.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _idPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _tglLahirPegawaiCtrl = TextEditingController();
  final _noTlpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [_fieldNamaPegawai(), SizedBox(height: 20), _tombolSimpan()],
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: column,
        ),
      ),
    );
  }

  Widget _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          var _idPegawaiCtrl;
          var _nipPegawaiCtrl;
          var _tglLahirPegawaiCtrl;
          var _noTlpPegawaiCtrl;
          var _emailPegawaiCtrl;
          var _passwordPegawaiCtrl;
          Pegawai pegawai = new Pegawai(
              idPegawai: _idPegawaiCtrl.text,
              nipPegawai: _nipPegawaiCtrl.text,
              namaPegawai: _namaPegawaiCtrl.text,
              tglLahirPegawai: _tglLahirPegawaiCtrl.text,
              noTlpPegawai: _noTlpPegawaiCtrl.text,
              emailPegawai: _emailPegawaiCtrl.text,
              passwordPegawai: _passwordPegawaiCtrl.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan"));
  }
}
