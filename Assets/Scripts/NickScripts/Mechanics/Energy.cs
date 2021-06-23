using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Energy : MonoBehaviour
{
    public static float energy;
    public static float maxEnergy = 500;
    [SerializeField] private Text energyText;
    [SerializeField] private Slider energyBar;

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
    }
}
