using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GestorPrograma : MonoBehaviour
{

    public static GestorPrograma Instancia { get; private set; }

    private string utilizador;
    public string Utilizador {
        get { return utilizador; }
        set { utilizador = value; }
    }
    private int numsessoes;
    public int Numsessoes
    {
        get { return numsessoes; }
        set { numsessoes = value; }
    }

    //Verificar se sessão do utilizador já está iniciada
    public bool SessaoIniciada() {

        if(utilizador != null){
            return true;
        }
        else
        {
            return false;
        }
    }
    //Fazer reset ao utilizador
    public void LoggOut()
    {
        utilizador = null;
    }

    //Awake(Despertador) é chamado quando a instancia do script for carregada
    private void Awake()
    {
        //2.	Garanta a Existência de apenas um GestorDoPrograma durante a sua execução.
        //Se instância não for nula então 
        if (Instancia != null)
        {
            Destroy(gameObject);
            return;
        }
        //Informa o programa que é desta instância que estamos a tratar
        Instancia = this;
        //Método que informa a aplicação para não destruir o objeto marcado quando é carregada uma cena.
        DontDestroyOnLoad(gameObject);

    }

}
