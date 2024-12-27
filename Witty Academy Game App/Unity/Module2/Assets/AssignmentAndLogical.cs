using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AssignmentAndLogical : MonoBehaviour
{
    public float speed = 10.0f;
    public float maxSpeed = 60.0f;
    private char status = ' ';
    // Start is called before the first frame update
    void Start()
    {
        print("Start Speed Limit" + speed.ToString());
    }

    // Update is called once per frame
    void Update()
    {
        if (speed > maxSpeed)
        {
            if (status!='>')
            {
                print("Exceed Maximum Speed Limit");
                status = '>';
            }
        }
        else if (speed < 10)
        {
            if (status != '<')
            {
                print("Too Slow");
                status = '<';
            }
        }
        else
        {
            if (status != '=')
            {
                print("Ok");
                status = '=';
            }
        }
    }
}
