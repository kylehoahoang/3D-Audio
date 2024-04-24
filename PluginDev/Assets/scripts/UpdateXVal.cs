using UnityEngine;
using UnityEngine.UI;

public class UpdateXVal : MonoBehaviour
{
    public AudioSource audioSource;
    public InputField inputField;

    private const int MAX_DIGITS = 4;
    private const float MIN_X = -100f;
    private const float MAX_X = 100f;

    void Start()
    {
        // Attach a method to the input field's onValueChanged event
        inputField.onValueChanged.AddListener(ValidateInput);

        // Attach a method to the input field's onEndEdit event
        inputField.onEndEdit.AddListener(SetXValue);
        Vector3 pos = audioSource.transform.position;
        inputField.text = pos.x.ToString();
    }

    void ValidateInput(string newValue)
    {
        string sanitizedInput = "";

        // Check each character of the input
        foreach (char c in newValue)
        {
            // Only allow digits or '-' at the start
            if (char.IsDigit(c) || (c == '-' && sanitizedInput.Length == 0))
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

    void SetXValue(string newValue)
    {
        float newXValue;
        if (float.TryParse(newValue, out newXValue))
        {
            // Update the x value of the audio source
            audioSource.Pause();
            Vector3 newPosition = audioSource.transform.position;
            newPosition.x = newXValue;
            audioSource.transform.position = newPosition;
        }
    }
}
