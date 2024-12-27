using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExampleVariables : MonoBehaviour
{
    /*
     * 
     * 
     * 
     * 
     */
    // Variables
    public float speed = 10.0f;
    public int lives = 3;
    private float distance = 50.0f;

    // Start is called before the first frame update
    void Start()
    {
        print("speed is " + speed.ToString());
        print("distance is :" + distance.ToString());
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
