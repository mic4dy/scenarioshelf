import 'package:flutter/material.dart';
import 'package:scenarioshelf/views/components/app_bars/slide_transaction_page_app_bar.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SlideTransactionPageAppBar(
        title: Text('新しいセッション'),
      ),
      body: Center(
        child: Text('Record Page'),
      ),
    );
  }
}
