import 'package:flutter/material.dart';

class ListMovieItem extends StatelessWidget {
  final String title;
  final String overview;
  final String releaseDate;
  final double watch;
  final double rate;
  const ListMovieItem({
    super.key,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.watch,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        border: const Border(
            left: BorderSide(
                color: Color(0xFF6f64ff), width: 1, style: BorderStyle.solid),
            right: BorderSide(
                color: Color(0xFF6f64ff), width: 1, style: BorderStyle.solid),
            top: BorderSide(
                color: Color(0xFF6f64ff), width: 1, style: BorderStyle.solid),
            bottom: BorderSide(
                color: Color(0xFF6f64ff), width: 1, style: BorderStyle.solid)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: Text(
                  overview,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  "Lançamento: ${releaseDate}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      rate.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text(
                      watch.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
    ;
  }
}
