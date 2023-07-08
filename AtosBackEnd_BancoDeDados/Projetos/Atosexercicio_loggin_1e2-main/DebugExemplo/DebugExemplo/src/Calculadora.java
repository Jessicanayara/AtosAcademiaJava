
public class Calculadora {
	public float calcular(float a, float b, char operacao) {
		float resultado = 0;
		switch (operacao) {
		case '+': {
			resultado = a + b;
			break;

		}
		case '-': {
			
			if(b>a){
				float c = a;
				a=b;
				b=c;
				resultado= a-b;
			}
			else{
				resultado = a - b;

			}
			break;

		}
		case '/': {
			resultado = a / b;
			break;
		}
		case '*': {
			resultado = a * b;
			break;

		}
		
		}
		return resultado;

	}
}
