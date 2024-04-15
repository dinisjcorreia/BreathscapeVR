using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class legenda : MonoBehaviour
{

     // legendas
 
    public GameObject legendainspire;
    public GameObject legendaexpire;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

   

    public void Expire(){
       legendainspire.SetActive(false);
       legendaexpire.SetActive(true);
    }

    public void Inspire(){
        legendaexpire.SetActive(false);
       legendainspire.SetActive(true);
       
    }
}
