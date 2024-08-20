public class Gato implements IAnimal {
    
    // nao adicionamos nenhum atributo
    public String raca;
    
    //CONSTRUTOR
    public Gato(String raca){
        this.raca = raca;
    }
	
    //FUNCOES -- METODOS 
    public void comer(String comida){
        System.debug('O gato está comendo: ' + comida);
    }
    
    public void movimentar(String acao){
        if(acao == 'Correr'){
            correr();
        } else if(acao == 'Andar'){
            andar();
        } else {
           System.debug('Está dormindo!');
           return;
        }
    }
    
    private void correr(){
        System.debug('O gato está correndo!');
    }
                     
    private void andar(){
   		System.debug('O gato está andando!');                   
    }
}