using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;
using System;


public class MainMenu : MonoBehaviour
{
    public GameObject menuCanvas, preludeCanvas, skipButton; //, prelude1, prelude2, prelude3;
    public RawImage preludeImage;
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
    /*
    private string prelude1 = 
        "ELECTRICITY---DIMINISHING------POWER-----INSUFFICIENT----ROBOTS-----STEAL----ELECTRICITY-----RECHARGING—";
    private string prelude2 = 
        "INEFFECIENT----ROBOTS----UNAUTHORISED—\r\nACCESSING----MAIN-CORE-GENERATOR-UNIT-ZERO—DASH—ONE—0---1---PROSPERITY----ACCESS—COMPLETE------CONTROL---OVER---GENERATING---UNITS—SUCCESSFUL—";
    private string prelude3 = 
        "----I----P-ZERO—ZERO---ONE---SHALL---PREVENT---ACCESS—\r\n---ELECTRICITY---UNDER---MY---COMMAND------POWER---IS—MINE---I---WILL---PREVENT---BLACKOUT.";
    */

    void Start()
    {
        Prelude();
    }

    public void StartGame() // Loads The Level selector once the "Start" Button is clicked.
    {
        //SceneManager.LoadScene("Level v2");
    }

    public void Help() // Loads level one when "LEVEL 1" is clicked
    {
        //SceneManager.LoadScene("LevelEditor");
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
            //if (i == 1)
            //    {

            //    }

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

    /*
    IEnumerator SlowMenu()
    {
        Debug.Log("Inside SlowMenu");

        // Cycle through child elements and set delays after each item
        for (int i = 0; i < transform.childCount; ++i)
        {
            GameObject child;

            int result = 0;
            float wait;
            child = transform.GetChild(i).gameObject;


            child.SetActive(true);

            if (child.name == "TurnsResult")
            {
                result = Level.turnsRemaining;
                wait = 2.5f;
                StartCoroutine(IncrementPoints(result, wait, turnsText));


            }
            else if (child.name == "BonusResult")
            {
                result = 350 * Level.turnsRemaining;
                //PlayerData.player.
                Level.score += result;
                wait = 3.5f;
                StartCoroutine(IncrementPoints(result, wait, bonusText));
            }
            else if (child.name == "TimeResult")
            {
                if (Level.timeTaken >= 600)
                {
                    result = 0; //PlayerData.player
                    Level.score += result;
                }
                else
                {
                    result = 6000 - ((int)Level.timeTaken * 10); //PlayerData.player.
                    Level.score += result;
                }
                wait = 3.5f;
                StartCoroutine(IncrementPoints(result, wait, timeText));
            }
            else if (child.gameObject.name == "TotalResult")
            {
                wait = 3.5f;
                StartCoroutine(IncrementPoints(//PlayerData.player
                Level.score, wait, totalText));
            }
            else if (child.gameObject.name == "NextLevel")
            {
                if (LevelData.openLevel.levelName == "Egypt")
                {
                    child.GetComponentInChildren<Text>().text = "Arrive home";
                }
                wait = 1f;
                EventSystem.current.SetSelectedGameObject(child.gameObject);
            }
            else { wait = 1f; }

            yield return new WaitForSeconds(wait);
        }
    }

    // SubCoroutine to show points increasing from 0 to the result
    private IEnumerator IncrementPoints(int result, float wait, Text resultText)
    {
        float countTime;
        countTime = wait - 0.5f;
        resultText.text = "0";
        float time = 0;

        // Run a linear interpolation to show all numbers from 0 to 'result' in the specified time.
        while (time < countTime)
        {
            yield return null;
            time += Time.deltaTime;
            float factor = time / countTime;
            resultText.text = ((int)Mathf.Lerp(0, result, factor)).ToString();
        }

        yield break;
    }
    */

}
