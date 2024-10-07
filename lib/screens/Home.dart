import 'package:flutter/material.dart';
import 'package:todolistproject/constants/colors.dart';
import 'package:todolistproject/widgets/TodoITem.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGroundColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            searchBox(),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 48, bottom: 24),
                  child: const Text(
                    'Sua agenda: ',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                ),
                const TodoItem(),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget searchBox() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
            SizedBox(
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
