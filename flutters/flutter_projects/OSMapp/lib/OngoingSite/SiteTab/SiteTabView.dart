import 'package:flutter/material.dart';
import 'package:osm_app/OngoingSite/SiteTab/SiteImages.dart';
import 'package:osm_app/OngoingSite/SiteTab/StockRemaining.dart';
import 'BillImages.dart';
import 'OverHeadExpenseSite.dart';
import 'TransportationCost.dart';

class SiteTabView extends StatefulWidget {
  final String title;
  final String siteId;

  SiteTabView(this.title,this.siteId);

  @override
  _SiteTabViewState createState() => _SiteTabViewState();
}

class _SiteTabViewState extends State<SiteTabView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  bool isSmall = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          //change your color here
        ),
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "${widget.title}",
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.yellowAccent,
          //labelStyle: TextStyle(fontSize: isSmall ? 10.0 : 11.3),
          tabs: [
//            new Tab(icon: new Icon(Icons.call)),
//            new Tab(
//              icon: new Icon(Icons.chat),
//            ),
//            new Tab(
//              icon: new Icon(Icons.notifications),
//            )
            new Tab(child: Text("Site Images")),
            new Tab(child: Text("Bill Images")),
            new Tab(child: Text("Stock")),
            new Tab(child: Text("Transportation Cost")),
            new Tab(child: Text("OverHead Expenses")),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [
          getSiteImages(),
          getBillImages(),
          getStock(),
          getTransportationCost(),
          getOverHeadExpenses(),
        ],
        controller: _tabController,
      ),
    );
  }

  Widget getSiteImages() {
    return SiteImages(widget.siteId);
  }

  Widget getBillImages() {
    return BillImages(widget.siteId);
  }

  Widget getStock() {
    return StockRemaining(widget.siteId);
  }

  Widget getTransportationCost() {
    return TransportationCost(widget.siteId);
  }

  Widget getOverHeadExpenses() {
    return OverHeadExpenseSite(widget.siteId);
  }
}
