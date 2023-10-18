import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back ),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20) ,
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ElevatedButton( onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton( onPressed: null, child: const Text('Disabled')),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
            label: const Text('Elevated Icon')),

            FilledButton(onPressed: () {},  child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {} ,
                icon: const Icon(Icons.accessibility_rounded),
                label: const Text('Filled Icon'),
            ),
            OutlinedButton( onPressed: (){}, child: const Text('Outline')),
      OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon( Icons.terminal),
          label: const Text('Outline Icon'),
            ),
            
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon( Icons.account_box_outlined),
                label: const Text('Text')
            ),

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_outlined)),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.app_registration_outlined)
            ),

          ],
        ),
      ),
    );
  }
}
