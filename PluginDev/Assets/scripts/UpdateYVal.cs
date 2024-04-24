using UnityEngine;
using UnityEngine.UI;

public class UpdateYVal : MonoBehaviour
{
    public AudioSource audioSource;
    public InputField inputField;

    private const int MAX_DIGITS = 4;
    private const float MIN_Y = -100f;
    private const float MAX_Y = 100f;

    void Start()
    {
        // Attach a method to the input field's onValueChanged event
        inputField.onValueChanged.AddListener(ValidateInput);

        // Attach a method to the input field's onEndEdit event
        inputField.onEndEdit.AddListener(SetYValue);
        Vector3 pos = audioSource.transform.position;
        inputField.text = pos.y.ToString();
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

    void SetYValue(string newValue)
    {
        float newYValue;
        if (float.TryParse(newValue, out newYValue))
        {
            // Update the y value of the audio source
            audioSource.Pause();
            Vector3 newPosition = audioSource.transform.position;
            newPosition.y = newYValue;
            audioSource.transform.position = newPosition;
        }
    }
}
