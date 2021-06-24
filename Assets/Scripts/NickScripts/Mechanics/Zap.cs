using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zap : MonoBehaviour
{
    public static bool draining = false;
    [SerializeField] private LineRenderer zap;
    [SerializeField] private GameObject generator;
    [SerializeField] private float drainSpeed = 2f;                     // how fast energy drains

    private void Start()
    {
        zap.enabled = false;
    }

    private void OnTriggerStay(Collider other)                         // when in trigger radius
    {
        if (other.GetComponent<Collider>().CompareTag("Generator"))     // if it is the generator
        {
            generator = other.gameObject;
            draining = true;
            InvokeRepeating("Draining", 1, 2);                          // repeatedly calls that function 

            if (draining == true)                                               
            {
                zap.enabled = true;                                         // laser visible
                zap.SetPosition(0, transform.position);                     // line starts from the triger
                zap.SetPosition(1, generator.transform.position);           // line hits generator 
            }
        }
    }

    private void OnDestroy()
    {
        draining = false;
    }

    private void Draining()
    {
        Energy.energy -= drainSpeed;                                    // drains a bit of energy
    }


}
