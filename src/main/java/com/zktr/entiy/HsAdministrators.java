package com.zktr.entiy;

public class HsAdministrators {
    private int adId;
    private String adName;
    private String adAccount;
    private String adPass;
    private String   adHead;

    public int getAdId() {
        return adId;
    }

    public void setAdId(int adId) {
        this.adId = adId;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

    public String getAdAccount() {
        return adAccount;
    }

    public void setAdAccount(String adAccount) {
        this.adAccount = adAccount;
    }

    public String getAdPass() {
        return adPass;
    }

    public void setAdPass(String adPass) {
        this.adPass = adPass;
    }

    public String getAdHead() {
        return adHead;
    }

    public void setAdHead(String adHead) {
        this.adHead = adHead;
    }

    @Override
    public String toString() {
        return "HsAdministrators{" +
                "adId=" + adId +
                ", adName='" + adName + '\'' +
                ", adAccount='" + adAccount + '\'' +
                ", adPass='" + adPass + '\'' +
                ", adHead='" + adHead + '\'' +
                '}';
    }

    public HsAdministrators() {
    }

    public HsAdministrators(int adId, String adName, String adAccount, String adPass, String adHead) {
        this.adId = adId;
        this.adName = adName;
        this.adAccount = adAccount;
        this.adPass = adPass;
        this.adHead = adHead;
    }
}
