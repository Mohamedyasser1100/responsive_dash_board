import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custome_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_listview.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransactionListview(),
        ],
      ),
    );
  }
}
