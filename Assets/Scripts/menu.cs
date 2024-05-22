using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TMPro;
using UnityEngine.Networking;
using UnityEngine.XR.Interaction.Toolkit;
 

public class menu : MonoBehaviour
{
     // reset pos
    [SerializeField] Transform resetTransform;
    [SerializeField] GameObject player;
    [SerializeField] Camera playerHead;
    public TMP_Text mensagem; 
        public Button loginbtn;
        public Button jogarbtn;
         public Button logoutbtn;

         
    // Start is called before the first frame update
    void Start()
    {
         StartCoroutine(resetpos());
       //  AsyncOperation asyncLoad = SceneManager.LoadSceneAsync("CenarioPiscina");
        //  StartCoroutine(verificarlogin());
         if (GestorPrograma.Instancia.SessaoIniciada() == true)
        {
            mensagem.text = "Bem-vindo " + GestorPrograma.Instancia.Utilizador +" <br>Sessões: "+GestorPrograma.Instancia.Numsessoes ;
            loginbtn.interactable=false;
            jogarbtn.interactable=true;
            logoutbtn.interactable=true;

        }
        else
        {
            loginbtn.interactable=true;
            jogarbtn.interactable=false;
            logoutbtn.interactable=false;
        }
        
    }

      IEnumerator resetpos()
    {
       yield return new WaitForSeconds(0.01f);
        ResetPosition();
      
    }

    // Update is called once per frame
    public void Registo(){
       SceneManager.LoadScene("SceneRegistar", LoadSceneMode.Single);
    }

      public void Login(){
       SceneManager.LoadScene("SceneLogin", LoadSceneMode.Single);
    }

    public void Jogar(){
       SceneManager.LoadScene("SceneCenário", LoadSceneMode.Single);
    }

string endereço = "";

public void fazerlogout(){
     StartCoroutine(logout());
}
    IEnumerator logout()
    {
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
        form.AddField("idunico", SystemInfo.deviceUniqueIdentifier);
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/logout.php", form);

        
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
           
            mensagem.text = "Não existe sessão ativa.<br>Registe-se ou inicie sessão" ;
            loginbtn.interactable=true;
            jogarbtn.interactable=false;
            logoutbtn.interactable=false;
          
        


        }

        
           
    }
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
}
