import 'package:flutter/material.dart';
import 'package:flutter_favorite_places_app/models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Place> places;
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text(
        'No places added yet!',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
    if (places.isNotEmpty) {
      content = ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
          title: Text(
            places[index].title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
      );
    }
    return content;
  }
}
