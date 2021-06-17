using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// this is for spawning towers onto the map
public class Spawning : MonoBehaviour
{
    [Header("Tower")]
    [SerializeField] private Camera cam;
    [SerializeField] private int towerAmount;
    [SerializeField] private int towerLimit = 10;
    [SerializeField] private GameObject towerHolder;
    [Header("Equipping")]
    [SerializeField] private List<GameObject> towers = new List<GameObject>();
    [SerializeField] private int currentTowerType;

    private void Start()
    {
        towerAmount = 0;
        currentTowerType = 0;
    }

    private void Update()
    {
        #region Switching Tower Types
        if (Input.GetButtonDown("Alpha1"))
        {
            currentTowerType = 1;
        }
        if (Input.GetButtonDown("Alpha2"))
        {
            currentTowerType = 2;
        }
        if (Input.GetButtonDown("Alpha3"))
        {
            currentTowerType = 3;
        }
        #endregion

        #region Spawning Towers
        if (Input.GetButtonDown("Fire1"))                                                                                                   // if the left mouse button is clicked 
        {
            Ray ray;    
            RaycastHit hit;
            ray = cam.ScreenPointToRay(Input.mousePosition);                                                                                // raycast shot from mouse position
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            if (Physics.Raycast(ray, out hit, 1000.0f))
            {
                if (hit.collider.name == "Ground")                                                                                          // if it hits an object tagged 'Ground'
                {
                    if (towerAmount >= towerLimit)
                    {
                        print("Tower limit reached!");
                    }
                    else
                    {
                        // depending on the value of currentTowerType, a different type of tower is spawned
                        switch (currentTowerType)
                        {
                            case 0:
                                print("Please select a tower!");
                                break;
                            case 1: // SINGLE GUN
                                GameObject a = Instantiate(towers[0], hit.transform.position, Quaternion.identity) as GameObject;
                                a.transform.SetParent(towerHolder.transform);
                                towerAmount++;
                                break;
                            case 2: // DUAL GUN
                                GameObject b = Instantiate(towers[1], hit.transform.position, Quaternion.identity) as GameObject;
                                b.transform.SetParent(towerHolder.transform);
                                towerAmount++;
                                break;
                            case 3: // BIG GUN
                                GameObject c = Instantiate(towers[2], hit.transform.position, Quaternion.identity) as GameObject;
                                c.transform.SetParent(towerHolder.transform);
                                towerAmount++;
                                break;
                            default:
                                break;
                        }
                    }
                }
                else
                {
                    print("You can't place towers here!");
                }
            }
        }
        #endregion
    }
}
