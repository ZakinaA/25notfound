/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author zakina
 */
public class Caserne {
    
    private int id;
    private String nom ;
    private String rue ;
    private int cpos ;
    private String ville ;
    private ArrayList<Caserne> lesCasernes ;
    private ArrayList<Pompier> lesPompiers ;

    public Caserne() {
    }

    public Caserne(int id) {
        this.id = id;
    }

    public Caserne(int id, String nom, String rue, int cpos, String ville) {
        this.id = id;
        this.nom = nom;
        this.rue = rue;
        this.cpos = cpos;
        this.ville = ville;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getRue() {
        return rue;
    }

    public void setRue(String rue) {
        this.rue = rue;
    }
   
    public int getCpos() {
        return cpos;
    }

    public void setCpos(int cpos) {
        this.cpos = cpos;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public Caserne(ArrayList<Caserne> lesCasernes) {
        this.lesCasernes = lesCasernes;
    }
    
    public ArrayList<Caserne> getLesCasernes() {
        return lesCasernes;
    }

    public ArrayList<Pompier> getLesPompiers() {
        return lesPompiers;
    }

    public void setLesPompiers(ArrayList<Pompier> lesPompiers) {
        this.lesPompiers = lesPompiers;
    }
    
    public void addPompier(Pompier p){
        if (lesPompiers == null){
            lesPompiers = new ArrayList<Pompier>();
        }
        lesPompiers.add(p);
    }
    
}
