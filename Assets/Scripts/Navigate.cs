using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Navigate : MonoBehaviour
{
    public GameObject map;
    public bool mapOpen;

    private void Start()
    {
        map.SetActive(false);
        mapOpen = false;
    }

    void Update()
    {
        // if map is open pressing e will close it
        // if map is closed pressing e will open it
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (mapOpen == false)
            {
                OpenMap();
            }
            else if (mapOpen == true)
            {
                CloseMap();
            }
        }
    }

    // opens map
    public void OpenMap()
    {
        map.SetActive(true);
        mapOpen = true;
    }

    // closes map
    public void CloseMap()
    {
        map.SetActive(false);
        mapOpen = false;
    }
}
