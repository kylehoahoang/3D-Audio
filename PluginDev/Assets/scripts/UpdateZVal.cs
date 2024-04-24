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
        // Attach a method to the input field's onValueChanged event
        inputField.onValueChanged.AddListener(ValidateInput);

        // Attach a method to the input field's onEndEdit event
        inputField.onEndEdit.AddListener(SetZValue);
        Vector3 pos = audioSource.transform.position;
        inputField.text = pos.z.ToString("F2"); // Using "F2" for two decimal places, if needed
    }

    void ValidateInput(string newValue)
    {
        string sanitizedInput = "";

        // Check each character of the input
        foreach (char c in newValue)
        {
            // Only allow digits, '-', or a decimal point
            if (char.IsDigit(c) || (c == '-' && sanitizedInput.Length == 0) || (c == '.' && !sanitizedInput.Contains(".")))
            {
                sanitizedInput += c;
            }
        }

        // Limit the length of the input to MAX_DIGITS
        if (sanitizedInput.Length > MAX_DIGITS)
        {
            sanitizedInput = sanitizedInput.Substring(0, MAX_DIGITS);
        }

        // Update the input field text to reflect the sanitized value
        inputField.text = sanitizedInput;
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
