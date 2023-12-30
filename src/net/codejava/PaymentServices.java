package net.codejava;
 
import java.util.*;

import com.paypal.api.payments.*;

import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

import java.util.ArrayList;
import java.util.List;
 
public class PaymentServices {
    private static final String CLIENT_ID = "AT_Yq8n_oqIftAdB3ITLp03KT4OSQel2x9IWxYI3c1ftweUCsuvfgwfu6LalXnOterBBa1c6uH9zCKU8";
    private static final String CLIENT_SECRET = "EKIBRkkRqUzYCUxd46iqBl0bq3ZHDoXben_99f9NjZeQcBi_fFyz1ONBPLZEMnLwocbMXASlpm8o0oNb";
    private static final String MODE = "sandbox";
 
    public String authorizePayment(OrderDetail orderDetail) throws PayPalRESTException {
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectURLs();
        String orderId = generateOrderId(); // You need to implement a method to generate a unique orderId
        List<Transaction> listTransaction = getTransactionInformation(orderDetail, orderId);

        Payment requestPayment = new Payment();
        requestPayment.setTransactions(listTransaction);
        requestPayment.setRedirectUrls(redirectUrls);
        requestPayment.setPayer(payer);
        requestPayment.setIntent("authorize");

        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);

        Payment approvedPayment = requestPayment.create(apiContext);

        // Debug prints
        System.out.println("Approved Payment: " + approvedPayment);

        return getApprovalLink(approvedPayment);
    }
    public String generateOrderId() {
        // You need to implement a method to generate a unique orderId, for example, using UUID
        return UUID.randomUUID().toString();
    }
    private Payer getPayerInformation() {
        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");
         
        PayerInfo payerInfo = new PayerInfo();
        payerInfo.setFirstName("William")
                 .setLastName("Peterson")
                 .setEmail("william.peterson@company.com");
         
        payer.setPayerInfo(payerInfo);
         
        return payer;
    }
     
    private RedirectUrls getRedirectURLs() {
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8080/cancel.html");
        redirectUrls.setReturnUrl("http://localhost:8080/Green-Supermarket/review_payment"); // Check the servlet mapping

        return redirectUrls;
    }

     
    private List<Transaction> getTransactionInformation(OrderDetail orderDetail, String orderId) {
        Details details = new Details();
        details.setShipping(orderDetail.getShipping());
        details.setSubtotal(orderDetail.getSubtotal());
        details.setTax(orderDetail.getTax());
     
        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(orderDetail.getTotal());
        amount.setDetails(details);
     
        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription(orderDetail.getProductName());
        transaction.setInvoiceNumber(orderId); // Include the order ID here

         
        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();
         
        Item item = new Item();
        item.setCurrency("USD");
        item.setName(orderDetail.getProductName());
        item.setPrice(orderDetail.getSubtotal());
        item.setTax(orderDetail.getTax());
        item.setQuantity("1");
         
        items.add(item);
        itemList.setItems(items);
        transaction.setItemList(itemList);
     
        List<Transaction> listTransaction = new ArrayList<>();
        listTransaction.add(transaction);  
         
        return listTransaction;
    }
     
    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;
         
        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }      
         
        return approvalLink;
    }
    public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        return Payment.get(apiContext, paymentId);
    }
    public Payment executePayment(String paymentId, String payerId)
            throws PayPalRESTException {
		/*
		 * PaymentExecution paymentExecution = new PaymentExecution();
		 * 
		 * paymentExecution.setPayerId(payerId);
		 * 
		 * Payment payment = null; payment = new Payment().setId(paymentId);
		 * 
		 * APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
		 * 
		 * return payment.execute(apiContext, paymentExecution);
		 */
    	
            PaymentExecution paymentExecution = new PaymentExecution();
            paymentExecution.setPayerId(payerId);

            Payment payment = new Payment().setId(paymentId);

            APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
            return payment.execute(apiContext, paymentExecution);
        
    }
}