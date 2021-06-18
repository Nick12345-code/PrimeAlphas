using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    public float health;
    public float startHealth = 100f;
    [SerializeField] private Image healthBar;

    private void Start()
    {
        health = startHealth;
    }

    public void TakeDamage(float amount)
    {
        health -= amount;
        healthBar.fillAmount = health / startHealth;
 
        if (health <= 0)
        {
            Die();
        }
    }

    public void Die()
    {
        print("Enemy Killed!");
        if (Energy.energy < Energy.maxEnergy)
        {
            Energy.energy += 10f;
        }
        Destroy(this.gameObject);
    }
}
