using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    [SerializeField] private Transform target;
    [SerializeField] private float speed = 70f;
    [SerializeField] private GameObject impactEffect;

    public void Seek(Transform _target)
    {
        target = _target;
    }

    private void Update()
    {
        if (target == null)
        {
            Destroy(this.gameObject);                                                       // destroy takes some time
            return;                                                                         // return allows Destroy() some time before continuing through the code
        }

        Vector3 direction = target.position - transform.position;                           // direction to target
        float distanceThisFrame = speed * Time.deltaTime;                                   // distance this frame

        if (direction.magnitude <= distanceThisFrame)                                       // bullet hit something
        {
            HitTarget();                                                                    
            return;
        }

        transform.Translate(direction.normalized * distanceThisFrame, Space.World);         // moves bullet within world space to stop wierd orbital motion
    }

    private void HitTarget()
    {
        GameObject effectInstance = Instantiate(impactEffect, transform.position, transform.rotation) as GameObject;
        Destroy(effectInstance, 2f);
        Destroy(gameObject);

        Enemy enemyScript = target.GetComponent<Enemy>();
        enemyScript.TakeDamage(10);
    }
}
