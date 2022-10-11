import 'package:flutter/material.dart';
import 'package:moneytalks/models/moeda.dart';
import 'package:moneytalks/repositories/moeda_repositories.dart';
import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {

  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

final tabela = MoedaRepository.tabela;
NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
List<Moeda> selecionadas = [];



class _MoedasPageState extends State<MoedasPage> {

  appBarDinamica() {
    if (selecionadas.isEmpty){
      return AppBar(
        title: Center(child: Text('MoneyTalks')),
      );
    } else{
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            setState(() {
              selecionadas = [];
            });
          },
        ),
        title: Text('${selecionadas.length} selecionadas'),
        backgroundColor: Colors.greenAccent,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black87),
        toolbarTextStyle: TextStyle(color: Colors.black87),
        titleTextStyle: TextStyle(color: Colors.black87),

      );

    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: appBarDinamica(),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda){
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12),),
              ),
              leading: (selecionadas.contains(tabela[moeda]))
                ? CircleAvatar(child: Icon(Icons.check),)
                : SizedBox(child: Image.asset(tabela[moeda].icone),
              width: 40,
              ),
              title: Text(tabela[moeda].nome,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              ),
              trailing: Text(real.format(tabela[moeda].preco),),
              selected: selecionadas.contains(tabela[moeda]),
              selectedTileColor: Colors.greenAccent,
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[moeda]))
                      ? selecionadas.remove(tabela[moeda])
                      : selecionadas.add(tabela[moeda]);
                });
              },

            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_,__) =>Divider(),
          itemCount: tabela.length),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
      ?FloatingActionButton.extended(
          onPressed: (){},
          icon: Icon(Icons.star),
          label: Text('Favoritar',style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold,

          ),
          ),
      )
      :null
    );
  }
}
