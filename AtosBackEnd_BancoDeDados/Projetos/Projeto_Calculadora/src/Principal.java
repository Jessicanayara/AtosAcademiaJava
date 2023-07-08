import java.util.Scanner;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Principal {

	public static void main(String[] args) throws IOException  {

		 Log meuLogger = new Log("Log.txt");
		try {
			//Log meuLogger = new Log("Log.txt");
			meuLogger.logger.setLevel(Level.FINE);
			meuLogger.logger.info("Log de informação");
			meuLogger.logger.warning("Log de Aviso");
			meuLogger.logger.severe("Log Severo");
			

		} catch (Exception e) {
			meuLogger.logger.info("Exception:" + e.getMessage()); //escrever no arquivo de log o erro
            e.printStackTrace();//escrever no console o erro

		}



		meuLogger.logger.info("\n iniciando a calculadora");
		try (Scanner leitura = new Scanner(System.in)) {
			Calculadora c = new Calculadora();
			float a = 0, b = 0, resultado = 0;
			String operador;
			System.out.println("Calculadora");
			do {
				System.out.println("Insira o operador +, -, *, /");
				operador = leitura.nextLine();
				meuLogger.logger.info("\n o usuario inseriu um operador");
				
			} while (!(operador.contains("+") || operador.contains("-") || operador.contains("*")
					|| operador.contains("/"))
					
					);

			System.out.println("Insira o 1o valor");
			a = leitura.nextFloat();
			System.out.println("Insira o 2o valor");
			b = leitura.nextFloat();
			meuLogger.logger.info("\n o usuario inseriu os valores");
			resultado = c.calcular(a, b, operador.charAt(0));
			System.out.println("O resultado de " + a + " " + operador + " " + b + " �:" + resultado);
			meuLogger.logger.info("\n fim da operação, o resultado é " + resultado);
		}catch (Exception e) {
			meuLogger.logger.severe("Erro ao executar a calculadora:" + e);

		}

	}

}
