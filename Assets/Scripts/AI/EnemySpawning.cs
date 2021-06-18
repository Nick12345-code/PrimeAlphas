using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace AIBehaviour
{


    public class EnemySpawning : MonoBehaviour
    {

        [SerializeField] private GameObject enemy;
        [SerializeField] private GameObject enemyOpp;
        [SerializeField] private GameObject spawnPos;

        [SerializeField] private Button spawnButton;

        public int enemyCount = 1; // how many enemies are spawned.

        public int spawnRate = 3; // the number of seconds it will take for an enemy to spawn

        [SerializeField] private int spawnCase;


        public int waveNumber = 1; // the current number of the wave
                                   //public int waveLevel = 1; // difficulty of wave?
        public float waveTimer = 10; // how much time the current wave has (integer)


        private bool waveActive = false;
        // Start is called before the first frame update
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {

        }
        /// <summary>
        /// needs spawn rate how many enemies that spawn in a wave during the associated 
        /// timer of said wave.
        /// 
        /// psudo code
        /// 
        /// first wave;
        /// set wave to 1,
        /// start reducing the timer by time.deltatime,
        /// wave one has one enemy spawning every 10 seconds.
        /// 
        /// </summary>
        /// <param name="_enemyCount"></param>
        /// <returns></returns>


        public void OnClick()
        {
            waveTimer = 10;
            StartCoroutine(EnemyWaveSpawner());
        }

        public IEnumerator EnemyWaveSpawner()
        {
            while (waveTimer > 0)
            {
                spawnButton.gameObject.SetActive(false);
                spawnRate = Random.Range(3, 8);
                spawnCase = Random.Range(1, 2);
                waveTimer -= waveTimer - 1 * Time.deltaTime;
                switch (spawnCase)
                {
                    case 1:
                        Instantiate(enemy, spawnPos.transform.position, Quaternion.identity);
                        yield return new WaitForSeconds(spawnRate);
                        break;
                    case 2:
                        Instantiate(enemyOpp, spawnPos.transform.position, Quaternion.identity);
                        yield return new WaitForSeconds(spawnRate);
                        break;
                }
            }
            //if (waveActive)
            //{

            //}        
        }

        //public void WaveControl(int _waveNumber)
        //{
        //    `

        //    /// waves
        //    waveNumber = _waveNumber;
        //    if (waveActive)
        //    {
        //        StartCoroutine(EnemyWaveSpawner());
        //    }

        //}
    }
}