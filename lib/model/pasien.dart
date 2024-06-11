class Pasien {
  String idPasien;
  String nomorRm;
  String namaPasien;
  String tglLahirPasien;
  String noTlpPasien;
  String alamatPasien;

  Pasien(
      {required this.idPasien,
      required this.nomorRm,
      required this.namaPasien,
      required this.tglLahirPasien,
      required this.noTlpPasien,
      required this.alamatPasien});

  get idPas => "Id Pasien";
  get noRm => "No.RM";
  get nama => "Nama";
  get tglLahir => "Tanggal Lahir";
  get noTlp => "No Telepon";
  get alamat => "Alamat";
}
