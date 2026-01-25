import 'package:bloc_clean_architecture/bloc/movie_bloc/movie_bloc.dart';
import 'package:bloc_clean_architecture/config/components/app_loding_widget.dart';
import 'package:bloc_clean_architecture/config/components/internet_exception.dart';
import 'package:bloc_clean_architecture/dependency_injection/locator.dart';
import 'package:bloc_clean_architecture/l10n/app_localizations.dart';
import 'package:bloc_clean_architecture/utils/enums.dart';
import 'package:bloc_clean_architecture/utils/flush_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/routes/routes_name.dart';
import '../../services/storage/local_storage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MovieBloc _movieBloc;
  @override
  void initState() {
    _movieBloc = MovieBloc(moviesrepository: getIt());
    super.initState();
  }

  @override
  void dispose() {
    _movieBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          IconButton(
            onPressed: () async {
              LocalStorage localStorage = LocalStorage();
              await localStorage.removeValue('token');
              await localStorage.removeValue('isLogin');
              if (!context.mounted) return;
              Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.loginScreen,
                (route) => false,
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => _movieBloc..add(MoviesFetchEvent()),
        child: BlocConsumer<MovieBloc, MovieState>(
          listener: (context, state) {
            if (state.movieaList.status == Status.failure) {
              FlushBarHelper.flushBarErrorMessage(
                state.movieaList.message ?? "Failed",
                context,
              );
            }
          },
          builder: (context, state) {
            switch (state.movieaList.status) {
              case Status.loading:
                return const Center(child: AppLodingWidget());
              case Status.failure:
                return Center(
                  child: state.movieaList.message!.isNotEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [InternetException()],
                        )
                      : SizedBox(),
                  // Text(
                  //   state.movieaList.message ?? "Something went wrong",
                  // ),
                );
              case Status.success:
                final movieList = state.movieaList.data!;
                return ListView.builder(
                  itemCount: movieList.tvShows.length,
                  itemBuilder: (context, index) {
                    final tvShow = movieList.tvShows[index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(tvShow.imageThumbnailPath),
                        title: Text(tvShow.name),
                        subtitle: Text(tvShow.status),
                        trailing: Text(tvShow.network),
                      ),
                    );
                  },
                );
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
