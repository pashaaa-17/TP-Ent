import '/components/sidenav/sidenav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'movie_details_widget.dart' show MovieDetailsWidget;
import 'package:flutter/material.dart';

class MovieDetailsModel extends FlutterFlowModel<MovieDetailsWidget> {
  ///  Local state fields for this page.

  bool fav = false;

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
