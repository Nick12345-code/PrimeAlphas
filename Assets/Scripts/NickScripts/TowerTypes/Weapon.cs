using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    [Header("Base Weapon System")]
    private GameObject target;
    private float range = 5f;
    public LineRenderer laser;

    public void Attack()
    {
        target = GameObject.FindWithTag("Enemy");
        laser = GameObject.FindWithTag("Turret").GetComponent<LineRenderer>();

        if (target != null)
        {
            if (Vector3.Distance(transform.position, target.transform.position) < range)
            {
                Aim();
                Shoot();
            }
            else
            {
                laser.enabled = false;
            }
        }
    }

    public void Aim()
    {
        transform.LookAt(target.transform);
    }

    public void Shoot()
    {
        RaycastHit hitInfo;
        Vector3 forward = transform.TransformDirection(Vector3.forward);

        Debug.DrawRay(transform.position, forward, Color.red, 10);
        if (Physics.Raycast(transform.position, forward, out hitInfo, 10))
        {
            laser.enabled = true;
            laser.SetPosition(0, transform.position);
            laser.SetPosition(1, hitInfo.transform.position);
            if (hitInfo.collider.CompareTag("Enemy"))
            {
                Enemy enemyScript = hitInfo.transform.GetComponent<Enemy>(); 
                enemyScript.TakeDamage(10);
            }
        }
    }

}
