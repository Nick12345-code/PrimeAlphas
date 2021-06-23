using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Turret : MonoBehaviour
{
    [Header("Attributes")]
    [SerializeField] private Transform target;              // the enemy locked onto
    [SerializeField] private float range = 5f;              // range of turret
    [SerializeField] private float fireRate = 1f;           // how fast turret shoots
    [SerializeField] private float fireCountdown = 0f;      // used to calculate firerate
    [SerializeField] private float damage = 10f;            // damage the turret does to enemies
    [Header("Setup")]
    [SerializeField] private string enemyTag = "Enemy";     // tag used to target enemies
    [SerializeField] private Transform gimbal;              // rotating part of the turret
    [SerializeField] private float turnSpeed = 10f;         // how fast the turret turns
    [SerializeField] private LineRenderer laser;            // laser beam
    [SerializeField] private Transform firePoint;           // where the bullet shoots from
    [SerializeField] private GameObject bulletPrefab;       // the bullet



    private void Start()
    {
        InvokeRepeating("UpdateTarget", 0f, 0.5f);
    }

    private void Update()
    {
        if (target == null)
        {
            return;
        }

        Vector3 direction = target.position - transform.position;                                                       // get direction
        Quaternion lookRotation = Quaternion.LookRotation(direction);                                                   // rotate in that direction
        Vector3 rotation = (Quaternion.Lerp(gimbal.rotation, lookRotation, Time.deltaTime * turnSpeed)).eulerAngles;    // smooths the look movement                                                    // converts to correct angle
        gimbal.rotation = Quaternion.Euler(0f, rotation.y, 0f);                                                         // can only rotate on y-axis

        if (fireCountdown <= 0f)                // if countdown reaches 0                        
        {
            Shoot();                            // shoot
            fireCountdown = 1f / fireRate;      // how frequently it shoots
        }
        fireCountdown -= Time.deltaTime;        // countdown always decreasing
    }

    private void UpdateTarget()
    {
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);
        float shortestDistance = Mathf.Infinity;
        GameObject nearestEnemy = null;

        foreach (GameObject enemy in enemies)
        {
            float distanceToEnemy = Vector3.Distance(transform.position, enemy.transform.position);                     // returns distance between turret and enemy
            if (distanceToEnemy < shortestDistance)
            {
                shortestDistance = distanceToEnemy;
                nearestEnemy = enemy;
            }
        }

        if (nearestEnemy != null && shortestDistance <= range)
        {
            target = nearestEnemy.transform;
        }
        else
        {
            target = null;
        }
    }

    private void Shoot()
    {
        GameObject bulletGO = Instantiate(bulletPrefab, firePoint.position, firePoint.rotation) as GameObject;  // spawns bullet
        Bullet bullet = bulletGO.GetComponent<Bullet>();                                                        // gets Bullet script

        if (bullet != null)                                                                                     // can now access target with Seek() function
        {
            bullet.Seek(target);
        }
    }


    // illustrates the range of the turret when selected
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(transform.position, range);
    }
}
