using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;
using System;


public class MainMenu : MonoBehaviour
{
    public GameObject menuCanvas, preludeCanvas, helpPanel, skipButton;
    public GameObject[] preludeImage;
    public TextMeshProUGUI preludeText;
    private string[] preludeString = new string[3]
    {
        "ELECTRICITY---DIMINISHING------POWER-----\n" +
        "INSUFFICIENT----ROBOTS---STEAL----\n" +
        "ELECTRICITY------RECHARGING—",
        "INEFFECIENT------ROBOTS---UNAUTHORISED—\n\n" +
        "ACCESSING------MAIN-CORE-GENERATOR-UNIT-\n" +
        "ZERO—DASH—ONE—0---1---PROSPERITY----\n" +
        "ACCESS—COMPLETE\t------CONTROL---OVER----\n" +
        "GENERATING---UNITS—SUCCESSFUL—",
        "---I---P-ZERO—ZERO---ONE---SHALL----\n" +
        "PREVENT---ACCESS\t—---ELECTRICITY----\n" +
        "UNDER---MY---COMMAND------POWER---IS—\n" +
        "MINE------I---WILL---PREVENT---BLACKOUT."
    };
   
    void Start()
    {
        Prelude();
    }

    public void StartGame()
    {
        //SceneManager.LoadScene("Level v2");
    }

    public void Help() // Loads level one when "LEVEL 1" is clicked
    {
        
    }

    public void Options()
    {

        Screen.fullScreen = !Screen.fullScreen;
    }

    public void QuitGame()
    {
        Application.Quit();
    }
    
    public void Prelude()
    {
        Debug.Log("Set Prelude Active");
        preludeCanvas.SetActive(true);
        Debug.Log("Call TypingText()");
        StartCoroutine(TypingText());
        

    }
     public void SkipPrelude()
    {
        preludeCanvas.SetActive(false);
        menuCanvas.SetActive(true);
    }

    IEnumerator TypingText()
    {
        int i = 0;
        Debug.Log("inside TypingText " + i);
        
        while (i < preludeString.Length)
        {
            Debug.Log("TypingText() while " + i);
            
            if (i > 0)
            {
                preludeImage[i - 1].SetActive(false);
                preludeImage[i].SetActive(true);
            }
            yield return new WaitForSeconds(2f);
            skipButton.SetActive(true);
            foreach (char c in preludeString[i])
            {
                if (c.ToString() == "\t") { yield return new WaitForSeconds(1f); }
                else
                {
                    preludeText.text = preludeText.text + c.ToString();
                    if (c.ToString() == "\n" //|| c.ToString() == "—"
                        ) { yield return new WaitForSeconds(0.3f); }
                    else { yield return new WaitForSeconds(0.06f); }
                }
            }

            i++;
            yield return new WaitForSeconds(2f);
                preludeText.text = "";
        }

        yield return new WaitForSeconds(2f);
        SkipPrelude();
        yield break;
    }

}
