using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Energy : MonoBehaviour
{
    public static float energy;
    public static float maxEnergy = 500;
    [SerializeField] private Text energyText;
    [SerializeField] private Slider energyBar;
    [SerializeField] private Image fillColour;

    private void Start()
    {
        energy = 100;
        energyBar.maxValue = energy;
        energyBar.value = energy;
        energyText.text = energy.ToString("0");
    }

    private void Update()
    {
        energyText.text = "ENERGY: " + energy.ToString("0");
        energyBar.value = energy;

        if (energy > 50)
        {
            fillColour.color = Color.green;
        }
        else if (energy <= 50 && energy > 20)
        {
            fillColour.color = Color.yellow;
        }
        else if (energy <= 20)
        {
            fillColour.color = Color.red;
        }
        
        if (energy <= 0)
        {
            SceneManager.LoadScene("Lose");
        }
    }
}
