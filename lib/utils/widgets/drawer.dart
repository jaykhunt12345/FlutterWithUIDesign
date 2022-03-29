import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/Favourites_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/transaction_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/account_page.dart';
import 'package:flutter_ui_project_1/pages/login_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/people_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/user_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/wishlist_page.dart';
import 'package:flutter_ui_project_1/utils/widgets/home_widgets/yourorders_page.dart';

class MyDrawer extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Jay Khunt';
    final email = 'jaykhunt1591@gmail.com';
    final urlImage =
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/591f1488-4359-4789-9138-7d1f0892024e/dbufk27-f4464a29-d845-4710-a0c3-cefe538f0fa8.jpg/v1/fill/w_1024,h_1079,q_75,strp/yin__yang_tigers_by_pumidlo_dbufk27-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU5MWYxNDg4LTQzNTktNDc4OS05MTM4LTdkMWYwODkyMDI0ZVwvZGJ1ZmsyNy1mNDQ2NGEyOS1kODQ1LTQ3MTAtYTBjMy1jZWZlNTM4ZjBmYTguanBnIiwiaGVpZ2h0IjoiPD0xMDc5Iiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvNTkxZjE0ODgtNDM1OS00Nzg5LTkxMzgtN2QxZjA4OTIwMjRlXC9wdW1pZGxvLTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.8JF-9H1TuCCcm9KaboSHFsr_H1iXJSFCSOEtxmLgukQ";
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 37, 46, 51),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserPage(
                    name: name,
                    urlImage: urlImage,
                  ),
                ),
              ),
            ),
            Container(
              padding: Padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                    onClicked: () => selecteditem(context, 0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Your Orders',
              icon: Icons.search,
              onClicked: () => selecteditem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Wish List',
              icon: Icons.list_alt_outlined,
              onClicked: () => selecteditem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Account',
              icon: Icons.account_box,
              onClicked: () => selecteditem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
              onClicked: () => selecteditem(context, 4),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Transactions',
              icon: Icons.payments,
              onClicked: () => selecteditem(context, 5),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Log Out',
              icon: Icons.logout_sharp,
              onClicked: () => selecteditem(context, 6),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add_comment_outlined,
                ),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final Color = Colors.white;

    return TextField(
      style: TextStyle(color: Color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(color: Color),
        prefixIcon: Icon(
          Icons.search,
          color: Color,
        ),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final Color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: Color,
      ),
      title: Text(text, style: TextStyle(color: Color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selecteditem(BuildContext context, int index) {
    // Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => YourOrdersPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WishListPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AccountPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TransactionPage(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
    }
  }
}
