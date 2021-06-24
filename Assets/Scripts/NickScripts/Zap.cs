using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zap : MonoBehaviour
{
    [SerializeField] private LineRenderer zap;
    [SerializeField] private bool zapping = false;
    [SerializeField] private GameObject generator;
    [SerializeField] private float drainSpeed = 2f;                     // how fast energy drains

    private void Start()
    {
        zap.enabled = false;
        generator = null;
    }

    private void OnTriggerEnter(Collider other)                         // when within trigger radius
    {
        if (other.GetComponent<Collider>().CompareTag("Generator"))     // if it is the generator
        {
            if (zapping == false)
            {
                generator = other.gameObject;
                zapping = true;
                InvokeRepeating("Draining", 1, 2);                      // repeatedly calls that function 
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<Collider>().CompareTag("Generator"))     // if it is the generator
        {
            zapping = false;
        }
    }

    private void Update()
    {
        if (zapping == true)
        {
            zap.enabled = true;                                         // laser visible
            zap.SetPosition(0, transform.position);                     // line starts from the triger
            zap.SetPosition(1, generator.transform.position);           // line hits generator 
        }
    }
    private void Draining()
    {
        Energy.energy -= drainSpeed;                                    // drains a bit of energy
    }


}
