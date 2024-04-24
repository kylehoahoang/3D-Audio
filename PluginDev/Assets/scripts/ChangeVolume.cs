using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeVolume : MonoBehaviour
{
    public Slider volumeSlider;
    public AudioSource audioSource;
    // Start is called before the first frame update

    void Start()
    {
        // Ensure that the slider's value matches the initial volume
        volumeSlider.value = audioSource.volume;

        // Attach a method to the slider's value changed event
        volumeSlider.onValueChanged.AddListener(delegate { UpdateVolume(); });
    }

    public void UpdateVolume()
    {
        audioSource.volume = volumeSlider.value;
       
    }
}
