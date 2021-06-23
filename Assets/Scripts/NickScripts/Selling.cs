using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Selling : MonoBehaviour
{
    [SerializeField] private Camera cam;

    private void Update()
    {
        if (Minimap.input == true)
        {
            if (Input.GetButtonDown("Fire1") && Input.GetKey(KeyCode.LeftShift))
            {
                Ray ray;
                RaycastHit hit;
                ray = cam.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out hit, 1000.0f))
                {
                    print(hit.collider.name);
                    if (hit.collider.name == "Single_Gun(Clone)")
                    {
                        Destroy(hit.collider.gameObject);
                        Energy.energy += 10;
                    }
                    else if (hit.collider.name == "Big_Gun(Clone)")
                    {
                        Destroy(hit.collider.gameObject);
                        Energy.energy += 20;
                    }
                    else if (hit.collider.name == "Dual_Gun(Clone)")
                    {
                        Destroy(hit.collider.gameObject);
                        Energy.energy += 50;
                    }
                }
            } 
        }
    }
}
