package com.primerproyecto.calculadora;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class CalculadoraBigDecimal {
	public CalculadoraBigDecimal() {

	}

	public BigDecimal sumaBig(String num1, String num2) {

		BigDecimal numero1 = BigDecimal.valueOf(Double.valueOf(num1));
		BigDecimal numero2 = BigDecimal.valueOf(Double.valueOf(num2));

		return numero1.add(numero2);

	}

	public BigDecimal restaBig(String num1, String num2) {

		BigDecimal numero1 = BigDecimal.valueOf(Double.valueOf(num1));
		BigDecimal numero2 = BigDecimal.valueOf(Double.valueOf(num2));

		return numero1.subtract(numero2);

	}

	public BigDecimal multiplicaBig(String num1, String num2) {

		BigDecimal numero1 = BigDecimal.valueOf(Double.valueOf(num1));
		BigDecimal numero2 = BigDecimal.valueOf(Double.valueOf(num2));

		return numero1.multiply(numero2);

	}

	public BigDecimal divideBig(String num1, String num2) {

		BigDecimal numero1 = BigDecimal.valueOf(Double.valueOf(num1));
		BigDecimal numero2 = BigDecimal.valueOf(Double.valueOf(num2));

		return numero1.divide(numero2,2,RoundingMode.HALF_UP);

	}

}
