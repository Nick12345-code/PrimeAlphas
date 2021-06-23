using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectiveStats : MonoBehaviour
{
    public float health = 1000.0f;
    //public float defence = 1;

    private void Update()
    {
        if(health <= 0)
        {
            gameObject.SetActive(false);
        }
    }
}
