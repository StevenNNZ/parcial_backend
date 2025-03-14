package entity;

public class Reserva {
    private String nombres;
    private String correo;
    private String fechaReserva;
    private String tipoEspacio;
    private int duracion;

    public Reserva(String nombres, String correo, String fechaReserva, String tipoEspacio, int duracion) {
        this.nombres = nombres;
        this.correo = correo;
        this.fechaReserva = fechaReserva;
        this.tipoEspacio = tipoEspacio;
        this.duracion = duracion;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(String fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getTipoEspacio() {
        return tipoEspacio;
    }

    public void setTipoEspacio(String tipoEspacio) {
        this.tipoEspacio = tipoEspacio;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    

}
