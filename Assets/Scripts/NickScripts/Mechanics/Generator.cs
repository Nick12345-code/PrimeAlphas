using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class Generator : MonoBehaviour
{
    [SerializeField] private Image damageIndicator;

    private void Start()
    {
        damageIndicator.CrossFadeAlpha(0, 0, false);
    }

    private void Update()
    {
        if (Zap.draining == true)
        {
            damageIndicator.CrossFadeAlpha(1, 1, false);
        }

        if (Zap.draining == false)
        {
            damageIndicator.CrossFadeAlpha(0, 1, false);
        }
    }
}
