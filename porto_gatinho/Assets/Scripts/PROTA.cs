using Unity.VisualScripting;
using UnityEditor.SearchService;
using UnityEngine;

public class PROTA : MonoBehaviour
{
    // VARIAVEIS
    private Rigidbody2D body;
    private Vector2 direction;

    private int x, y, speed = 2;
    private float time;
    

    void Start()
    {
        body = GetComponent<Rigidbody2D>();
        time = Time.deltaTime;
    }

    void Update()
    {
        MovePROTA();
    }

    void MovePROTA()
    {
        if (Input.anyKey) //trigger
        {
            //move keys
            y = ((Input.GetKey(KeyCode.W)) ? 1 : 0) + ((Input.GetKey(KeyCode.S)) ? -1 : 0);
            x = ((Input.GetKey(KeyCode.D)) ? 1 : 0) + ((Input.GetKey(KeyCode.A)) ? -1 : 0);

            direction = new Vector2(x, y); // usar isso pra animação de direção!!!!

            body.position += direction * time * speed;
            body.position.Normalize(); // tentativa de normalizar
        }
    }
   
    private void OnTriggerEnter2D(Collider2D collision)
    {
        // gatilho quando algo colide
    }

}
