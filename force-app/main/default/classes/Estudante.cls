public class Estudante extends Pessoa {
    private String curso;
    private Boolean formado;
    
    public Estudante(String nome, Date dataNasc, String cpf, String curso, Boolean formado){
        super(nome, dataNasc, cpf);
        this.curso = curso;
        this.formado = formado;
    }
    
    override public void verificaCpf(){
            validaCpf();
	}
    
    public String getCurso(){
        return this.curso;
    }
    
    public Boolean getFormado(){
        return this.formado;
    }
    
    public void setCurso(String curso){
        this.curso = curso;
    }
    
    public void setFormado(Boolean formado){
        this.formado = formado;
    }

    public Estudante getEstudante(){
        return this;
    }    
}