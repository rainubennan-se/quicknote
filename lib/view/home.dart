import 'package:flutter/material.dart';
import 'package:quicknote/view/create.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'QuickNote',
          style: TextStyle(color: Colors.purple[900]),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Tasklist()));
              },
              icon: Icon(
                Icons.list,
                color: Colors.purple[900],
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.account_circle), Text('Profile')],
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: IconButton(
                  onPressed: () {},
                  color: Colors.deepPurple,
                  tooltip: 'Edit',
                  icon: const Icon(Icons.edit_calendar)),
              title: const Text('Title'),
              trailing: IconButton(
                  onPressed: () {},
                  color: Colors.deepPurple,
                  tooltip: 'Delete',
                  icon: const Icon(Icons.delete_outlined)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Create()));
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
