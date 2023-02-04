import 'package:coin_aggregator/coins_list/cubit/coins_list_cubit.dart';
import 'package:coin_aggregator/coins_list/view/coin_list_page.dart';
import 'package:coin_aggregator/core/app_colors.dart';
import 'package:coin_aggregator/core/providers/providers.dart';
import 'package:coin_aggregator/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    setupProviders(); //* Setup getit providers
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.white,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: AppColors.black, //change your color here
          ),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (context) => CoinsCubit(),
        child: const CoinListPage(),
      ),
    );
  }
}
