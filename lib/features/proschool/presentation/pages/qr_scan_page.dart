// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:proschool/features/cbt/bloc/alarm_bloc.dart';
// import 'package:proschool/features/cbt/bloc/cbt_bloc.dart';
// import 'package:proschool/features/identificate/presentation/bloc/identificate_bloc.dart';

// import '../../../../router/router.dart';
// import '../../../../theme/textstyle.dart';

// class EntryQRScanPage extends StatefulWidget {
//   const EntryQRScanPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<EntryQRScanPage> createState() => _EntryQRScanPageState();
// }

// class _EntryQRScanPageState extends State<EntryQRScanPage> {

//   @override
//   void initState() {
//     cameraController = MobileScannerController(
//       detectionSpeed: DetectionSpeed.normal,
//       detectionTimeoutMs: 5000,
//       facing: CameraFacing.back,
//       torchEnabled: false,
//     );

//     cameraController!.isStarting;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     cameraController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var cbtMasuk = context.watch<IdentificateBloc>().school;
//     return MobileScanner(
//       controller: cameraController,
//       onScannerStarted: (arguments) {},
//       onDetect: (barcodes) {
//         if (barcodes.barcodes.first.rawValue == cbtMasuk.data?.cbtMasuk) {
//           setState(() {
//             context.read<AlarmBloc>().add(const AlarmEvent.correctAlarm());

//             context.pushReplacementNamed(Routes.cbt);
//           });
//         } else {
//           context.pop();
//         }
//       },
//     );
//   }
// }

// class OutQRScanPage extends StatefulWidget {
//   const OutQRScanPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<OutQRScanPage> createState() => _OutQRScanPageState();
// }

// class _OutQRScanPageState extends State<OutQRScanPage> {
//   MobileScannerController? cameraController;

//   @override
//   void initState() {
//     cameraController = MobileScannerController(
//       detectionSpeed: DetectionSpeed.noDuplicates,
//       facing: CameraFacing.back,
//       torchEnabled: false,
//     );
//     super.initState();
//   }

//   @override
//   void dispose() {
//     cameraController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var cbtMasuk = context.watch<IdentificateBloc>().school;
//     return MobileScanner(
//       controller: cameraController,
//       onScannerStarted: (arguments) {},
//       startDelay: true,
//       onDetect: (barcodes) {
//         if (barcodes.barcodes.first.rawValue == cbtMasuk.data?.cbtKeluar) {
//           setState(() {
//             context.read<CbtBloc>().add(const CbtEvent.unlockScreen());
//             context.read<AlarmBloc>().add(const AlarmEvent.correctAlarm());
//           });
//         } else {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(SnackBar(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(7),
//                 ),
//                 content: Text(
//                   'Barcode keluar salah !',
//                   style: ProschoolTS.whiteMedium,
//                 ),
//                 elevation: 0,
//                 behavior: SnackBarBehavior.floating,
//                 margin: EdgeInsets.only(
//                   bottom: MediaQuery.of(context).size.height / 1.2,
//                   left: 14,
//                   right: 14,
//                 ),
//                 duration: const Duration(seconds: 3),
//                 backgroundColor: Colors.red,
//               ))
//               .setState;
//         }

//         context.pop();
//       },
//     );
//   }
// }
