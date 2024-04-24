using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AudioController : MonoBehaviour
{
    // Start is called before the first frame update
    public AudioSource[] audioSources;
    public Slider[] volumeSliders;
    public Toggle[] muteToggles;
    public Button playPauseButton; // Add a reference to the play/pause button
    public Sprite playIcon; // Add a reference to the play icon
    public Sprite pauseIcon; // Add a reference to the pause icon

    private bool isPlaying = false; // Track the playing state

    void Start()
    {
        // Initialize audio sources, sliders, and toggles
        for (int i = 0; i < audioSources.Length; i++)
        {
            volumeSliders[i].value = audioSources[i].volume;
            muteToggles[i].isOn = !audioSources[i].mute;
        }

        // Set up play/pause button
        playPauseButton.onClick.AddListener(TogglePlayPause);
        isPlaying = false; // Start in a paused state
        UpdatePlayPauseButtonIcon();
    }
    void TogglePlayPause()
    {
        isPlaying = !isPlaying;
        UpdatePlayPauseButtonIcon();

        if (isPlaying)
        {
            for (int i = 0; i < audioSources.Length; i++)
            {
                audioSources[i].Play();
            }
        }
        else
        {
            for (int i = 0; i < audioSources.Length; i++)
            {
                audioSources[i].Pause();
            }
        }
    }

    void UpdatePlayPauseButtonIcon()
    {
        // Change the button's icon based on the playing state
        playPauseButton.image.sprite = isPlaying ? pauseIcon : playIcon;
    }

    public void SetVolume(int index)
    {
        audioSources[index].volume = volumeSliders[index].value;
    }


    public void ChangeAudioSource(int index, AudioClip newClip)
    {
        audioSources[index].clip = newClip;
        audioSources[index].Play();
    }

    public void SetPosition(int index, Vector3 position)
    {
        audioSources[index].transform.position = position;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
