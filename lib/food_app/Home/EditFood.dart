import 'package:demo_app/food_app/Data/FakeDataCategories.dart';
import 'package:demo_app/food_app/Home/DetailFood.dart';
import 'package:demo_app/food_app/Models/FoodsModel.dart';
import 'package:flutter/material.dart';

class EditFood extends StatefulWidget {
  final List<String> list;
  final FoodsModel model;

  const EditFood({super.key, required this.list, required this.model});

  @override
  State<EditFood> createState() => _EditFoodState();
}

class _EditFoodState extends State<EditFood> {
  String txt = '';
  String s = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditFood'),
        leading: IconButton(
          onPressed: () =>
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => DetailFood(foodsModel: widget.model),)),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showMyDialogAdd(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Center(
          child: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (context, index) => _item(widget.list[index], index),
          )),
    );
  }

  Widget _item(String string, int index) {
    return Card(
      child: ListTile(
        title: Text(string),
        trailing: SizedBox(
          width: 60,
          child: Row(
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        _showMyDialogEdit(context, index);
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.green,
                      ))),
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.list.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialogAdd(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      s = value;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    addNewValue(s);
                    Navigator.pop(context);
                  });
                },
                child: const Text('Add')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialogEdit(BuildContext context, int index) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  initialValue: widget.list[index],
                  onChanged: (value) {
                    setState(() {
                      txt = value;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    setValue(index, txt);
                    Navigator.of(context).pop();
                  });
                },
                child: const Text('Save')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
          ],
        );
      },
    );
  }

  void setValue(int index, String newString) {
    widget.list[index] = newString;
  }

  void addNewValue(String newValue) {
    widget.list.add(newValue);
  }
}
