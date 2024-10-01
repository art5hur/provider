import 'package:cart_provider_demo/models/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BUILD: CatalogoAppBar');

    final carrinho = context.watch<CarrinhoModel>();
    var adicionado = carrinho.items.length;


    return AppBar(
      title: const Text('Catalogo'),
      actions: [
        IconButton(
          icon: Badge(
            label: Text(
              adicionado.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: const Icon(
              Icons.shopping_cart,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, '/carrinho'),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
