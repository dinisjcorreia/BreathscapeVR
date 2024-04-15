using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Networking;

public class scriptopiniao : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private int classificacao=-1;
    public GameObject obrigado;
    public GameObject opiniao;
    public GameObject opiniaoparabens;


    public void setClassificacao1(){
        classificacao=1;
         enviaropiniao();
       
       
    }

    public void setClassificacao2(){
        classificacao=2;
         enviaropiniao();
       
    }

    public void setClassificacao3(){
        classificacao=3;
         enviaropiniao();
       
    }

    public void setClassificacao4(){
        classificacao=4;
         enviaropiniao();
        
    }

    public void setClassificacao5(){
        classificacao=5;
         enviaropiniao();
       
      
    }


    public void enviaropiniao(){
        StartCoroutine(addopiniao());
    }
    public void sair()
    {
        string cenario = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(cenario, LoadSceneMode.Single);
        //Application.Quit();
    }

    string endereço = "https://breathscapevr.000webhostapp.com";
    IEnumerator addopiniao()
    {
      
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
       
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/opinioes.inc.php?username="+GestorPrograma.Instancia.Utilizador+"&classificacao="+classificacao, form);

        
        //Pedir ao unity para executar e assim que receber toda a informação continua a execução do script
        yield return www.SendWebRequest();

        //se existir erro de comunicação com o servidor:
        if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError) 
        {
            //Existem erros de comunicação
            Debug.Log("Comunicação com o servidor falhou. Erro #" + www.error);
            //erro.text="Comunicação com o servidor falhou.";
        }
        //Se não, o utilizador é criado com sucesso e voltamos ao menu principal
        else
        {
           
            Debug.Log("add opiniao");

        }
           
        obrigado.SetActive(true);
        opiniao.SetActive(false);
        opiniaoparabens.SetActive(false);
    }
}
