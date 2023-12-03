
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/chat_model.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        "Favourite Contacts",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      )
                  ),
                    IconButton(
                      iconSize: 22,
                      icon: const Icon(Icons.more_horiz),
                      color: Colors.blueGrey,
                      onPressed: (){},
                    )
                ],
                ),

          ),
          Container(
            height: 100,
            child: ListView.builder(

                itemCount: favorite.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int Index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
                       children: [
                         CircleAvatar(
                          radius: 35,
                           backgroundImage: AssetImage(favorite[Index].imageUrl),
                         ),
                         const SizedBox(height: 7),
                         Text(
                           favorite[Index].name,
                           style: const TextStyle(
                             color: Colors.blueGrey,
                             fontSize: 14,
                             fontWeight: FontWeight.w600
                           ),
                         ),
                       ],
                     ),
                   );
                },
                ),

          )
        ],
      ),
    );
  }
}
