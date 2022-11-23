import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugas_flutter/model/mywatchlist.dart';
import 'package:tugas_flutter/drawer.dart';

class ShowWatchListDetailsPage extends StatefulWidget {
  ShowWatchListDetailsPage({super.key, this.watchlistItem});
  var watchlistItem;

  @override
  State<ShowWatchListDetailsPage> createState() =>
      _ShowWatchListDetailsPageState();
}

class _ShowWatchListDetailsPageState extends State<ShowWatchListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detail")),
        drawer: MyDrawer(),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.watchlistItem.fields.title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const Text(''),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Release Date: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '${DateFormat("MMM dd, y").format(widget.watchlistItem.fields.releaseDate)}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Rating: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '${widget.watchlistItem.fields.rating}/10',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Status: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '${widget.watchlistItem.fields.watched ? "watched" : "not watched"}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Review: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: '${widget.watchlistItem.fields.review}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Expanded(child: Container()),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back"),
                  ),
                ])));
  }
}
