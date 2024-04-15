using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Networking;
using UnityEngine.XR.Interaction.Toolkit;

public class Logic : MonoBehaviour
{

    // aúdio
    public AudioSource audio;
    public AudioSource musica;

    // contador
    private int contador;

    // legendas
    public GameObject legenda1;
    public GameObject legenda2;
    public GameObject legenda3;
    public GameObject legenda4;
    public GameObject legendainspire;
    public GameObject legendaexpire;
    public GameObject legenda7;
    public GameObject legenda8;

    // bola
    public GameObject bolaa;

    // opções menu
    public GameObject botao;

    // linhas comando
    public XRInteractorLineVisual lineVisualr;
    public XRInteractorLineVisual lineVisuall;

    // animador
    private Animator anim;

    // estado
    private bool ativado = false;

    // config
    private int numsessoes=6;

    // reset pos
    [SerializeField] Transform resetTransform;
    [SerializeField] GameObject player;
    [SerializeField] Camera playerHead;

    //opiniao
     [SerializeField] GameObject opiniao;


 //menu pausa
     [SerializeField] GameObject menupausa;


    // tempo sessao

    private float timer=0;
    private bool timerActive = false;


    void Start()
    {
          StartCoroutine(resetpos());

        // conectar a animação da bola
        anim = bolaa.GetComponent<Animator>();

        // reset configs
        audio.volume = 1f;
        musica.volume = 1f;
        contador = 0;
        ativado = false;

    }

       void botoes(bool s)
    {
        if (s==false){

            // desativa botões e controles
            botao.SetActive(false);
            lineVisuall.enabled = false;
            lineVisualr.enabled = false;

        }else if (s){

            // ativa botões e controles
          //  botao.SetActive(true);
            lineVisuall.enabled = true;
            lineVisualr.enabled = true;
        }
        
     

    }

    public void menuPausa(bool flag){
        if (flag){
            if (menupausa.activeSelf==false){
                menupausa.SetActive(true);
            }
            
        }else{
           if (menupausa.activeSelf==true){
                menupausa.SetActive(false);
            }
        }
            
    }

    public void iniciar()
    {
        // inicia jogo
        StartCoroutine(IniciarJogo());

        // desativa controles e opções
        botoes(false);
    }

    public void addnumsessoess(){
     StartCoroutine(numsessoess(1));
}

    public void enviarrtimer(){
     StartCoroutine(enviartimer());
}

public void removenumsessoess(){
     StartCoroutine(numsessoess(-1));
}

 IEnumerator resetpos()
    {
       yield return new WaitForSeconds(0.01f);
         ResetPosition();
           
    }
string endereço = "https://breathscapevr.000webhostapp.com";
    IEnumerator numsessoess(int num)
    {
        string tempo =timer.ToString();
        timer=0;
        timerActive=false;
       GestorPrograma.Instancia.Numsessoes=GestorPrograma.Instancia.Numsessoes+num;

      
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
        form.AddField("username", GestorPrograma.Instancia.Utilizador);
        form.AddField("numsessoes", GestorPrograma.Instancia.Numsessoes);
        form.AddField("timer", tempo);
        form.AddField("conclui", "1");
    
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/numsessoes.php", form);

        
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
           timer=0;
            Debug.Log("add 1 sessao");
           
            abrirOpiniao();

        }
           
    }

    // inicia o jogo
    IEnumerator IniciarJogo()
    {
        if (ativado == false) // verifica se o jogo já foi iniciado
        {
           timerActive=true;
            ativado = true; 

            StartCoroutine(Legendas());
            bolaa.SetActive(true);
            audio.Play();


            yield return new WaitForSeconds(19f);


            // repete o exercício 6 vezes
            while (contador <= numsessoes)
            {
                contador += 1;
                Debug.Log(contador);
                anim.SetTrigger("iniciar");

                yield return new WaitForSeconds(20f);
            }

            yield return new WaitForSeconds(9f);
            bolaa.SetActive(false);
            
            addnumsessoess();
            


        }




    }

    //abrir opiniao
    public void abrirOpiniao()
    {
     
              opiniao.SetActive(true);
     

        
    }
    
    // sair do jogo
    public void sair()
    {
        SceneManager.LoadScene("SceneCenário", LoadSceneMode.Single);
        //Application.Quit();
    }

    // controlo das legendas
    IEnumerator Legendas()
    {

        legenda1.SetActive(true);
        yield return new WaitForSeconds(2f);
        legenda1.SetActive(false);
        legenda2.SetActive(true);
        yield return new WaitForSeconds(5f);
        legenda2.SetActive(false);
        legenda3.SetActive(true);
        yield return new WaitForSeconds(5f);
        legenda3.SetActive(false);
        legenda4.SetActive(true);
        yield return new WaitForSeconds(6f);
        legenda4.SetActive(false);


      
        yield return new WaitForSeconds(139f);
        
        legendainspire.SetActive(false);
        legendaexpire.SetActive(false);
        legenda7.SetActive(true);
        yield return new WaitForSeconds(2f);
        legenda7.SetActive(false);
        legenda8.SetActive(true);
        yield return new WaitForSeconds(6f);
        legenda8.SetActive(false);

    }
    // enviar timer
     IEnumerator enviartimer()
    {
    
      string tempo = timer.ToString();
       timer=0;
     
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        
        form.AddField("username", GestorPrograma.Instancia.Utilizador);
        form.AddField("timer", tempo);
        form.AddField("conclui", "0");
    
        UnityWebRequest www = UnityWebRequest.Post(endereço+"/breathscapevr/enviartimer.php", form);

        
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
           timer=0;
            Debug.Log("addtimer");
           
           

        }
           
    }

    // termina sessão de respiração e reseta opções
    public void stop()
    {
        bool flag=false;
        if (timerActive){
            timerActive=false;
    
       enviarrtimer();
        }
       
       if (bolaa.activeSelf){
        flag=true;
       }
        contador = 0;
        ativado = false;
        audio.Stop();
        bolaa.SetActive(false);
        StopAllCoroutines();
        legenda1.SetActive(false);
        legenda2.SetActive(false);
        legenda3.SetActive(false);
        legenda4.SetActive(false);
        legendainspire.SetActive(false);
        legendaexpire.SetActive(false);
        legenda7.SetActive(false);
        legenda8.SetActive(false);
        anim.StopPlayback();
        menupausa.SetActive(false);
        bolaa.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
      
      botoes(true);
      if(flag){
            abrirOpiniao();
        
      }
      
      
    }


    // reset posição
    [ContextMenu("Reset Position")]
    public void ResetPosition(){

        var rotationAngleY = playerHead.transform.rotation.eulerAngles.y - resetTransform.rotation.eulerAngles.y;
        player.transform.Rotate(0, -rotationAngleY, 0);

        var distanceDiff = resetTransform.position - playerHead.transform.position;
        player.transform.position += distanceDiff;

    }
   
    void Update()
    {

        // timer

        if (timerActive){
            timer += Time.deltaTime;
        }
        //comandos

        bool triggerValue=false;
       
        var leftHandedControllers = new List<UnityEngine.XR.InputDevice>();
        var desiredCharacteristics = UnityEngine.XR.InputDeviceCharacteristics.HeldInHand | UnityEngine.XR.InputDeviceCharacteristics.Left | UnityEngine.XR.InputDeviceCharacteristics.Controller;
        UnityEngine.XR.InputDevices.GetDevicesWithCharacteristics(desiredCharacteristics, leftHandedControllers);

        if(leftHandedControllers.Count>0)
        {
            UnityEngine.XR.InputDevice leftcontroller = leftHandedControllers[0];

            // verifica se o trigger esquerdo foi pressionado
           /*  if (leftcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.triggerButton, out triggerValue) && triggerValue)
            {
               
            } */

             if (leftcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.primaryButton, out triggerValue) && triggerValue)
            {
                ResetPosition();
            }

             if (leftcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.secondaryButton, out triggerValue) && triggerValue)
            {
                ResetPosition();
            }


        }

     if (Input.GetKeyDown("space"))
        {
             menuPausa(true);
          
        } 
       

        var rightHandedControllers = new List<UnityEngine.XR.InputDevice>();
        var desiredCharacteristicsright = UnityEngine.XR.InputDeviceCharacteristics.HeldInHand | UnityEngine.XR.InputDeviceCharacteristics.Right | UnityEngine.XR.InputDeviceCharacteristics.Controller;
        UnityEngine.XR.InputDevices.GetDevicesWithCharacteristics(desiredCharacteristicsright, rightHandedControllers);

        if (rightHandedControllers.Count > 0)
        {
            UnityEngine.XR.InputDevice rightcontroller = rightHandedControllers[0];

            // verifica se o trigger direito foi pressionado
            /* if (rightcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.triggerButton, out triggerValue) && triggerValue)
            {
                
            } */

             if (rightcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.primaryButton, out triggerValue) && triggerValue)
            {
              
                 menuPausa(true);
            }

             if (rightcontroller.TryGetFeatureValue(UnityEngine.XR.CommonUsages.secondaryButton, out triggerValue) && triggerValue)
            {
               
                 menuPausa(true);
            }
        }

       


    }

    public void ResetPiscina(){
         SceneManager.LoadScene("CenarioPiscina", LoadSceneMode.Single);
    }
}
