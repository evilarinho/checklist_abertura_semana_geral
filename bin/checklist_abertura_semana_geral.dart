/*
Gerar uma instância do processo <CHECKLIST ABERTURA DA SEMANA> GERAL
para uma data informada (segunda-feira).
----------------------------------
PROGRAMA: checklist_abertura_semana_geral.dart - v.0.1
PROGRAMADOR: Edilson Vilarinho
DATA: 25/09/2022
MANUTENÇÃO: 
  Incluir: modified: README.md
----------------------------------

"Vamos ser referência juntos no Flutter, no Brasil e no Mundo"
 by Jacob Moura - co-CEO na F-Team | Flutterando founder
 Google Developer Expert em Flutter
*/

import 'dart:io';
import '/media/edilson/Dados1/_Edilson/Projetos/Estudo_Dart/Edilson_Vilarinho/funcoes/formataData.dart';

// *** atualizar release do programa
String releasePrograma = "*checklist_abertura_semana_geral.dart v.0.1.20220925";

void main(List<String> arguments) {
  print('Digite a data da segunda-feira (AAAA-MM-DD):');
  String dataInicialStr = stdin.readLineSync()!;

  final dataInicial = DateTime.parse(dataInicialStr);
  String dataStr = dataInicial.toIso8601String();
  String dataSubStr = dataStr.substring(0, 10);
  String dataInicialFormatada = formataData(dataSubStr);
  String dia2digitos = dataInicialFormatada.substring(0, 2);
  String mes2digitos = dataInicialFormatada.substring(3, 5);

  if (dataInicial.weekday == 1) {
    //int diasSemana = 7;
    print(
        'Digite o número da nova semana do ano de ${dataStr.substring(0, 4)} (99):');
    String numeroSemanaAno = stdin.readLineSync()!;

    if (numeroSemanaAno.length == 2) {
      int numeroSemanaAnterior = int.parse(numeroSemanaAno) - 1;
      String numeroSemanaAnteriorStr = numeroSemanaAnterior.toString();

      // garantir semana sempre com dois dígitos
      if (numeroSemanaAnterior < 10) {
        numeroSemanaAnteriorStr = "0$numeroSemanaAnteriorStr";
      }

      print('''
<CHECKLIST ABERTURA DA SEMANA> GERAL
Instância: $dataInicialFormatada

-----------------------------------------------------------------------------
TODAS AS  SEGUNDA-FEIRA ASSIM QUE LIGAR O NOTEBOOK ACER ASPIRE E5-473-5896
- [ ] DATA: ${dataStr.substring(0, 10)}
-----------------------------------------------------------------------------
SIMPLENOTE (ONLINE)
- [ ] backup do Simplenote ed.vilarinho@gmail.com - notes_${dataStr.substring(0, 4)}-$mes2digitos-$dia2digitos-HH-MM.zip
      para edilson/Download/SIMPLENOTE (NOTEBBOK ACER ASPIRE E5-473-5896)
- [ ] google drive edjcv.messias/SIMPLENOTE
- [ ] upload gitlab.com
- [ ] conferir atualização no gitlab
- [ ] acer red pelo github
-----------------------------------------------------------------------------
BLOCO DE NOTAS (LOCAL: NOTEBBOK ACER ASPIRE E5-473-5896 - edilson/BK_Bloco de notas)

Enviar google drive edjcv.messias /BK_BLOCO DE NOTAS
- [ ] BN_${dataStr.substring(0, 4)}_SE_$numeroSemanaAnteriorStr.txt (semana anterior) 
- [ ] sdstudio_${dataStr.substring(0, 4)}_SE_$numeroSemanaAnteriorStr.txt (semana anterior)
- [ ] conferir atualização no gitlab
- [ ] acer red pelo github
-----------------------------------------------------------------------------
- [ ] abrir o BN_${dataStr.substring(0, 4)}_SE_$numeroSemanaAno.txt (nova semana)
- [ ] abrir o sdstudio_${dataStr.substring(0, 4)}_SE_$numeroSemanaAno.txt (nova semana)
-----------------------------------------------------------------------------
$releasePrograma
www.startdevstudio.com
        ''');
    } else {
      print(
          "[ERRO] Favor informar o número da nova semana com dois dígitos (99)");
    }
  } else {
    print("[ERRO] Favor informar data válida para uma segunda-feira");
  }
}
