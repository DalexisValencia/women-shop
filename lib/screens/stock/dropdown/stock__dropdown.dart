import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/lists/categories.dart';
import 'package:women_shop/styles/appBarText.dart';

class DropdownFilter extends StatefulWidget {
  const DropdownFilter({Key? key}) : super(key: key);

  @override
  _DropdownFilterState createState() => _DropdownFilterState();
}

class _DropdownFilterState extends State<DropdownFilter> {
  String dropdownValue = 'Shirt';
  CategoriesBloc? categoriesinstance;
  @override
  void initState() {
    categoriesinstance = BlocProvider.of<CategoriesBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButton<String>(
          underline: SizedBox(),
          value: dropdownValue,
          icon: Container(
            margin: EdgeInsets.only(
              left: 3,
            ),
            child: Icon(
              Icons.arrow_drop_down,
            ),
          ),
          iconSize: 28,
          elevation: 0,
          style: AppBarTextFilter.titleSelection(context),
          onChanged: (String? value) {
            categoriesinstance!.add(ChangeCategory(value!));
            setState(() {
              dropdownValue = value;
            });
          },
          items: categories.map(
            (e) {
              return DropdownMenuItem(
                value: e.name,
                child: Text(
                  e.name!,
                  textAlign: TextAlign.center,
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
