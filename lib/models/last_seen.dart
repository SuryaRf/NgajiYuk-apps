class LastSeen {
  final String imgAsset;
  final String title;
  final String bookmark;

  LastSeen(
      {required this.imgAsset, required this.title, required this.bookmark});
}

List<LastSeen> lastSeen = [
  LastSeen(
      imgAsset: 'assets/images/lastseen1',
      title: 'Belajar Huruf Hijaiyah',
      bookmark: 'Video Tersimpan'),
  LastSeen(
      imgAsset: 'assets/images/lastseen2',
      title: 'Mengenal Jenis Tajwid',
      bookmark: 'Video Tersimpan'),
];
