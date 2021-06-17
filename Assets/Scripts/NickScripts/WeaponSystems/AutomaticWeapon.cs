using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutomaticWeapon : Weapon
{
    private float fireRate = 2f;
    private float lastFire = 0.5f;

    private void Update()
    {
        // shoots every 0.5 seconds
        if (Time.time - lastFire > 1 / fireRate)
        {
            lastFire = Time.time;
            Attack();
        }
    }
}
