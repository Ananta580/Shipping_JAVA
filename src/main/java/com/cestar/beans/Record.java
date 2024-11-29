package com.cestar.beans;

public class Record {
    private int clientID;
    private String clientName;
    private String clientPhone;
    private String itemShipped;
    private String shipDate;
    private String dateReceived;

    public Record(int clientID, String clientName, String clientPhone, String itemShipped, String shipDate, String dateReceived) {
        this.clientID = clientID;
        this.clientName = clientName;
        this.clientPhone = clientPhone;
        this.itemShipped = itemShipped;
        this.shipDate = shipDate;
        this.dateReceived = dateReceived;
    }

    public Record() {
        super();
    }

    public int getClientID() {
        return clientID;
    }

    public void setClientID(int clientID) {
        this.clientID = clientID;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getClientPhone() {
        return clientPhone;
    }

    public void setClientPhone(String clientPhone) {
        this.clientPhone = clientPhone;
    }

    public String getItemShipped() {
        return itemShipped;
    }

    public void setItemShipped(String itemShipped) {
        this.itemShipped = itemShipped;
    }

    public String getShipDate() {
        return shipDate;
    }

    public void setShipDate(String shipDate) {
        this.shipDate = shipDate;
    }

    public String getDateReceived() {
        return dateReceived;
    }

    public void setDateReceived(String dateReceived) {
        this.dateReceived = dateReceived;
    }

    @Override
    public String toString() {
        return "Record{" +
                "clientID=" + clientID +
                ", clientName='" + clientName + '\'' +
                ", clientPhone='" + clientPhone + '\'' +
                ", itemShipped='" + itemShipped + '\'' +
                ", shipDate='" + shipDate + '\'' +
                ", dateReceived='" + dateReceived + '\'' +
                '}';
    }
}
