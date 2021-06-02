using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawning : MonoBehaviour
{
    [SerializeField] private GameObject towerPrefab;
    [SerializeField] private Camera cam;
    [SerializeField] private int towers;

    private void Start()
    {
        towers = 0;
    }

    private void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            Ray ray;
            RaycastHit hit;
            ray = cam.ScreenPointToRay(Input.mousePosition);
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            Debug.DrawRay(cam.transform.position, forward, Color.red, 100);
            if (Physics.Raycast(ray, out hit, 100.0f))
            {
                if (hit.collider.CompareTag("Ground"))
                {
                    if (towers >= 10)
                    {
                        print("Tower limit reached!");
                    }
                    else
                    {
                        GameObject a = Instantiate(towerPrefab, hit.transform.position, Quaternion.identity) as GameObject;
                        towers++;
                    }
                }
                else
                {
                    print("You can't spawn towers here!");
                }
            }
        }
    }
}
