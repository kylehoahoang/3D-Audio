using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[RequireComponent(typeof(MeshFilter))]
public class Spectogram3D : MonoBehaviour
{
    public string _musicObjectTag = "MusicObject"; // remember to add this in unity inspector

    public Gradient heightGradient;

    Vector3[] verts;
    int[] triangles;



    // Start is called before the first frame update
    void Start()
    {
        // https://docs.unity3d.com/ScriptReference/MeshFilter-mesh.html
        //Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
        //Mesh mesh2 = Instantiate(mesh);
        //GetComponent<MeshFilter>().sharedMesh = mesh2;



        // InvokeRepeating("CloneMesh", 0.0f, 2f);

        CreateMesh();
    }

    private void CreateMesh()
    {

    }

    // Update is called once per frame
    void Update()
    {
        ReCalculateMesh();


        //GameObject[] cubes;
        //cubes = GameObject.FindGameObjectsWithTag(_musicObjectTag);

        //foreach(GameObject cube in cubes)
        //{
        //    cube.transform.position = new Vector3(cube.transform.position.x, cube.transform.position.y, cube.transform.position.z + 0.01f);
        //}
        
    }

    void CloneMesh()
    {
        GameObject gameObject = Instantiate(GetComponent<MeshRenderer>().gameObject);
        gameObject.tag = _musicObjectTag;

        Destroy(gameObject, 3);
    }


    void ReCalculateMesh()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        mesh.Clear();

        List<Vector3> verts = new List<Vector3>();
        List<int> triangles = new List<int>();
        List<Color> colors = new List<Color>(); // List to hold vertex colors

        float xRange = 100;

        for (int m = 0; m < AudioManager._bandVolumes.Length - 1; m++)
        {
            float[] currentVolumes = AudioManager._bandVolumes[m];
            float[] previousVolumes = AudioManager._bandVolumes[m + 1];

            float zBandValue = m * 4;
            float zBandNextValue = (m + 1) * 4;

            for (int i = 0; i < currentVolumes.Length - 1; i++)
            {
                // Calculate height based on vertex position
                float volume = currentVolumes[i];
                float volumeNext = currentVolumes[i + 1];
                float volumePrevious = previousVolumes[i];
                float volumeNextPrevious = previousVolumes[i + 1];
                float height = (volume + volumePrevious) / 2f; // Adjust as needed

                // Map height to color using the gradient
                Color color = heightGradient.Evaluate(height);

                // Add vertices
                float x = ((float)i / (currentVolumes.Length - 2)) * xRange;
                float xNext = ((float)(i + 1) / (currentVolumes.Length - 2)) * xRange;

                verts.Add(new Vector3(x, volume, zBandValue));
                verts.Add(new Vector3(xNext, volumeNext, zBandValue));
                verts.Add(new Vector3(x, volumePrevious, zBandNextValue));
                verts.Add(new Vector3(xNext, volumeNextPrevious, zBandNextValue));

                // Add colors for all 4 vertices of the quad
                colors.Add(color);
                colors.Add(color);
                colors.Add(color);
                colors.Add(color);

                // Add triangles
                int start_point = verts.Count - 4;
                triangles.Add(start_point + 0);
                triangles.Add(start_point + 2);
                triangles.Add(start_point + 1);

                triangles.Add(start_point + 2);
                triangles.Add(start_point + 3);
                triangles.Add(start_point + 1);
            }
        }

        // Set mesh vertices and triangles
        mesh.vertices = verts.ToArray();
        mesh.triangles = triangles.ToArray();

        // Assign vertex colors to the mesh
        mesh.colors = colors.ToArray();

        mesh.RecalculateNormals();

    }

    private void GenerateFrontFace(float x, float x_next, float volume, float volume_next, List<Vector3> verts, List<int> triangles, float zBandValue)
    {
        // this algoritm can be better, I don't need adding vertex of "next band"

        // adding verst connecting this band with the next one
        verts.Add(new Vector3(x, 0, zBandValue));
        verts.Add(new Vector3(x, volume, zBandValue));
        verts.Add(new Vector3(x_next, 0, zBandValue));
        verts.Add(new Vector3(x_next, volume_next, zBandValue));

        int start_point = verts.Count - 4;
        // adding 2 triangles using this vertex
        triangles.Add(start_point + 0);
        triangles.Add(start_point + 1);
        triangles.Add(start_point + 2);

        triangles.Add(start_point + 1);
        triangles.Add(start_point + 3);
        triangles.Add(start_point + 2);


    }
}
