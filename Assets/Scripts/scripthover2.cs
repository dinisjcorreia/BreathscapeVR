using System.Collections;
using System.Collections.Generic;

using UnityEngine;
using UnityEngine.UI;

public class scripthover2 : MonoBehaviour
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
    public Button estrela2;

    public void OnMouseOver()
    {
       
         estrela1.image.overrideSprite = selecionado;
         estrela2.image.overrideSprite = selecionado;

    }
    public void Saiu()
    {
       
         estrela1.image.overrideSprite = null;
         estrela2.image.overrideSprite = null;

    }
}
