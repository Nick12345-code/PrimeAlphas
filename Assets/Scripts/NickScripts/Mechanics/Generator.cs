using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Generator : MonoBehaviour
{
    [SerializeField] private bool draining = false;                     // if draining is currently happening
    [SerializeField] private Image damageIndicator;
    [SerializeField] private Animator damage;

    private void Start()
    {
        damageIndicator.CrossFadeAlpha(0, 0, false);
    }

    private void OnTriggerStay(Collider other)
    {
        if (draining == false)                                          // if draining isn't happening
        {
            if (other.GetComponent<Collider>().CompareTag("Enemy"))     // if it is an enemy collider 
            {
                draining = true;                                        // draining is happening
                damageIndicator.CrossFadeAlpha(1, 1, false);
            }
        }
    }

    private void OnTriggerExit(Collider other)                          // when collider leaves trigger zone of generator
    {                                                     
        if (other.GetComponent<Collider>().CompareTag("Enemy"))     // if it is an enemy collider
        {
            damageIndicator.CrossFadeAlpha(0, 1, false);
            draining = false;                                       // draining isn't happening
        }       
    }
}
