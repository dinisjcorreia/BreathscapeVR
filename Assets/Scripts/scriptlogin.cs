using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.Networking;
using System;
using UnityEngine.SceneManagement;
using UnityEngine.XR.Interaction.Toolkit;


public class scriptlogin : MonoBehaviour
{

      // reset pos
    [SerializeField] Transform resetTransform;
    [SerializeField] GameObject player;
    [SerializeField] Camera playerHead;
    // Start is called before the first frame update
    void Start()
    {
         StartCoroutine(resetpos());
        StartCoroutine(Codigologin());
    }

  IEnumerator resetpos()
    {
       yield return new WaitForSeconds(0.01f);
        ResetPosition();
      
    }
    // Update is called once per frame
    void Update()
    {
         bool triggerValue=false;
       
        var leftHandedControllers = new List<UnityEngine.XR.InputDevice>();
        var desiredCharacteristics = UnityEngine.XR.InputDeviceCharacteristics.HeldInHand | UnityEngine.XR.InputDeviceCharacteristics.Left | UnityEngine.XR.InputDeviceCharacteristics.Controller;
        UnityEngine.XR.InputDevices.GetDevicesWithCharacteristics(desiredCharacteristics, leftHandedControllers);

        if(leftHandedControllers.Count>0)
        {
            UnityEngine.XR.InputDevice leftcontroller = leftHandedControllers[0];

            // verifica se o trigger esquerdo foi pressionado
            

             if (leftcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.primaryButton, out triggerValue) && triggerValue)
            {
                ResetPosition();
            }

             if (leftcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.secondaryButton, out triggerValue) && triggerValue)
            {
                ResetPosition();
            }


        }
    }

      public void ResetPosition(){

        var rotationAngleY = playerHead.transform.rotation.eulerAngles.y - resetTransform.rotation.eulerAngles.y;
        player.transform.Rotate(0, -rotationAngleY, 0);

        var distanceDiff = resetTransform.position - playerHead.transform.position;
        player.transform.position += distanceDiff;

    }
    public TMP_Text codigo; 
    string endereço = "https://breathscapevr.000webhostapp.com";
     IEnumerator Codigologin()
    {
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
        form.AddField("idunico", SystemInfo.deviceUniqueIdentifier);
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/id.php", form);

        
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
            if (www.downloadHandler.text!="0"){
                codigo.text="Código: <color=#027E02>"+  www.downloadHandler.text;
            }
            else
            {
                verificalogin();
            }
          
            


        }
           
    }

           

public void verificalogin(){
     StartCoroutine(verificaloginn());
}

 public void Menu(){
       SceneManager.LoadScene("SceneMenu", LoadSceneMode.Single);
    }

 IEnumerator verificaloginn()
    {
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
        form.AddField("idunico", SystemInfo.deviceUniqueIdentifier);
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/verificalogin.php", form);

        
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
            string stringresultado =www.downloadHandler.text;
            Debug.Log(stringresultado);
            if (stringresultado!="0"){
                string[] resultado = stringresultado.Split(',');

                GestorPrograma.Instancia.Utilizador = resultado[0];
                GestorPrograma.Instancia.Numsessoes =  Int32.Parse(resultado[1]);;
                SceneManager.LoadScene("SceneMenu", LoadSceneMode.Single);
            }
            
          
            


        }
           
    }
    

}
