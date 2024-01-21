import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/utils/theme_extension.dart';
import 'offer_card_model.dart';
import 'offer_card_widget.dart';

abstract interface class IOfferCardWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueListenable<int> get counterState;

  void onTapAdd();

  void onTapRemove();
}

OfferCardWidgetModel defaultOfferCardWidgetModelFactory(BuildContext context) {
  final model = context.read<OfferCardModel>();
  return OfferCardWidgetModel(model);
}

class OfferCardWidgetModel extends WidgetModel<OfferCardWidget, OfferCardModel>
    with ThemeProvider
    implements IOfferCardWidgetModel {
  late final ValueNotifier<int> _countState;

  OfferCardWidgetModel(OfferCardModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _countState = ValueNotifier<int>(widget.offer.count);
  }

  @override
  void dispose() {
    _countState.dispose();
    super.dispose();
  }


  void _onTapRemove() {
        final newCount = _countState.value - 1;
        _countState.value = newCount;
        model.bulkAdd(widget.offer.id, newCount);
      }


  void _onTapAdd(){
    final newCount = _countState.value + 1;
    _countState.value = newCount;
    model.bulkAdd(widget.offer.id, newCount);
      }

  @override
  void onTapAdd()  => _onTapAdd();

  @override
  void onTapRemove() => _onTapRemove();

  @override
  ValueListenable<int> get counterState => _countState;
}
