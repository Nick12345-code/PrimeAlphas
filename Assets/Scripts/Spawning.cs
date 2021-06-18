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
            print("Equipped SINGLE GUN");
            currentTowerType = 1;
        }
        if (Input.GetButtonDown("Alpha2"))
        {
            print("Equipped DUAL GUN");
            currentTowerType = 2;
        }
        if (Input.GetButtonDown("Alpha3"))
        {
            print("Equipped BIG GUN");
            currentTowerType = 3;
        }
        #endregion

        #region Spawning Towers
        if (Minimap.input == true)
        {
            if (Input.GetButtonDown("Fire1"))                                                                                                  
            {
                Ray ray;
                RaycastHit hit;
                ray = cam.ScreenPointToRay(Input.mousePosition);                                                                            
                if (Physics.Raycast(ray, out hit, 1000.0f))
                {
                    print(Input.mousePosition);
                    if (hit.collider.name == "Ground")                                                                                         
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
                                    Energy.energy -= 20;
                                    break;
                                case 2: // DUAL GUN
                                    GameObject b = Instantiate(towers[1], hit.transform.position, Quaternion.identity) as GameObject;
                                    b.transform.SetParent(towerHolder.transform);
                                    towerAmount++;
                                    Energy.energy -= 40;
                                    break;
                                case 3: // BIG GUN
                                    GameObject c = Instantiate(towers[2], hit.transform.position, Quaternion.identity) as GameObject;
                                    c.transform.SetParent(towerHolder.transform);
                                    towerAmount++;
                                    Energy.energy -= 100;
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
        }
        #endregion
    }
}
