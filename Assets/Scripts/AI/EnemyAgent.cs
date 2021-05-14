using UnityEngine;
using UnityEngine.AI;
using System.Collections;
using System.Collections.Generic;


namespace AIBehaviour
{
    
    [RequireComponent(typeof(NavMeshAgent))]
    public class EnemyAgent : MonoBehaviour
    {
        private NavMeshAgent agentEnemy;
        private EnemyWaypoints[] waypoints;
        private Transform[] setWaypoint;


        // 
        private EnemyWaypoints RandomPoint => waypoints[Random.Range(0, waypoints.Length)];

        // Start is called before the first frame update
        void Start()
        {
            agentEnemy = gameObject.GetComponent<NavMeshAgent>();
            // FindObjectsOfType gets every instance of this component in the scene
            waypoints = FindObjectsOfType<EnemyWaypoints>();
        }

        // Update is called once per frame
        void Update()
        {
            // Has the agent reached it's position?
            if (!agentEnemy.pathPending && agentEnemy.remainingDistance < 0.1f)
            {
                // Tell the agent to move to a random position in the scene waypoints
                agentEnemy.SetDestination(RandomPoint.Position);
            }
        }
        /*
        public void EnemyDirection()
        {
            if(!agentEnemy.pathPending && agentEnemy.remainingDistance < 0.1f)
            {
                foreach(waypoints in EnemyWaypoints)
                agentEnemy.SetDestination(waypoints.Position);
            }
        }
        */
    }
}