import '/backend/api_requests/api_calls.dart';
import '/components/sidenav/sidenav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'catalog_widget.dart' show CatalogWidget;
import 'package:flutter/material.dart';

class CatalogModel extends FlutterFlowModel<CatalogWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (searchMovie)] action in TextField widget.
  ApiCallResponse? search;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidenavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
