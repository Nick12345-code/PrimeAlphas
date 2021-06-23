using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Minimap : MonoBehaviour
{
    [SerializeField] private GameObject minimap;
    public static bool input = false;

    private void Update()
    {
        // turns map on and off
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (minimap.activeSelf)
            {
                input = false;
                minimap.SetActive(false);
            }
            else
            {
                input = true;
                minimap.SetActive(true);
            }
        }
    }
}
