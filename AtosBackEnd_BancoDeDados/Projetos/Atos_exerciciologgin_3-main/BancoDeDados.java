import java.sql.Connection;

 
import java.sql.DriverManager;


import java.sql.ResultSet;


import java.sql.SQLException;


import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class BancoDeDados implements InterfaceBancoDeDados {
  
    private Connection connection;
    private static Log meuLogger;
    public static void main(String[] args) throws IOException {
        
        
    try {
        meuLogger = new Log("Log.txt");
        
        meuLogger.logger.setLevel(Level.FINE);
        meuLogger.logger.info("Log de informação");
        meuLogger.logger.warning("Log de Aviso");
        meuLogger.logger.severe("Log Severo");
        

    } catch (Exception e) {
        meuLogger.logger.info("Exception:" + e.getMessage()); //escrever no arquivo de log o erro
        e.printStackTrace();//escrever no console o erro

    }



    meuLogger.logger.info("\n iniciando Banco de dados");

        BancoDeDados bd = new BancoDeDados();
        meuLogger.logger.info("\n iniciando Banco de dados");
        bd.conectar("jdbc:mysql://localhost:3306/reuniao", "root", "") ;
        meuLogger.logger.info("\n iniciando consulta com Banco de dados");
        bd.consultar("SELECT * FROM pessoa");
        meuLogger.logger.info("\n iniciando alteração no Banco de dados");
       
        bd.inserirAlterarExcluir("INSERT INTO pessoa(nome,email,cargo) values ('Bruna Santos','bru_s@yahoo.com', 'Supervisora')");
        meuLogger.logger.info("\n Desconectando o Banco de dados");
        bd.desconectar();

        


    }




    @Override
    public void conectar(String db_url, String db_user, String db_password)  {
        
        
        try{
          meuLogger.logger.warning("conectando ao banco");
            System.out.println("Iniciando conexão");
           
            connection= DriverManager.getConnection(db_url, db_user, db_password);
           
            System.out.println("Conectado ao BD");
    
        }catch (SQLException e) {
    
            meuLogger.logger.severe("erro" + e);
            System.out.println("Nao foi possível conectar ao BD"+e);
            
            }
       
    }

    @Override
    public void desconectar() {
        try {
            meuLogger.logger.warning("desconectando ao banco");
            connection.close();
            System.out.println("Desconectado");
        } catch (SQLException e) {
            meuLogger.logger.severe("erro" + e);
            System.out.println("Erro ao fechar conexão com o banco de dados: " + e.getMessage());
        }
    }


        
       
    

    @Override
    public void consultar(String db_query) {
        try{
            meuLogger.logger.warning("consultando banco");
            java.sql.Statement statement = connection.createStatement();
        
    
            ResultSet resultSet = statement.executeQuery(db_query);
        while(resultSet.next()){

        System.out.println(resultSet.getString(1)+ " " +resultSet.getString(2)+ " " +resultSet.getString(3)+ " " + resultSet.getString(4)+ " "  );



        }

     
     }catch (SQLException e) {
    
        meuLogger.logger.severe("erro" + e);    
        System.out.println("Nao foi possível conectar ao BD"+e);
        
        }
    }







    @Override
    public int inserirAlterarExcluir(String db_query) {
       int linhas=0;
        try{
            meuLogger.logger.warning("inserindo ao banco");
            java.sql.Statement statement = connection.createStatement();
        
            linhas = statement.executeUpdate(db_query);
            System.out.println("Dados inseridos com sucesso");
     
     }catch (SQLException e) {
    
        meuLogger.logger.severe("erro" + e);    
        System.out.println("Nao foi possível inserir, alterar ou excluir"+" "+e);
        
        }
        
        return linhas;
        
        
        
     
    }
    
    



}
