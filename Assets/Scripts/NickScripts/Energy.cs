using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Energy : MonoBehaviour
{
    public static float energy;
    [SerializeField] private Text energyText;

    private void Start()
    {
        energy = 0;
    }

    private void Update()
    {
        energyText.text = "ENERGY: " + energy.ToString("0");
    }
}
