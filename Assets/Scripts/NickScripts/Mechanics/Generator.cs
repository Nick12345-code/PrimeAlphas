using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Generator : MonoBehaviour
{
    [SerializeField] private float drainSpeed = 0.5f;
    [SerializeField] private float regenSpeed = 0.1f;
    [SerializeField] private bool draining = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Collider>().CompareTag("Enemy"))
        {
            draining = true;
            Energy.energy -= 5 * Time.deltaTime * drainSpeed;
        }     
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<Collider>().CompareTag("Enemy"))
        {
            draining = false;
        }
    }

    private void Update()
    {
        if (Energy.energy < 500 && draining == false)
        {
            Energy.energy += 1 * Time.deltaTime * regenSpeed;
        }
    }
}
