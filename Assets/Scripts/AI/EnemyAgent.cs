using UnityEngine;
using UnityEngine.AI;
using System.Collections;
using System.Collections.Generic;
using System.Linq;


namespace AIBehaviour
{
    
    [RequireComponent(typeof(NavMeshAgent))]
    public class EnemyAgent : MonoBehaviour
    {
        [Header("Setup")]
        public NavMeshAgent agentEnemy;
        public EnemyWaypoints[] waypoints;
        public SecondWaypoint[] swaypoints;
        public int currentWaypoint = -1;
        private EnemyWaypoints destination => waypoints[waypoints.Length];
        private SecondWaypoint secondDest => swaypoints[swaypoints.Length];

        void Start()
        {
            int direction = Random.Range(0,2);

            switch (direction)
            {
                case 0:
                    Debug.Log("1");
                    agentEnemy = gameObject.GetComponent<NavMeshAgent>();
                    // FindObjectsOfType gets every instance of this component in the scene
                    waypoints = FindObjectsOfType<EnemyWaypoints>();
                    waypoints = waypoints.OrderBy(waypoint => waypoint.name).ToArray();
                    StartCoroutine(Move());
                    break;
                case 1:
                    Debug.Log("2");
                    agentEnemy = gameObject.GetComponent<NavMeshAgent>();
                    // FindObjectsOfType gets every instance of this component in the scene
                    swaypoints = FindObjectsOfType<SecondWaypoint>();
                    swaypoints = swaypoints.OrderBy(swaypoint => swaypoint.name).ToArray();
                    StartCoroutine(MoveSecond());
                    break;
            }               
        }

        public IEnumerator Move()
        {
            while(currentWaypoint < waypoints.Length) // while the current way point value is less than the length of the waypoint array
            {
                // set desination based on waypoint array [ID'ing currentWaypoint then iterate].'s position
                agentEnemy.SetDestination(waypoints[currentWaypoint++].Position);

                // then wait until its not pending a path, and it's remaining distance is less than < .1f
                yield return new WaitUntil(() => !agentEnemy.pathPending && agentEnemy.remainingDistance < 0.5f); 
            }
        }


        public IEnumerator MoveSecond()
        {
            while (currentWaypoint < swaypoints.Length) // while the current way point value is less than the length of the waypoint array
            {
                // set desination based on waypoint array [ID'ing currentWaypoint then iterate].'s position
                agentEnemy.SetDestination(swaypoints[currentWaypoint++].Position);

                // then wait until its not pending a path, and it's remaining distance is less than < .1f
                yield return new WaitUntil(() => !agentEnemy.pathPending && agentEnemy.remainingDistance < 0.5f);
            }
        }
    }
    


}