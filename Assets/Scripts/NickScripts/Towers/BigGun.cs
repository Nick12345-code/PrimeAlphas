using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BigGun : MonoBehaviour
{
    [Header("Setup")]
    private GameObject target;
    [SerializeField] private GameObject raycastObject;
    [SerializeField] private LineRenderer laser;
    [Header("Single Gun Stats")]
    [SerializeField] private float range;
    [SerializeField] private float fireRate;
    private float lastFire = 0.5f;
    [SerializeField] private int damage;

    private void Update()
    {
        if (Time.time - lastFire > 1 / fireRate)                                                // fires every 5 seconds                                            
        {
            lastFire = Time.time;
            target = GameObject.FindWithTag("Enemy");                                           // target set to enemies

            if (target != null)                                                                 // if enemy exists
            {
                if (Vector3.Distance(transform.position, target.transform.position) < range)    // if within range
                {
                    transform.LookAt(target.transform);                                         // look at enemy
                    Shoot();                                                                    // shoot
                }
                else
                {
                    laser.enabled = false;                                                      // laser disabled if enemy not in range
                }
            }
            else
            {
                laser.enabled = false;                                                          // laser disabled if enemy doesn't exist
            }
        }
    }

    public void Shoot()
    {
        RaycastHit hitInfo;                                                                     // stores information on what the raycast hit
        Vector3 forward = transform.TransformDirection(Vector3.forward);                        // forward direction

        if (Physics.Raycast(raycastObject.transform.position, forward, out hitInfo, 10))        // raycast shot forward 10 units
        {
            laser.SetPosition(0, raycastObject.transform.position);                             // laser shoots from the barrel of the gun
            laser.SetPosition(1, hitInfo.point);                                                // laser ends at the exact point the raycast hits 
            if (hitInfo.collider.CompareTag("Enemy"))                                           // if raycast hits an enemy
            {
                laser.enabled = true;                                                           // laser is enabled
                Enemy enemyScript = hitInfo.transform.GetComponent<Enemy>();                    // get enemy script from the enemy that is hit
                enemyScript.TakeDamage(damage);                                                 // specified damage is applied to the enemy
            }
            else
            {
                laser.enabled = false;                                                          // if laser doesn't hit an enemy, laser is disabled
            }
        }
    }
}
