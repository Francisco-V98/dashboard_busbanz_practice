import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListComponentsScreen extends StatelessWidget {
  const ListComponentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: 'Calendar / AppBar',
          subTitle: 'Componente Calendar Dashboard',
          location: '/calendar',
        ),
        _CustomListTile(
          title: 'TimeLine-Header',
          subTitle: 'Componente TimeLine-Header Dashboard',
          location: '/timeLineHeader',
        ),
        _CustomListTile(
          title: 'TimeLine',
          subTitle: 'Componente TimeLine Dashboard',
          location: '/timeLine',
        ),
        _CustomListTile(
          title: 'Animation circle',
          subTitle: 'Animation Circle',
          location: '/animationCircle',
        ),
        _CustomListTile(
          title: 'Card Default',
          subTitle: 'Card Default components',
          location: '/card-default',
        ),
        _CustomListTile(
          title: 'Card Active Route',
          subTitle: 'Card Active Route components',
          location: '/card-active-route',
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
