
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserCollectionList extends StatefulWidget {
  const UserCollectionList({super.key,required this.docId});
  final dynamic docId;

  @override
  State<UserCollectionList> createState() => _UserCollectionListState();
}

class _UserCollectionListState extends State<UserCollectionList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('User Collection List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collectionGroup('users').snapshots(),
        builder:(BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } 
          else if(!snapshot.hasData){
            return const Center(
              child: Text('Empty'),
            );
          }
          else{
            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      shadowColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color : Colors.black12,
                          width : 1.0,
                          style : BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      ),
                      elevation: 4,
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const UserCollectionList()),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot.data.docs[index].id,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.black54
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    );
                  }
                )
              ],
            );
          }
        }
      )
    );
  }
}