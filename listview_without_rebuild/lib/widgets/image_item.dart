import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:listview_without_rebuild/models/list_item_with_image.dart';

class ImageItem extends StatefulWidget {
  final ListItemWithImage item;

  const ImageItem({super.key, required this.item});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem>
    with AutomaticKeepAliveClientMixin<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fadeInDuration: Duration(milliseconds: 10),
      fadeOutDuration: Duration(milliseconds: 10),
      alignment: Alignment.center,
      width: double.infinity,
      fit: BoxFit.cover,
      height: 300,
      placeholder: (context, url) =>
          Center(child: CupertinoActivityIndicator()),
      // Center(child: const CircularProgressIndicator()),
      imageUrl: widget.item.imageUrl,
    );

    // return Image.network(
    //   widget.item.imageUrl,
    //   fit: BoxFit.contain,
    // );

    // return CachedNetworkImage(
    //   fadeInDuration: const Duration(milliseconds: 10),
    //   fadeOutDuration: const Duration(milliseconds: 10),
    //   alignment: Alignment.center,
    //   width: double.infinity,
    //   fit: BoxFit.cover,
    //   height: 300,
    //   // ignore: prefer_const_constructors
    //   placeholder: (context, url) => Center(
    //     child: const CupertinoActivityIndicator(),
    //   ),
    //   // Center(child: const CircularProgressIndicator()),
    //   imageUrl: widget.item.imageUrl,
    // );
  }

  @override
  bool get wantKeepAlive => true;
}
