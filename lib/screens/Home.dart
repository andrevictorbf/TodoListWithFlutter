import 'package:flutter/material.dart';
import 'package:todolistproject/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGroundColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            searchBox(),
          ],
        ),
      ),
    );
  }

  Widget searchBox() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: tdBlack,
                size: 24,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 16, minWidth: 24),
              border: InputBorder.none,
              hintText: 'Pesquisa',
              hintStyle: TextStyle(color: tdGrey)),
        ),
      );

  AppBar _buildAppBar() => AppBar(
        backgroundColor: tdBGroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 32,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/borba.png'),
              ),
            )
          ],
        ),
      );
}
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           backgroundColor: tdBGroundColor,
//           elevation: 0,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Icon(
//                 Icons.menu,
//                 color: tdBlack,
//                 size: 32,
//               ),
//               Container(
//                 height: 40,
//                 width: 40,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset('assets/images/borba.png'),
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
// }
