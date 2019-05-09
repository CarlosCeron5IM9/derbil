
package model;

public class ReporteEventos {
    
    private int IdRE;
    private int IUser;
    private String FechaRE;
    private String DescRE;
    private String TipoE;
    private String RespE;
    private String StatusRE;

    public String getStatusRE() {
        return StatusRE;
    }

    public void setStatusRE(String StatusRE) {
        this.StatusRE = StatusRE;
    }

    public int getIdRE() {
        return IdRE;
    }

    public void setIdRE(int IdRE) {
        this.IdRE = IdRE;
    }

    public int getIUser() {
        return IUser;
    }

    public void setIUser(int IUser) {
        this.IUser = IUser;
    }

    public String getFechaRE() {
        return FechaRE;
    }

    public void setFechaRE(String FechaRE) {
        this.FechaRE = FechaRE;
    }

    public String getDescRE() {
        return DescRE;
    }

    public void setDescRE(String DescRE) {
        this.DescRE = DescRE;
    }

    public String getTipoE() {
        return TipoE;
    }

    public void setTipoE(String TipoE) {
        this.TipoE = TipoE;
    }

    public String getRespE() {
        return RespE;
    }

    public void setRespE(String RespE) {
        this.RespE = RespE;
    }


}
