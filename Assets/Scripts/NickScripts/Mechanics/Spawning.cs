using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// this is for spawning towers onto the map
public class Spawning : MonoBehaviour
{
    [Header("Tower")]
    [SerializeField] private Camera cam;
    public static int towerAmount;
    [SerializeField] private int towerLimit = 10;
    [SerializeField] private GameObject towerHolder;
    [Header("Equipping")]
    [SerializeField] private List<GameObject> towers = new List<GameObject>();
    [SerializeField] private int currentTowerType;
    [SerializeField] private LayerMask topDownHit;
    [Header("UI")]
    [SerializeField] private Text tips;
    [SerializeField] private Animator tipsTextAnim;

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
            tips.text = "Equipped SINGLE GUN";
        }
        if (Input.GetButtonDown("Alpha2"))
        {
            currentTowerType = 2;
            tips.text = "Equipped BIG GUN";
        }
        if (Input.GetButtonDown("Alpha3"))
        {
            currentTowerType = 3;
            tips.text = "Equipped DUAL GUN";
        }
        #endregion

        #region Spawning Towers
        if (Minimap.input == true)
        {
            if (Input.GetButtonDown("Fire1") && !Input.GetKey(KeyCode.LeftShift))                                                                                                  
            {
                Ray ray;
                RaycastHit hit;
                ray = cam.ScreenPointToRay(Input.mousePosition);                                                                            
                if (Physics.Raycast(ray, out hit, 1000.0f, topDownHit))
                {
                    if (towerAmount >= towerLimit)
                    {
                        tips.text = "Tower limit reached!";
                    }
                    else
                    {
                        // depending on the value of currentTowerType, a different type of tower is spawned
                        switch (currentTowerType)
                        {
                            case 1: // SINGLE GUN
                                if (Energy.energy >= 40) // need at least 20 energy left over
                                {
                                    GameObject a = Instantiate(towers[0], hit.point, Quaternion.identity) as GameObject;
                                    a.transform.SetParent(towerHolder.transform);
                                    towerAmount++;
                                    Energy.energy -= 20; 
                                }
                                else
                                {
                                    tips.text = "You don't have enough energy!";
                                }
                                break;
                            case 2: // BIG GUN
                                if (Energy.energy >= 70) // need at least 20 energy left over
                                {
                                    GameObject b = Instantiate(towers[1], hit.point, Quaternion.identity) as GameObject;
                                    b.transform.SetParent(towerHolder.transform);
                                    towerAmount++;
                                    Energy.energy -= 50; 
                                }
                                else
                                {
                                    tips.text = "You don't have enough energy!";
                                }
                                break;
                            case 3: // DUAL GUN
                                if (Energy.energy >= 90) // need at least 20 energy left over
                                {
                                    GameObject c = Instantiate(towers[2], hit.point, Quaternion.identity) as GameObject;
                                    c.transform.SetParent(towerHolder.transform);
                                    towerAmount++;
                                    Energy.energy -= 70; 
                                }
                                else
                                {
                                    tips.text = "You don't have enough energy!";
                                }
                                break;
                            default:
                                tips.text = "Please select a tower!";
                                break;
                        }
                    }                  
                }
                else
                {
                    tips.text = "You can't place towers here!";
                }
            } 
        }
        #endregion
    }
}
