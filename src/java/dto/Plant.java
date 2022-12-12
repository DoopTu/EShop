/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author LENOVO
 */
public class Plant {
    private int PID;
    private String PName;
    private int PPrice;
    private String PImgPath;
    private String PDescription;
    private int PStatus;
    private int PCateID;
    private String PCateName;

    public Plant() {
    }

    public Plant(int PID, String PName, int PPrice, String PImgPath, String PDescription, int PStatus, int PCateID, String PCateName) {
        this.PID = PID;
        this.PName = PName;
        this.PPrice = PPrice;
        this.PImgPath = PImgPath;
        this.PDescription = PDescription;
        this.PStatus = PStatus;
        this.PCateID = PCateID;
        this.PCateName = PCateName;
    }

    public int getPID() {
        return PID;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public String getPName() {
        return PName;
    }

    public void setPName(String PName) {
        this.PName = PName;
    }

    public int getPPrice() {
        return PPrice;
    }

    public void setPPrice(int PPrice) {
        this.PPrice = PPrice;
    }

    public String getPImgPath() {
        return PImgPath;
    }

    public void setPImgPath(String PImgPath) {
        this.PImgPath = PImgPath;
    }

    public String getPDescription() {
        return PDescription;
    }

    public void setPDescription(String PDescription) {
        this.PDescription = PDescription;
    }

    public int getPStatus() {
        return PStatus;
    }

    public void setPStatus(int PStatus) {
        this.PStatus = PStatus;
    }

    public int getPCateID() {
        return PCateID;
    }

    public void setPCateID(int PCateID) {
        this.PCateID = PCateID;
    }

    public String getPCateName() {
        return PCateName;
    }

    public void setPCateName(String PCateName) {
        this.PCateName = PCateName;
    }

    @Override
    public String toString() {
        return "Plant{" + "PID=" + PID + ", PName=" + PName + ", PPrice=" + PPrice + ", PImgPath=" + PImgPath + ", PDescription=" + PDescription + ", PStatus=" + PStatus + ", PCateID=" + PCateID + ", PCateName=" + PCateName + '}';
    }
    

    
    

    
    
}
