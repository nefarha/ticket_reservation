enum StatusPesanan {
  pending,
  diterima,
  ditolak,
  req_cancel,
  cancel,
}

extension StatusPesananX on StatusPesanan {
  static final names = {
    StatusPesanan.diterima: 'Diterima',
    StatusPesanan.ditolak: "Ditolak",
    StatusPesanan.pending: "Pending",
    StatusPesanan.req_cancel: "Request Cancel",
    StatusPesanan.cancel: "Cancelled",
  };

  String? get code => names[this] ?? '';
}

enum AccountType { user, admin }

enum SortBy { latest, oldest }

enum Wisata {
  taman_air,
  taman_wisata,
}
