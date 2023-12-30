package com.green.beans;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import com.green.utility.IDUtil;

@SuppressWarnings("serial")
public class TransactionBean implements Serializable {

	private String transactionId;

	private String userName;

	private Timestamp transDateTime;

	private String amount;

	public TransactionBean() {
		super();
		this.transactionId = IDUtil.generateTransId();

		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		sdf.format(timestamp);

		this.transDateTime = timestamp;
	}

	public TransactionBean(String userName, String amount) {
		super();
		this.userName = userName;
		this.amount = amount;

		this.transactionId = IDUtil.generateTransId();

		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		sdf.format(timestamp);

		this.transDateTime = timestamp;

	}

	public TransactionBean(String transactionId, String userName, String amount) {
		super();
		this.transactionId = transactionId;
		this.userName = userName;
		this.amount = amount;

		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		sdf.format(timestamp);

		this.transDateTime = timestamp;
	}

	public TransactionBean(String userName, Timestamp transDateTime, String amount) {
		super();
		this.userName = userName;
		this.transDateTime = transDateTime;
		this.transactionId = IDUtil.generateTransId();
		this.amount = amount;
	}

	public TransactionBean(String transactionId, String userName, Timestamp transDateTime, String amount) {
		super();
		this.transactionId = transactionId;
		this.userName = userName;
		this.transDateTime = transDateTime;
		this.amount = amount;

	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Timestamp getTransDateTime() {
		return transDateTime;
	}

	public void setTransDateTime(Timestamp transDateTime) {
		this.transDateTime = transDateTime;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

}
