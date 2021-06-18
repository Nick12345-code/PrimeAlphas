using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchCamera : MonoBehaviour
{
    [SerializeField] private GameObject[] cameras;
    [SerializeField] private int currentCamera = 0;

    private void Start()
    {
        cameras[0].SetActive(true);
        cameras[1].SetActive(false);
        cameras[2].SetActive(false);
        cameras[3].SetActive(false);
    }

    private void Update()
    {
        // sets current camera active and others inactive
        for (int i = 0; i < cameras.Length; i++)
        {
            if (i == currentCamera)
            {
                cameras[i].SetActive(true);
            }
            else
            {
                cameras[i].SetActive(false);
            }
        }
    }

    // switch between camera views
    public void NextCamera()
    {
        if (currentCamera == cameras.Length - 1)
        {
            currentCamera = 0;
        }
        else
        {
            currentCamera++;
        }
    }

}
