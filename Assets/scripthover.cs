using System.Collections;
using System.Collections.Generic;
using Microsoft.Unity.VisualStudio.Editor;
using UnityEngine;
using UnityEngine.UI;

public class scripthover : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public Sprite selecionado;
    public Button estrela1;

    public void OnMouseOver()
    {
       
         estrela1.image.overrideSprite = selecionado;

    }
    public void Saiu()
    {
       
         estrela1.image.overrideSprite = null;

    }
}
