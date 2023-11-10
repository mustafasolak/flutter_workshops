import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listview_without_rebuild/models/list_item_with_image.dart';
import 'package:listview_without_rebuild/widgets/image_item.dart';

class MsImageListview extends StatefulWidget {
  const MsImageListview({Key? key}) : super(key: key);

  @override
  State<MsImageListview> createState() => _MsImageListviewState();
}

class _MsImageListviewState extends State<MsImageListview> {
  List<ListItemWithImage> items = [
    ListItemWithImage(
      imageUrl:
          'https://i2.milimaj.com/i/milliyet/75/0x410/5c8cd83a07291c1d74001510.jpg',
      description: 'Nevşehir',
    ),
    ListItemWithImage(
      imageUrl:
          'https://www.kulturportali.gov.tr/contents/images/16062014_de073761-5a12-41d3-b0ba-d36cedddd107.jpg?format=jpg&quality=50&width=1200',
      description: 'İncesu Kanyonu - Çorum',
    ),
    ListItemWithImage(
      imageUrl:
          'https://www.kulturportali.gov.tr/contents/images/08022013_db48ad6f-d852-4574-adef-6efd2562a4ef.jpg?format=jpg&quality=50&width=1200',
      description: 'Hazar Gölü - Elazığ',
    ),
    ListItemWithImage(
      imageUrl:
          'https://www.kulturportali.gov.tr/contents/images/tortum%20şelalesi%20logolu.jpg?format=jpg&quality=50&width=1200',
      description: 'Tortum Şelalesi - Erzurum',
    ),
    ListItemWithImage(
      imageUrl:
          'https://www.kulturportali.gov.tr/contents/images/şahinkaya%20kanyonu%20logolu.jpg?format=jpg&quality=50&width=1200',
      description: 'Şahinkaya Kanyonu - Samsun',
    ),
    ListItemWithImage(
      imageUrl:
          'https://www.kulturportali.gov.tr/contents/images/narlıgöl%20logolu.jpg?format=jpg&quality=50&width=1200',
      description: 'Narlıgöl - Aksaray',
    ),
    ListItemWithImage(
      imageUrl:
          'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/manavgat-36592.webp',
      description: 'Manavgat Şelalesi, Antalya',
    ),
    ListItemWithImage(
      imageUrl:
          'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/salda4-35856.webp',
      description: 'Salda Gölü, Burdur',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        print('item build. item index :$index');
        return Container(
          padding: const EdgeInsets.all(15.0),
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 15,
          ),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Text(
                items[index].description,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ImageItem(
                  item: items[index],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
