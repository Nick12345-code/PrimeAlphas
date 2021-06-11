using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// this is for spawning towers onto the map
public class Spawning : MonoBehaviour
{
    [SerializeField] private GameObject towerPrefab;
    [SerializeField] private Camera cam;
    [SerializeField] private int towers;
    [SerializeField] private int towerLimit = 10;
    [SerializeField] private GameObject towerHolder;

    private void Start()
    {
        towers = 0;
    }

    private void Update()
    {
        // if the left mouse button is clicked a raycast is shot from the camera and if it hits the 'ground' it will spawn a tower if the following conditions are met
        if (Input.GetButtonDown("Fire1"))
        {
            Ray ray;
            RaycastHit hit;
            ray = cam.ScreenPointToRay(Input.mousePosition);
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            if (Physics.Raycast(ray, out hit, 1000.0f))
            {
                if (hit.collider.name == "Ground")
                {
                    print(hit.transform.position);
                    if (towers >= towerLimit)
                    {
                        print("Tower limit reached!");
                    }
                    else
                    {
                        print("Tower spawned!");
                        GameObject a = Instantiate(towerPrefab, hit.transform.position, Quaternion.identity) as GameObject;
                        a.transform.SetParent(towerHolder.transform);
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
