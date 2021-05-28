using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawning : MonoBehaviour
{
    public GameObject towerPrefab;
    public GameObject spawnPoint;

    private void Update()
    {
        // if left mouse button is pressed a gameobject is spawned at the position of the spawnPoint gameobject
        if (Input.GetButtonDown("Fire1")) 
        {
            GameObject b = Instantiate(towerPrefab, spawnPoint.transform) as GameObject;
            b.transform.position = spawnPoint.transform.position;
            b.transform.SetParent(spawnPoint.transform);
        }
    }
}
