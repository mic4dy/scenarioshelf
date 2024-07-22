import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/views/components/app_bars/slide_transaction_page_app_bar.dart';
import 'package:scenarioshelf/views/components/dividers/labeled_divider.dart';
import 'package:scenarioshelf/views/components/forms/form_block.dart';
import 'package:scenarioshelf/views/components/forms/form_content.dart';
import 'package:scenarioshelf/views/components/forms/form_section.dart';

class RecordPage extends HookConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());

    return Scaffold(
      backgroundColor: AppColor.of(context).ui.formBackground,
      appBar: SlideTransactionPageAppBar(
        backgroundColor: AppColor.of(context).ui.formBackground,
        title: const Text('新しいセッション'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Form(
            key: formKey.value,
            child: Column(
              children: [
                FormSection(
                  title: const LabeledDivider(label: 'シナリオ'),
                  children: [
                    FormBlock(
                      children: [
                        FormContent.textFormField(
                          hintText: 'シナリオタイトル',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
