using UnityEngine;
using UnityEngine.UI;

public class PlayPauseTrack : MonoBehaviour
{
    public AudioSource audioSource;
    public Button playPauseButton;
    public Image playPauseImage;
    public Sprite playIcon;
    public Sprite pauseIcon;

    //private bool isPlaying = false;

    void Start()
    {
        // Initialize button icon based on the initial state of the audio source
        //UpdateButtonIcon();
        
        // Attach a method to the button's onClick event
        playPauseButton.onClick.AddListener(TogglePlayPause);
    }

    void Update()
    {
        UpdateButtonIcon();
    }

    void UpdateButtonIcon()
    {
        // Set the button icon based on whether the audio is playing or paused
        playPauseImage.sprite = audioSource.isPlaying ? pauseIcon : playIcon;
    }

    void TogglePlayPause()
    {
        if (audioSource.isPlaying)
        {
            // If the audio is currently playing, pause it
            audioSource.Pause();
        }
        else
        {
            // If the audio is currently paused, play it
            audioSource.Play();
        }

        // Update the play/pause state and button icon
        //isPlaying = !isPlaying;
        UpdateButtonIcon();
    }
}
