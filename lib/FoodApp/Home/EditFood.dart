import 'package:demo_app/FoodApp/Data/FakeDataCategories.dart';
import 'package:flutter/material.dart';

class EditFood extends StatefulWidget {
  final List<String> list;

  const EditFood({super.key, required this.list});

  @override
  State<EditFood> createState() => _EditFoodState();
}

class _EditFoodState extends State<EditFood> {
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditFood'),
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
              children: const <Widget>[
                TextField(),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {

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
  
  void setValue(int index ,String newString){
    widget.list[index] = newString;
  }
}
