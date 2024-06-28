import '/flutter_flow/flutter_flow_util.dart';
import 'ticket_purchase_widget.dart' show TicketPurchaseWidget;
import 'package:flutter/material.dart';

class TicketPurchaseModel extends FlutterFlowModel<TicketPurchaseWidget> {
  ///  Local state fields for this page.

  int? selectedIndex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
