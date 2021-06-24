using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraZoom : MonoBehaviour
{
    [SerializeField] private Camera cam;
    [SerializeField] private float minFov = 15f;
    [SerializeField] private float maxFov = 90f;
    [SerializeField] private float sensitivity = 10f;
    
    private void Update()
    {
        if (Minimap.input == true)
        {
            float fov = cam.orthographicSize;
            fov += Input.GetAxis("Mouse ScrollWheel") * sensitivity;
            fov = Mathf.Clamp(fov, minFov, maxFov);
            cam.orthographicSize = fov; 
        }
    }


}
