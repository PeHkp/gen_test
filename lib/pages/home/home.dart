import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_teste/pages/home/bloc/home_bloc.dart';
import 'package:gen_teste/pages/home/bloc/home_event.dart';
import 'package:gen_teste/pages/home/bloc/home_state.dart';
import 'package:gen_teste/widgets/list_movie_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6f64ff),
        title: const Text("Marvel",
            style: TextStyle(fontSize: 26, letterSpacing: 1.5)),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            switch (state.runtimeType) {
              case LoadingHomeState:
                context.read<HomeBloc>().add(
                      LoadingHomeEvent(),
                    );
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                    strokeWidth: 2,
                  ),
                );
              default:
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: SizedBox(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ListMovieItem(
                            overview: state.listMovie![index].overview,
                            rate: state.listMovie![index].voteAverage,
                            releaseDate: state.listMovie![index].releaseDate,
                            title: state.listMovie![index].title,
                            watch: state.listMovie![index].popularity,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 16,
                          );
                        },
                        itemCount: state.listMovie!.length),
                  ),
                );
            }
          }),
    );
  }
}
