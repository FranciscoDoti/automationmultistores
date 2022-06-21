import java.util.*;

import javax.print.attribute.IntegerSyntax;

public class ListExample1 {
  public static void main(String args[]) {
    // Creating a List
    List<String> listaDeElementos = new ArrayList<String>();
    List<String> listaDesordenada = new ArrayList<String>();
    List<String>  listaOrdenada = new  ArrayList<String>() ;
    // Adding elements in the List
    listaDeElementos.add("VAR COLOC");
    listaDeElementos.add("SPREAD");
    listaDeElementos.add("FX");
    listaDeElementos.add("ELEM4");
    
    listaDesordenada.add("ELEM4");
    listaDesordenada.add("VAR COLOC");
    //listaDesordenada.add("SPREAD");
    listaDesordenada.add("FX");
    
    System.out.println("Lista DESordenada: "+ listaDesordenada.toString());

    for (Integer i = 0; i <= listaDesordenada.size(); i++) {
        try {
          listaOrdenada.add(listaDesordenada.get(listaDesordenada.indexOf(listaDeElementos.get(i))));
        } catch (Exception e) {
          //TODO: handle exception
        }

    } 
    System.out.println("Lista ordenada: "+ listaOrdenada.toString());// Iterating the List element using for-each loop
  
}}