import 'package:flutter/material.dart';

import 'package:siatma_mobile/components/colors.dart';
import 'package:siatma_mobile/model/formevaluasi_model.dart';
import 'package:siatma_mobile/view/detailFormEvaluasiScreen.dart';

class FormEItem extends StatelessWidget {
  final MatakuliahE matakuliah;

  FormEItem(this.matakuliah);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, right: 2, bottom: 7, top: 7),
      child: InkWell(
        child: Container(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: ExactAssetImage('assets/images/nilaiback.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                color: blueatmacolor,
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.white60))),
                  child: matakuliah.status == true
                      ? Icon(Icons.event_available_sharp,
                          color: Colors.green[400])
                      : Icon(Icons.event_busy_rounded, color: Colors.red[400]),
                ),
                title: Text(
                  "${matakuliah.matakuliah}",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.keyboard_arrow_right,
                    color: Colors.white, size: 40.0))),
        onTap: () {
          if (matakuliah.status == false) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailEvaluasiScreen(matakuliah.idkrs)),
            );
          } else {
            final snackBar = SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red[800],
              duration: Duration(milliseconds: 800),
              content: Text("Mata kuliah sudah dievaluasi"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //       image: DecorationImage(
    //         colorFilter: ColorFilter.mode(
    //             Colors.black.withOpacity(0.5), BlendMode.dstATop),
    //         image: ExactAssetImage('assets/images/nilaiback.jpg'),
    //         fit: BoxFit.cover,
    //       ),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey,
    //           offset: Offset(0.0, 1.0), //(x,y)
    //           blurRadius: 6.0,
    //         ),
    //       ],
    //       color: blueatmacolor,
    //       borderRadius: BorderRadius.circular(20)),
    //   padding: EdgeInsets.all(20),
    //   margin: EdgeInsets.symmetric(vertical: 5),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Row(
    //         children: [
    //           Expanded(
    //             flex: 2,
    //             child: Text(
    //               "Mata Kuliah ",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: Text(
    //               ":",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 5,
    //             child: Text(
    //               "${matakuliah.matakuliah}",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 8),
    //       Row(
    //         children: [
    //           Expanded(
    //             flex: 2,
    //             child: Text(
    //               "Kode ",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: Text(
    //               ":",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 5,
    //             child: Text(
    //               "${matakuliah.kode}",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 8),
    //       Row(
    //         children: [
    //           Expanded(
    //             flex: 2,
    //             child: Text(
    //               "Dosen",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: Text(
    //               ":",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 5,
    //             child: Text(
    //               "${matakuliah.dosen}",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //         ],
    //       ),
    //       if (matakuliah.dosen2 != "-") SizedBox(height: 8),
    //       if (matakuliah.dosen2 != "-")
    //         Row(
    //           children: [
    //             Expanded(
    //               flex: 2,
    //               child: Text(
    //                 "Dosen 2 ",
    //                 style: TextStyle(
    //                     color: Colors.white, fontWeight: FontWeight.w600),
    //               ),
    //             ),
    //             Expanded(
    //               flex: 1,
    //               child: Text(
    //                 ":",
    //                 style: TextStyle(
    //                     color: Colors.white, fontWeight: FontWeight.w600),
    //               ),
    //             ),
    //             Expanded(
    //               flex: 5,
    //               child: Text(
    //                 "${matakuliah.dosen2}",
    //                 style: TextStyle(
    //                     color: Colors.white, fontWeight: FontWeight.w600),
    //               ),
    //             ),
    //           ],
    //         ),
    //       SizedBox(height: 8),
    //       Row(
    //         children: [
    //           Expanded(
    //             flex: 2,
    //             child: Text(
    //               "Status",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: Text(
    //               ":",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 5,
    //             child: Text(
    //               matakuliah.status == "True"
    //                   ? "Sudah Evaluasi"
    //                   : "Belum Evaluasi",
    //               style: TextStyle(
    //                   color: Colors.white, fontWeight: FontWeight.w600),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
