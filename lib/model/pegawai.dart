class Pegawai {
  String idPegawai;
  String nipPegawai;
  String namaPegawai;
  String tglLahirPegawai;
  String noTlpPegawai;
  String emailPegawai;
  String passwordPegawai;

  Pegawai(
      {required this.idPegawai,
      required this.nipPegawai,
      required this.namaPegawai,
      required this.tglLahirPegawai,
      required this.noTlpPegawai,
      required this.emailPegawai,
      required this.passwordPegawai});

  get id => "ID Pegawai";
  get nip => "NIP";
  get nama => "Nama Pegawai";
  get tglLahir => "Tanggal Lahir";
  get noTlp => "No. Telepon";
  get email => "Email";
  get pswd => "Password";
}
