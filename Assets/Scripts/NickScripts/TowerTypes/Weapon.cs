using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    [SerializeField] private Transform target;

    public void Aim()
    {
        transform.LookAt(target);
        print("Aiming At Enemy!");
    }

    public void Shoot()
    {
        RaycastHit hitInfo;
        Vector3 forward = transform.TransformDirection(Vector3.forward);

        Debug.DrawRay(transform.position, forward, Color.red, 10);
        if (Physics.Raycast(transform.position, forward, out hitInfo, 10))
        {
            if (hitInfo.collider.CompareTag("Enemy"))
            {
                print("enemy is damaged");
            }
        }
    }
}
