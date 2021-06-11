using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyWeapon : Weapon
{
    private float fireRate = 0.1f;
    private float lastFire = 0.5f;

    private void Update()
    {
        if (Time.time - lastFire > 1 / fireRate)
        {
            lastFire = Time.time;
            Shoot();
        }
    }
}
