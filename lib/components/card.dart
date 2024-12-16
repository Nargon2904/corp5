import 'package:corp5/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../models/rec_list.dart';
import '../pages/record_page.dart';

class ItemList extends StatefulWidget {
  final Listing listing;
  const ItemList({super.key, required this.listing});
 @override
  ItemListState createState() => ItemListState();
}

class ItemListState extends State<ItemList> {  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const LinearBorder(),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecordPage(listing: widget.listing),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://raw.githubusercontent.com/Nargon2904/corp5/refs/heads/main/assets/images/${widget.listing.img[0]}.jpg',
                  width: 320,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.listing.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        for (var l in listings) {
                          if (l == widget.listing) {
                            listings.remove(l);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          }
                        }
                      },
                      child: const Text(
                        'Удалить',
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 100, 100, 100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}