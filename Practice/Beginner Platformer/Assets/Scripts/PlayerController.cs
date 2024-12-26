using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    /*
    public Rigidbody2D rb;
    public Animator animator;
    */
    //Start() Variables
    private Rigidbody2D rb;
    //[SerializeField] private Animator animator;
    private Animator animator;
    private Collider2D coll;

    public int cherries = 0;
    //FSM
    private enum State { idle, running, jumping, falling}
    private State state = State.idle;

    //Inspector variables
    [SerializeField] private LayerMask ground;
    [SerializeField] private float speed = 5f;
    [SerializeField] private float jumpForce = 10f;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        coll = GetComponent<Collider2D>();
    }

    // Update is called once per frame
    void Update()
    {
        Movement();

        AnimationState();
        animator.SetInteger("state", (int)state);
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.tag == "Collectable")
        {
            Destroy(collision.gameObject);
            cherries += 1;
        }
    }


    private void Movement()
    {
        float hDirection = Input.GetAxis("Horizontal");

        // Moving LefT
        //if (Input.GetKey(KeyCode.A))
        if (hDirection < 0)
        {
            rb.velocity = new Vector2(-speed, 0);
            transform.localScale = new Vector2(-1, 1);
            //animator.SetBool("running", true);
        }
        //mOVING rIGHT
        //else if (Input.GetKey(KeyCode.D))
        else if (hDirection > 0)
        {
            rb.velocity = new Vector2(speed, 0);
            transform.localScale = new Vector2(1, 1);
            //animator.SetBool("running", true);
        }
        else
        {
            //animator.SetBool("running", false);
        }

        //if (Input.GetKeyDown(KeyCode.Space))
        if (Input.GetButtonDown("Jump") && coll.IsTouchingLayers(ground))
        //if (Input.GetButtonDown("Jump") )
        {
            rb.velocity = new Vector2(rb.velocity.x, jumpForce);
            state = State.jumping;
        }
    }

    private void AnimationState()
    {
        if(state == State.jumping)
        {
            if(rb.velocity.y < 1f)
            {
                state = State.falling;
            }
        } 
        else if(state == State.falling)
        {
            if(coll.IsTouchingLayers(ground))
            {
                state = State.idle;
            }        
        }
        else if(Mathf.Abs(rb.velocity.x) > 2f)
        {
            //Moving
            state = State.running;
        } 
        else
        {
            state = State.idle;
        }
    }
}