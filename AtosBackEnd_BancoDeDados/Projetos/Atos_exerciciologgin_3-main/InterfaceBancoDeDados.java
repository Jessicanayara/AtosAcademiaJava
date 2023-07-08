

public interface InterfaceBancoDeDados{
    public void conectar(String db_url, String db_user, String db_password);
    public void consultar(String db_query);
    public int inserirAlterarExcluir(String db_query);
    public void desconectar();



}