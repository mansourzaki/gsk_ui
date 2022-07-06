import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gsk_ui/models/news_model.dart';

class NewsWidget extends StatefulWidget {
  final NewsModel model;
  final Function? onButtonPressed;
  const NewsWidget({Key? key, required this.model, this.onButtonPressed})
      : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgerState();
}

class _NewsWidgerState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: Row(
        children: [
          SizedBox(
              width: 100,
              height: 100,
              child: CachedNetworkImage(
                imageUrl: widget.model.imageUrl ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, s, any) {
                  return Image.asset(
                    'assets/images/putin.jpg',
                    fit: BoxFit.cover,
                  );
                },
              )),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.model.title ?? '',
                maxLines: 1,
                style: TextStyle(fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                widget.model.description ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.model.author ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        widget.model.isFavorite = !widget.model.isFavorite;
                        widget.onButtonPressed!();
                         setState(() {});
                      },
                      icon: Icon(
                        widget.model.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color:
                            widget.model.isFavorite ? Colors.red : Colors.black,
                      )),
                ],
              )
            ],
          ))
        ],
      ),
    );
    // return ListTile(
    //   title: Text(widget.model.title!),
    //   subtitle: Text(widget.model.source!.name!),
    //   trailing: IconButton(
    //       onPressed: () {
    //         widget.model.isFavorite = !widget.model.isFavorite;
    //         setState(() {});
    //       },
    //       icon: Icon(
    //         widget.model.isFavorite
    //             ? Icons.favorite
    //             : Icons.favorite_border_outlined,
    //         color: widget.model.isFavorite ? Colors.red : Colors.black,
    //       )),
    // );
  }
}
