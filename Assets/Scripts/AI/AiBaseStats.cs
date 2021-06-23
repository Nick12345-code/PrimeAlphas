using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;
using UnityEngine.UI;


namespace AIBehaviour
{
    public class AiBaseStats : EnemyAgent
    {
        public ObjectiveStats objective;
        public bool insideObjective = false;
        // turret variable goes here

        public float health = 100f; //health points for future use

        public float attack = 100f; // base attack variable for future use
        public bool isAttacking = false;
        public float attackSpeed = 0.1f; // the attack speed variable. The number "should" represent how many times it can attack per second
        [SerializeField] private Image healthBar;


        //public List<string>   = new List<string>();


        //private string ;


        //public NavMeshAgent navAgentSettings; // this may be used to cahnge the AI speed, acceleration in the future
        //public Collider turretCollisions;

        // Start is called before the first frame update
        void Start()
        {
            //eAgent = GetComponent<EnemyAgent>(); 
            // turretCollisions = FindObjectOfType<Collider>();
            attackSpeed = attackSpeed * Time.deltaTime;
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
                Attacking();

            }
            if (triggerColl.gameObject.CompareTag("Objective"))
            {
                insideObjective = true;
                Attacking();
                Debug.Log("It's attacking");
            }
        }

        public void TakeDamage(float amount)
        {
            health -= amount;
            //healthBar.fillAmount = health / startHealth;

            if (health <= 0)
            {
                Death();
            }
        }

        //private void OnTriggerExit(Collider other)
        //{

        //}

        private void OnTriggerExit(Collider other)
        {

        }


        public void Attacking()
        {
            if (insideObjective)
            {
                objective.health -= attack * Time.deltaTime;
            }
           // turret.health -= attack * Time.deltaTime;
            
        }

        public void Death()
        {
            if(health <= 0)
            {

                Energy.energy += 20;
                Destroy(this.gameObject);
            }

        }

    }

}