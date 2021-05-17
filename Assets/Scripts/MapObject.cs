using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapObject : MonoBehaviour
{
    public GameObject iconPrefab;

    // Start is called before the first frame update
    void Start()
    {
        Vector3 mapPos = transform.position;
        mapPos.y = 0.5f;
        mapPos.x -= 60f;

        GameObject newObject;
        newObject = Instantiate(iconPrefab, mapPos, Quaternion.identity);
        newObject.transform.parent = gameObject.transform;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
