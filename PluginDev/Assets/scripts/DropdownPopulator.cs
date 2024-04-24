using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public class DropdownPopulator : MonoBehaviour
{
    public AudioSource audioSource;
    public Dropdown dropdown;

    void Start()
    {
        PopulateDropdown();
        dropdown.onValueChanged.AddListener(OnDropdownValueChanged);
    }

    void PopulateDropdown()
    {
        dropdown.ClearOptions();
        var files = Directory.GetFiles("Assets/Resources/Sounds").Where(x => !x.EndsWith(".meta"))
            .Select(fileName => Path.GetFileNameWithoutExtension(fileName)).Distinct().OrderBy(x=> x);
        foreach (string file in files)
        {
            dropdown.options.Add(new Dropdown.OptionData(file));
        }
        dropdown.RefreshShownValue();
    }

    public void OnDropdownValueChanged(int index)
    {
        //dropdown.options.Add(new Dropdown.OptionData(index.ToString()));
        //dropdown.options.Add(new Dropdown.OptionData(dropdown.options[index].text));
        audioSource.clip = Resources.Load<AudioClip>("Sounds/" + dropdown.options[index].text);
        //audioSource.Play();
    }
}
