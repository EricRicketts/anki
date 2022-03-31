package services;

import model.PaymentDetails;
import exceptions.NotEnoughMoneyException;

public class PaymentService {

    public PaymentDetails processPayment() {
        throw new NotEnoughMoneyException();
    }
}
