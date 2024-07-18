public class Calculadora {
    
    public static Decimal calcularLista(String nomeOperacao, List<Decimal> valores){
        Decimal resultadoDaOperacao = 0;
        for(Decimal valor : valores){
            
          	if(nomeOperacao == 'Soma'){
            	resultadoDaOperacao += valor;
            } else if (nomeOperacao == 'Subtrair') { 
                resultadoDaOperacao -= valor;
        	}
        }
        return resultadoDaOperacao;
    }

    public static Decimal buscaOMaiorValor(List<Decimal> valores){
        Decimal maiorValor = 0;
        for(Decimal valor : valores){
            if(valor > maiorValor){
                maiorValor = valor;
            }
        }
        return maiorValor;
    }

    public static Decimal buscaOMenorValor(List<Decimal> valores){
        Decimal menorValor = 0;
        Boolean executouPrimeiroLoop = false;
        for(Decimal valor : valores){
            if(valor < menorValor || !executouPrimeiroLoop){
                menorValor = valor;
            }
            executouPrimeiroLoop = true;
        }
        return menorValor;
    }

    public static Decimal somar(Decimal valor1, Decimal valor2){
        return valor1 + valor2;
    }

    public static Decimal subtrair(Decimal valor1, Decimal valor2){
        return valor1 + valor2;
    }

}