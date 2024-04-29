using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine;

public class UpdateZVal : MonoBehaviour
{
    public AudioSource audioSource;
    public InputField inputField;

    private const int MAX_DIGITS = 4;
    private const float MIN_Z = -100f;  // Assuming similar range for Z
    private const float MAX_Z = 100f;   // Assuming similar range for Z

    void Start()
    {

        // Attach a method to the input field's onEndEdit event
        inputField.onEndEdit.AddListener(SetZValue);
        Vector3 pos = audioSource.transform.position;
        inputField.text = pos.z.ToString("F2"); // Using "F2" for two decimal places, if needed
    }


    void SetZValue(string newValue)
    {
        float newZValue;
        if (float.TryParse(newValue, out newZValue))
        {
            // Update the z value of the audio source
            audioSource.Pause();
            Vector3 newPosition = audioSource.transform.position;
            newPosition.z = newZValue;
            audioSource.transform.position = newPosition;
            audioSource.Play();  // Consider restarting the audio source
        }
    }
}
