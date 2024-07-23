public abstract class Pessoa {
	private String nome;
    private Date dataNasc;
	private String cpf;
    
    public Pessoa(String nome, Date dataNasc, String cpf){
        this.nome = nome;
        this.dataNasc = dataNasc;
        this.cpf = cpf;
    }
        
    public abstract void verificaCpf();
    
    public Boolean validaCpf(){
        if(this.cpf.length() == 11){
            return true;
        } else {
            return false; 
        }
   }
    
    public String getCpf(){
        return this.cpf;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public Date getDataNasc(){
        return this.dataNasc;
    }
    
    public void setCpf(String cpf){
        this.cpf = cpf;
    }
    
    public void setDataNasc(Date dataNasc){
        this.dataNasc = dataNasc;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public Pessoa getPessoa(){
        return this;
    }
}