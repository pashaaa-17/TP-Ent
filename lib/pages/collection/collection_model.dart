import '/components/sidenav/sidenav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'collection_widget.dart' show CollectionWidget;
import 'package:flutter/material.dart';

class CollectionModel extends FlutterFlowModel<CollectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidenav component.
  late SidenavModel sidenavModel;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidenavModel.dispose();
  }
}
