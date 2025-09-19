import 'package:flutter/material.dart';

void main() {
  runApp(BiddingApp());
}

class BiddingApp extends StatefulWidget {
  @override
  _BiddingAppState createState() => _BiddingAppState();
}

class _BiddingAppState extends State<BiddingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding Page',
      debugShowCheckedModeBanner: false,
      home: MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _bidAmount = 10;

  void _increaseBid() {
    setState(() {
      _bidAmount += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bidding Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Maximum Bid:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              "\$$_bidAmount",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Increase Bid by \$10",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
