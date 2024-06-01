import 'package:flutter/material.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({super.key});

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("AddToDo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Purpose",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                minLines: 5,
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:  WidgetStateProperty.all<Color>(Colors.white.withOpacity(0.7),),
                ),
                child: Text("Submit",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
