using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    [Header("Base Weapon System")]
    private GameObject target;
    [SerializeField] private GameObject raycastObject;
    private float range = 5f;
    public LineRenderer laser;

    public void Attack()
    {
        target = GameObject.FindWithTag("Enemy");

        if (target != null)
        {
            // if within range
            if (Vector3.Distance(transform.position, target.transform.position) < range)
            {
                // look at enemy
                transform.LookAt(target.transform);
                Shoot();
            }
            else
            {
                laser.enabled = false;
            }
        }
    }

    public void Shoot()
    {
        RaycastHit hitInfo;
        Vector3 forward = transform.TransformDirection(Vector3.forward);

        Debug.DrawRay(raycastObject.transform.position, forward, Color.red, 10);
        if (Physics.Raycast(raycastObject.transform.position, forward, out hitInfo, 10))
        {
            laser.SetPosition(0, raycastObject.transform.position);
            laser.SetPosition(1, hitInfo.transform.position);
            if (hitInfo.collider.CompareTag("Enemy"))
            {
                laser.enabled = true;
                Enemy enemyScript = hitInfo.transform.GetComponent<Enemy>(); 
                enemyScript.TakeDamage(10);
            }
            else
            {
                laser.enabled = false;
            }
        }
    }
}
