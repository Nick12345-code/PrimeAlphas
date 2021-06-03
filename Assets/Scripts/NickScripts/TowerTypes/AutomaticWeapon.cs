using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutomaticWeapon : Weapon
{
    [Header("Automatic Firing")]
    private float fireRate = 2f;
    private float lastFire = 0.5f;

    private void Update()
    {
        if (Time.time - lastFire > 1 / fireRate)
        {
            lastFire = Time.time;
            Attack();            
        }
    }
}
