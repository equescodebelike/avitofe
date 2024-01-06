import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'main_screen_wm.dart';

@RoutePage()
class MainScreenWidget extends ElementaryWidget<IMainScreenWidgetModel> {
  const MainScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMainScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMainScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      /* Пример взаимодействия с WidgetModel */
      // floatingActionButton: FloatingActionButton(
      //   onPressed: wm.toAddEvent,
      //   child: const Icon(Icons.add),
      // ),
      /* Работа с снепшотом */
      // body: EntityStateNotifierBuilder(
      //   listenableEntityState: wm.eventList,
      //   builder: (context, data) {
      //     if (data == null) return const ShimmerEventListWidget();
      //     if (data.isEmpty)
      //       return const Center(child: Text('На данный момент ивентов нет'));
      //     return ListView.separated(
      //       padding: const EdgeInsets.symmetric(horizontal: basePadding),
      //       itemCount: data.length,
      //       itemBuilder: (context, index) {
      //         final event = data[index];
      //         return EventCardWidget(
      //           event: event,
      //           onTap: wm.onTapCard,
      //           onTapCalendar: wm.onTapCalendar,
      //         );
      //       },
      //       separatorBuilder: (BuildContext context, int index) {
      //         return const SizedBox(
      //           height: baseSeparator,
      //         );
      //       },
      //     );
      //   },
      /* Шиммеры это круто, надо стараться везде их юзать */
      /* Соответственно пока все заполняем локально */
      //   loadingBuilder: (_, __) => const ShimmerEventListWidget(),
      //   errorBuilder: (_, e, __) {
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: basePadding),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           const Text(
      //             'Произошла ошибка загрузки попробуйте еще раз',
      //             textAlign: TextAlign.center,
      //           ),
      //           ElevatedButton(
      //             onPressed: wm.refreshList,
      //             child: const Text('Перезагрузить'),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

// class ShimmerEventListWidget extends StatelessWidget {
//   const ShimmerEventListWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       padding: const EdgeInsets.symmetric(horizontal: basePadding),
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return const ShimmerEventCardWidget();
//       },
//       separatorBuilder: (BuildContext context, int index) {
//         return const SizedBox(
//           height: baseSeparator,
//         );
//       },
//     );
//   }
// }

// class ShimmerEventCardWidget extends StatelessWidget {
//   const ShimmerEventCardWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const DefaultShimmer(
//       height: 160,
//       width: double.infinity,
//     );
//   }
// }
