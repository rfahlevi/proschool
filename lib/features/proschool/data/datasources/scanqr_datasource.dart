import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ProschoolScan {
  static Future loginCbt() async {
    String qrScanRes;
    try {
      qrScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#0547A8',
        'Batal',
        true,
        ScanMode.QR,
      );

      return qrScanRes;
    } on PlatformException {
      qrScanRes = 'Gagal Scan QR';
    }
  }

  static Future logoutCbt() async {
    String qrScanRes;
    try {
      qrScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#0547A8',
        'Batal',
        true,
        ScanMode.QR,
      );

      return qrScanRes;
    } on PlatformException {
      qrScanRes = 'Gagal Scan QR';
    }
  }
}
