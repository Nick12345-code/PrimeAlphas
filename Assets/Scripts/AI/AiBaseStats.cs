using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

namespace AIBehaviour
{
    public class AiBaseStats : EnemyAgent
    {
        //EnemyAgent eAgent;

        public float health = 100f; //health points for future use

        public float attack = 2f; // base attack variable for future use



        //public List<string>   = new List<string>();

        [SerializeField]
        //private string ;

        
        //public NavMeshAgent navAgentSettings; // this may be used to cahnge the AI speed, acceleration in the future
        //public Collider turretCollisions;

        // Start is called before the first frame update
        void Start()
        {
            //eAgent = GetComponent<EnemyAgent>(); 
           // turretCollisions = FindObjectOfType<Collider>();
        }

        // Update is called once per frame
        void Update()
        {

        }

        private void OnTriggerStay(Collider triggerColl)
        {
            if (triggerColl.gameObject.CompareTag("Turret"))
            {
                //triggerColl.gameObject.SetActive(false);

                gameObject.transform.LookAt(triggerColl.transform);

            }

        }

        private void OnTriggerEnter(Collider triggerColl)
        {

        }


    }
}