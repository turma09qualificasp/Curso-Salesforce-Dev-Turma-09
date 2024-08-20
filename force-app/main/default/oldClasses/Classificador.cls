public with sharing class Classificador {
    public static String verificaMaior(Decimal valor1, Decimal valor2) {
        if (valor1 > valor2) {
            return 'Valor ' + String.valueOf(valor1) + ' é maior';
        } else if (valor2 > valor1) {
            return 'Valor ' + String.valueOf(valor2) + ' é maior';
        } else {
            return 'Os valores são iguais: ' + String.valueOf(valor1);
        }
    }

    public static String verificaMenor(Decimal valor1, Decimal valor2) {
        if (valor1 < valor2) {
            return 'Valor ' + String.valueOf(valor1) + ' é menor';
        } else if (valor2 > valor1) {
            return 'Valor ' + String.valueOf(valor2) + ' é menor';
        } else {
            return 'Os valores são iguais: ' + String.valueOf(valor1);
        }
    }
}