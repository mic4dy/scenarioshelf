import 'package:flutter/material.dart';
import 'package:scenarioshelf/views/components/app_bars/slide_transaction_page_app_bar.dart';
import 'package:scenarioshelf/views/components/dividers/labeled_divider.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SlideTransactionPageAppBar(
        title: Text('新しいセッション'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LabeledDivider(
                label: 'シナリオ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
