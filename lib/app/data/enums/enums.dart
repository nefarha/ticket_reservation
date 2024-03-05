enum StatusPesanan {
  pending,
  diterima,
  ditolak,
}

enum AccountType { user, admin }

enum SortBy { latest, oldest }

enum Wisata {
  taman_air,
  taman_wisata,
}

num wisataHarga(Wisata wisata) {
  switch (wisata) {
    case Wisata.taman_air:
      return 50000;

    case Wisata.taman_wisata:
      return 100000;
  }
}
