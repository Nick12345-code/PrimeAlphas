using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Damage : MonoBehaviour
{
    public float health;

    // damage is taken
    private void OnCollisionEnter(Collision collision)
    {
        // if enemy hits the defence you lose health
        if (collision.collider.CompareTag("Enemy"))
        {
            health--;
        }
    }
}
