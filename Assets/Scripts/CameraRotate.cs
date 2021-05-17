using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraRotate : MonoBehaviour
{

    public GameObject map;
    private float speed = 10.0f;
    private Vector3 mapOrigin;

    void Start()
    {//Set up things on the start method
        mapOrigin = map.transform.position;
        transform.LookAt(mapOrigin);
    }

    void Update()
    {//makes the camera rotate around "point" coords, rotating around its Y axis, 20 degrees per second times the speed modifier
        transform.RotateAround(mapOrigin, new Vector3(0.0f, 1.0f, 0.0f), 20 * Time.deltaTime * speed);
    }
}
