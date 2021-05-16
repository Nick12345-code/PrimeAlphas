using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level : MonoBehaviour
{
    public GameObject defencePrefab;
    public Camera mainCamera;
    public Camera topDownCamera;
    public Camera angledCamera;

    List<GameObject> currentObjects = new List<GameObject>();

    Vector3 defensePos = new Vector3(2.25f, 0.5f, 3f);
    int objectID = 1;
    int cameraID = 1;

    // Start is called before the first frame update
    void Start()
    {
        topDownCamera.enabled = false;
        angledCamera.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.S))
        {
            defensePos.z = objectID * 1.2f;

            GameObject newObject;
            newObject = Instantiate(defencePrefab, defensePos, Quaternion.identity);
            currentObjects.Add(newObject);

            //newObject.name = newObject.name + "_" + objectID.ToString("D3");
            // newObject.tag = objectID.ToString("D3"); // string.Format("{0}",  )
            objectID++;
        }

        if (Input.GetKeyDown(KeyCode.D))
        {
            //GameObject[] objectPair = GameObject.FindGameObjectsWithTag((objectID - 1).ToString("D3")); //string.Format("{0}", 
            GameObject.Find((objectID - 1).ToString("D3")); //string.Format("{0}", 

            if (currentObjects.Count != 0)
            {
                Destroy(currentObjects[currentObjects.Count - 1]);
                currentObjects.RemoveAt(currentObjects.Count - 1);
                objectID--;
            }
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (cameraID == 3) { cameraID = 1; } else { cameraID++; }

            if (cameraID == 1)
            {
                mainCamera.enabled = true;
                topDownCamera.enabled = false;
                angledCamera.enabled = false;
            }
            else if (cameraID == 2)
            {
                mainCamera.enabled = false;
                topDownCamera.enabled = true;
                angledCamera.enabled = false;
            }
            else if (cameraID == 3)
            {
                mainCamera.enabled = false;
                topDownCamera.enabled = false;
                angledCamera.enabled = true;
            }
        }
    }
}
