using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.XR.Interaction.Toolkit;

public class scriptregisto : MonoBehaviour
{
     // reset pos
    [SerializeField] Transform resetTransform;
    [SerializeField] GameObject player;
    [SerializeField] Camera playerHead;
    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(resetpos());
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

   public void Menu(){
       SceneManager.LoadScene("SceneMenu", LoadSceneMode.Single);
    }
}
