package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class PaymentData {
	private BigDecimal value;

	public BigDecimal getValue() {
		return value;
	}

	public PaymentData(BigDecimal value) {
		this.value = value;
	}

}
