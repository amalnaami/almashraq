import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/user/SubscriptionScreen/bloc/subscribe_event.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'bloc/subscribe_bloc.dart';
import 'bloc/subscribe_state.dart';
import 'component/SubscriptionCard.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final _bloc = sl<SubscribeBloc>();
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    _bloc.add(GetPackages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SubscribeState state) {
        error(state.error);
        if (state.success) {
          WidgetsBinding.instance.addPostFrameCallback(
            (timeStamp) async {
              await Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return Scaffold(
                  appBar: customAppBar(context, AppLocalizations.of(context).translate('Invoice')),
                  body: WebView(
                    initialUrl: state.invoice.url,
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                );
              }));
              // if (await canLaunch(state.invoice.url)) {
              //   await launch(state.invoice.url);
              // } else {
              //   throw 'Could not launch ${state.invoice.url}';
              // }
              _bloc.add(ClearSuccess());
            },
          );
        }
        return Scaffold(
          appBar: customAppBar(
              context, AppLocalizations.of(context).translate('Subscribe')),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)
                            .translate('Subscribe via packages'),
                        style: boldStyle,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      state.packages == null || state.packages.isEmpty
                          ? Container()
                          : Container(
                              height:
                                  MediaQuery.of(context).size.height / 3.3,
                              child: ListView.separated(
                                  itemCount: state.packages.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (_, __) => SizedBox(width: 16,),
                                  itemBuilder: (context, index) {
                                    return SubscriptionCard(
                                      onTap: state.isLoading
                                          ? null
                                          : () => _bloc.add(Subscribe((b) => b
                                            ..type = 'packages'
                                            ..id = state.packages[index].id
                                                .toString())),
                                      title: state.packages[index].getName(
                                          AppLocalizations.of(context)
                                              .locale
                                              .languageCode),
                                      subTitle:
                                          '${AppLocalizations.of(context).translate('cost:')} ${state.packages[index].price}',
                                    );
                                  }),
                            ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     SubscriptionCard(
                      //       onTap: () => push(context, TypesPage()),
                      //       title: AppLocalizations.of(context).translate('Monthly subscription'),
                      //       subTitle: "بقيمة 5 جنية",
                      //     ),
                      //     SubscriptionCard(
                      //       onTap: () => push(context, TypesPage()),
                      //       title: AppLocalizations.of(context).translate('annual subscription'),
                      //       subTitle: "بقيمة 50 جنية",
                      //     ),
                      //   ],
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Text(
                                AppLocalizations.of(context)
                                    .translate('Subscribe via'),
                                style: boldStyle),
                            Text(
                              "Promo Code",
                              style: boldStyle.copyWith(
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SubscriptionCard(
                          onTap: state.isLoading ? null : () {
                            CustomAlert().submitChangeData(
                              context: context,
                              onSubmite: () {
                                if (controller.value == null ||
                                    controller.value.text.isEmpty) {
                                  error(AppLocalizations.of(context)
                                      .translate('code can not be empty'));
                                  return;
                                }
                                Navigator.pop(context);
                                _bloc.add(Subscribe((b) => b
                                  ..type = 'promo_codes'
                                  ..id = controller.value.text));
                                // CustomAlert().successfulProcess(
                                //   btnText: AppLocalizations.of(context)
                                //       .translate('browse the book'),
                                //   content: AppLocalizations.of(context).translate(
                                //       'The promo code has been activated. You can now browse books'),
                                //   action: () {},
                                //   context: context,
                                //   title: AppLocalizations.of(context)
                                //       .translate('activated'),
                                // );
                              },
                              textBtn: AppLocalizations.of(context)
                                  .translate('active'),
                              title: AppLocalizations.of(context)
                                  .translate('write promo code here'),
                              controller: controller
                            );
                          },
                          title: AppLocalizations.of(context)
                              .translate('free subscription'),
                          subTitle: AppLocalizations.of(context).translate(
                              'The code has been sent to your e-mail'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (state.isLoading) loaderApp
            ],
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearError());
    }
  }
}
