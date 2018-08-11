/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Admin {
    private String userAD;
    private String passAD;

    public Admin() {
    }

    public String getUserAD() {
        return userAD;
    }

    public void setUserAD(String userAD) {
        this.userAD = userAD;
    }

    public String getPassAD() {
        return passAD;
    }

    public void setPassAD(String passAD) {
        this.passAD = passAD;
    }

    public Admin(String userAD, String passAD) {
        this.userAD = userAD;
        this.passAD = passAD;
    }

    
}
