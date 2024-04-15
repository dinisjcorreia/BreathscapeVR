using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TMPro;
using UnityEngine.XR.Interaction.Toolkit;

public class script : MonoBehaviour
{
   
    public TMP_Text mensagem; 
      public Button cenario2;
     public Button cenario3;
      public TMP_Text bloqueadocenario2; 
       public TMP_Text bloqueadocenario3; 

           // reset pos
    [SerializeField] Transform resetTransform;
    [SerializeField] GameObject player;
    [SerializeField] Camera playerHead;


    // aviso

    [SerializeField] GameObject avisocenario2;
    [SerializeField] GameObject avisocenario3;
    [SerializeField] GameObject background;

    void Start()
    {
      StartCoroutine(resetpos());
          if (GestorPrograma.Instancia.SessaoIniciada() == true)
        {
            mensagem.text = "Utilizador: " + GestorPrograma.Instancia.Utilizador +"<br>Número de sessões: "+GestorPrograma.Instancia.Numsessoes ;

            if (GestorPrograma.Instancia.Numsessoes>=999){
                cenario2.interactable=true;
                bloqueadocenario2.text="";
                cenario3.interactable=true;
                bloqueadocenario3.text="";
            }else if(GestorPrograma.Instancia.Numsessoes>=3){
                 cenario2.interactable=true;
                bloqueadocenario2.text="";
            }

            

        }
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

    public void CenaPiscina(){
         SceneManager.LoadScene("SceneLoading", LoadSceneMode.Single);
    }

    public void CenaSala(){
         SceneManager.LoadScene("SceneLoadingSala", LoadSceneMode.Single);
    }

    public void sair()
    {
       
      SceneManager.LoadScene("SceneMenu", LoadSceneMode.Single);
    }

    public void ResetPosition(){

        var rotationAngleY = playerHead.transform.rotation.eulerAngles.y - resetTransform.rotation.eulerAngles.y;
        player.transform.Rotate(0, -rotationAngleY, 0);

        var distanceDiff = resetTransform.position - playerHead.transform.position;
        player.transform.position += distanceDiff;

    }

    public void aviso2(){
      

        if (cenario2.interactable==false){
            StartCoroutine(avisocenariodois());
        }
       
    }

     IEnumerator avisocenariodois()
    {

        Vector2 size = background.GetComponent<RectTransform>().sizeDelta;
        Vector3 pos = background.GetComponent<RectTransform>().localPosition;
       
      if (avisocenario3.activeSelf==false){
        background.GetComponent<RectTransform>().sizeDelta = new Vector2 (4.3059f, 4.4665f);
        background.GetComponent<RectTransform>().localPosition = new Vector3 (-3.08f, -8.1191f, 6.1f);
        avisocenario2.SetActive(true);
          yield return new WaitForSeconds(3f);
        avisocenario2.SetActive(false);
        background.GetComponent<RectTransform>().sizeDelta = size;
         background.GetComponent<RectTransform>().localPosition = pos;
      }

         
    }

       public void aviso3(){
           if (cenario3.interactable==false){
            StartCoroutine(avisocenariotres());
        }
    }

     IEnumerator avisocenariotres()
    {
         Vector2 size = background.GetComponent<RectTransform>().sizeDelta;
         Vector3 pos = background.GetComponent<RectTransform>().localPosition;
        if (avisocenario2.activeSelf==false){
        background.GetComponent<RectTransform>().sizeDelta = new Vector2 (4.3059f, 4.4665f);
        background.GetComponent<RectTransform>().localPosition = new Vector3 (-3.08f, -8.1191f, 6.1f);
        avisocenario3.SetActive(true);
          yield return new WaitForSeconds(3f);
        avisocenario3.SetActive(false);
         background.GetComponent<RectTransform>().sizeDelta = size;
           background.GetComponent<RectTransform>().localPosition = pos;
      }
      
        
    }

}
