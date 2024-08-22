Map<String, String> nomeDaRuaByCep = new Map<String, String>();
nomeDaRuaByCep.put('12345678', 'Rua Pereira');
nomeDaRuaByCep.put('1234', 'Rua Maricá SP');

String cepRuaPereira = nomeDaRuaByCep.get('12345678');
System.debug(cepRuaPereira);
String cepVazio = nomeDaRuaByCep.get('1234');
System.debug(cepVazio);