using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace AIBehaviour
{
    public class SecondWaypoint : MonoBehaviour
    {
        public Vector3 Position => transform.position;

        //public int waypointID;

        private void OnDrawGizmos()
        {

            // to see where way points are
            Gizmos.color = Color.red;
            Gizmos.DrawWireSphere(transform.position, 0.1f);
        }
    }
}

