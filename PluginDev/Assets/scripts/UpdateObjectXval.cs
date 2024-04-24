using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine;

public class UpdateObjectXval : MonoBehaviour
{
    public GameObject targetObject;  // Reference to the GameObject you want to manipulate
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

        // Get the current position of the GameObject and set it as the default input field text
        Vector3 pos = targetObject.transform.position;
        inputField.text = pos.x.ToString("F2");  // Format to 2 decimal places for better precision display
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
            // Ensure the newXValue is within the allowed range
            newXValue = Mathf.Clamp(newXValue, MIN_X, MAX_X);

            // Update the x value of the GameObject
            Vector3 newPosition = targetObject.transform.position;
            newPosition.x = newXValue;
            targetObject.transform.position = newPosition;
        }
    }
}
