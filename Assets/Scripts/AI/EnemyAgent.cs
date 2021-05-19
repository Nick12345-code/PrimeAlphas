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
        //private EnemyWaypoints[] currentWaypoint;

        private Transform[] setWaypoint;

        public int currentWaypoint = -1;

        // 
        private EnemyWaypoints destination => waypoints[waypoints.Length];






        // Start is called before the first frame update
        void Start()
        {
            agentEnemy = gameObject.GetComponent<NavMeshAgent>();
            // FindObjectsOfType gets every instance of this component in the scene
            waypoints = FindObjectsOfType<EnemyWaypoints>();
        }
        public void MakeAIMove()
        {
            currentWaypoint++;
            // Has the agent reached it's position?
            if (!agentEnemy.pathPending && agentEnemy.remainingDistance < 0.1f)
            {
                agentEnemy.SetDestination(waypoints[currentWaypoint].Position);
                
                

                if (currentWaypoint < waypoints.Length) 
                {   
                    //agentEnemy.SetDestination(waypoints[currentWaypoint++].Position);
                }
                //agentEnemy.SetDestination(waypoints[currentWaypoint].Position);
                

                if (currentWaypoint > waypoints.Length)
                {
                    agentEnemy.isStopped = true;
                    Debug.LogWarning("that's it, i'm done");

                }                             
                //*Andrew Psuedo code start
                //if(currentWaypoint >= waypoints.Length)

                //if currentWaypoint >= waypoints.lenght , we dont have anymoer waypoints to go to
                //agentEnemy.SetDestination(waypoints[currentWaypoint]);
                // * Andrew Psuedo code end

                // Tell the agent to move to whatever has the EnemyWaypoints Script attached to it.
                /*foreach (EnemyWaypoints enemy in waypoints)
                {                    
                    waypoints = agentEnemy.SetDestination(waypoints.Length);
                    //agentEnemy.SetDestination(RandomPoint.Position);
                }
                */
            }
        }
        // Update is called once per frame
        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                StartCoroutine(Move());
            }
        }

        public IEnumerator Move()
        {
            if (!agentEnemy.pathPending && agentEnemy.remainingDistance < 0.05f)
            {
                //currentWaypoint = -1;
                //currentWaypoint++;
                yield return new WaitForSeconds(2);
                MakeAIMove();
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