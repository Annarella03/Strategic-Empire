package it.unisa.bean;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

public class AccessorioBean implements Serializable{
    public String cod_accessorio,nome_accessorio,tipologia,descrizione;
    public Double prezzo;
    public String immagineCopertina,immagine2;
    int quantita;
    public AccessorioBean(){
        cod_accessorio = "";
        nome_accessorio = "";
        tipologia = "";
        prezzo = 0.0;
        descrizione = "";
        quantita = 0;
    }

    public void setQuantita(int q) {
    	this.quantita = q;
    }
    
    public int getQuantita() {
    	return quantita;
    }
    
    public void setImmagineCop(String img) {
    	this.immagineCopertina = img;
    }
    
    public String getImmagineCop() {
    	return immagineCopertina;
    }
    
    public void setImmagine2(String img) {
    	this.immagine2 = img;
    }
    
    public String getImmagine2() {
    	return immagine2;
    }
    
    public void setCod_accessorio(String cod) {
        this.cod_accessorio = cod;
    }
    public String getCod_Accessorio() {
        return this.cod_accessorio;
    }
    
    public void setNomeaccessorio(String nome){
        this.nome_accessorio = nome;
    }

    public String getNomeaccessorio() {
        return nome_accessorio;
    }

    public void setTipologia(String tipologia) {
        this.tipologia = tipologia;
    }

    public String getTipologia() {
        return tipologia;
    }

    public Double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(Double prezzo) {
        this.prezzo = prezzo;
    }
    
    public void setDescrizione(String descrizione){
        this.descrizione = descrizione;
    }

    public String getDescrizione() {
        return descrizione;
    }

    @Override
    public String toString() {
        return "GiocoBean{" +
                "cod_accessorio='" + cod_accessorio + '\'' +
                ", nome accessorio='" + nome_accessorio + '\'' +
                ", tipologia='" + tipologia + '\'' +
                ", prezzo=" + prezzo + '\'' +             
                ", descrizione='" + descrizione +
                '}';
    }
}
