import 'package:flutter/material.dart';
import 'pegawai_update_form.dart';
import '../model/pegawai.dart';
import '/ui/pegawai_page.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pegawai")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11),
            Text(
              "Id Pegawai : ${widget.pegawai.idPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "NIP : ${widget.pegawai.nipPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Nama : ${widget.pegawai.namaPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Tanggal Lahir : ${widget.pegawai.tglLahirPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "No. Telepon : ${widget.pegawai.noTlpPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Email : ${widget.pegawai.emailPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Password : ${widget.pegawai.passwordPegawai}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _tombolUbah(),
                _tombolHapus(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  Widget _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PegawaiPage()));
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
