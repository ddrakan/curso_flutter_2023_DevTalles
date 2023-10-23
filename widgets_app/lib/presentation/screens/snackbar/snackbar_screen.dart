import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  const SnackbarScreen ({super.key});

  void showCustomSnackbar( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
        content: const Text('hola! Soy un SnackBar'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){} ),
        duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }

  void openDialog( BuildContext context) { //Dialogo personalizado

    showDialog(
        context: context,
        barrierDismissible: false, // obliga al usuario a confirmar con uno de los botones
        builder: (context) => AlertDialog(
          title: const Text( '¿Estás seguro?' ),
          content: const Text(' Dialogo personlaizado '),
          actions: [
            TextButton( onPressed: () => context.pop(), child: const Text('Aceptar')),
            TextButton( onPressed: () => context.pop(), child: const Text('Cancelar')),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            FilledButton.tonal(
                onPressed: () {
              showAboutDialog(
                  context: context,
                  children: [
                    const Text('Aqui esta!')
                  ]
              );
            }, child: const Text('Licencias usadas')),


            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar diálogo')
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
