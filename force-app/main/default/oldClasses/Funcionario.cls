public class Funcionario extends Pessoa {
	private String cargo;
    private Decimal salario;
    
    public Funcionario(String nome, Date dataNasc, String cpf, String cargo, Decimal salario){
        super(nome, dataNasc, cpf);
        this.cargo = cargo;
        this.salario = salario;
    }
    
    override public void verificaCpf(){
		validaCpf();
	}
    
    public void setCargo(String cargo){
        this.cargo = cargo;
    }
    
    public void setSalario(Decimal salario){
        this.salario = salario;
    }
    
    public Funcionario getFuncionario(){
    	return this;
    }
}