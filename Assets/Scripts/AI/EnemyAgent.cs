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
        public NavMeshAgent agentEnemy;
        public EnemyWaypoints[] waypoints;
        //private EnemyWaypoints[] currentWaypoint;

        //private Transform[] setWaypoint;

        public int currentWaypoint = -1;

        // 
        private EnemyWaypoints destination => waypoints[waypoints.Length];


        //public float aiSpeed;


        // Start is called before the first frame update
        void Start()
        {
            agentEnemy = gameObject.GetComponent<NavMeshAgent>();
            // FindObjectsOfType gets every instance of this component in the scene
            waypoints = FindObjectsOfType<EnemyWaypoints>();
            waypoints = waypoints.OrderBy(waypoint => waypoint.name).ToArray();
            StartCoroutine(Move());
            //agentEnemy.speed = aiSpeed;

        }
        #region Old Function
        /* public void MakeAIMove()
         {
             //currentWaypoint++;
             // Has the agent reached it's position?
             if (!agentEnemy.pathPending && agentEnemy.remainingDistance < 0.1f)
             {
                 agentEnemy.SetDestination(waypoints[currentWaypoint++].Position);



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

             }
         } */
        #endregion

        // not in use at the moment
        void Update()
        {
            //if (Input.GetKeyDown(KeyCode.Space))
            //{
            //    StartCoroutine(Move());
            //}
        }

        public IEnumerator Move()
        {
            while(currentWaypoint < waypoints.Length) // while the current way point value is less than the length of the waypoint array
            {
                //MakeAIMove();
                // set desination based on waypoint array [ID'ing currentWaypoint then iterate].'s position
                agentEnemy.SetDestination(waypoints[currentWaypoint++].Position);

                // then wait until its not pending a path, and it's remaining distance is less than < .1f
                yield return new WaitUntil(() => !agentEnemy.pathPending && agentEnemy.remainingDistance < 0.5f); 
            }
        }


        #region Old direction
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
        #endregion
    }



}