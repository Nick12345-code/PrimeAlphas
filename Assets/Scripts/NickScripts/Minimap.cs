using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Minimap : MonoBehaviour
{
    [SerializeField] private GameObject minimap;

    private void Update()
    {
        // turns map on and off
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (minimap.activeSelf)
            {
                minimap.SetActive(false);
            }
            else
            {
                minimap.SetActive(true);
            }
        }
    }
}
