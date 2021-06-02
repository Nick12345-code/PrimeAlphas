using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    private Transform target;
    [SerializeField] private float range = 10;

    private void Start()
    {
        target = GameObject.Find("TestEnemy").GetComponent<Transform>();
    }

    public void Attack()
    {
        if (Vector3.Distance(transform.position, target.transform.position) < range)
        {
            Aim();
            Shoot();
        }
    }

    public void Aim()
    {
        transform.LookAt(target);
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
