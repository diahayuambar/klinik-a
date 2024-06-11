import 'package:flutter/material.dart';
import 'pasien_update_form.dart';
import '../model/pasien.dart';
import '/ui/pasien_page.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11),
            Text(
              "Id Pasien : ${widget.pasien.idPasien}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "No RM : ${widget.pasien.nomorRm}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Nama : ${widget.pasien.namaPasien}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Tanggal Lahir : ${widget.pasien.tglLahirPasien}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "No. Telepon : ${widget.pasien.noTlpPasien}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Alamat : ${widget.pasien.alamatPasien}",
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
                      PasienUpdateForm(pasien: widget.pasien)));
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
                      MaterialPageRoute(builder: (context) => PasienPage()));
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
