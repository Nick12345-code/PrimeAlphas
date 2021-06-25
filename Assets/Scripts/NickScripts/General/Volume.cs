using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class Volume : MonoBehaviour
{
    [SerializeField] private Slider volumeSlider;
    [SerializeField] private AudioMixer masterMixer;

    private void Start()
    {
        // default music volume
        if (!PlayerPrefs.HasKey("Volume"))                               // if there is no saved volume
        {
            PlayerPrefs.SetFloat("Volume", 0);                           // set default volume
        }
        else
        {
            volumeSlider.value = PlayerPrefs.GetFloat("Volume");          // else use saved volume
        }
    }

    // setting music volume
    public void SetVolume(float musicVolume)
    {
        masterMixer.SetFloat("Volume", musicVolume);
    }

    public void SaveVolume()
    {
        // save music volume
        PlayerPrefs.SetFloat("Volume", volumeSlider.value);
    }
}
