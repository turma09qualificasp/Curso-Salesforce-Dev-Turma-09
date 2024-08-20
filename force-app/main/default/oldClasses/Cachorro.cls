public class Cachorro implements IAnimal {
 
    // Atributo raça
    public String raca;
 
    // Construtor
    public Cachorro(String raca){
        this.raca = raca;
    }
 
    // Métodos
 
    public void comer(String comida){
        System.debug('O cachorro está comendo:' + comida);
    }
 

    public void movimentar(String acao){
        if(acao.equals('Correr')){
            correr();
        } else if(acao.equals('Caminhar')){
            caminhar();
        } else if(acao.equals('Latir')){
            latir();
        } else {
            System.debug('Está descansando!');
            return;
        }
    }
 
    private void correr(){
        System.debug('O cachorro está correndo!');
    }
 
    private void caminhar(){
        System.debug('O cachorro está caminhando!');
    }
 
    private void latir(){
        System.debug('O cachorro está latindo!');
    }
}