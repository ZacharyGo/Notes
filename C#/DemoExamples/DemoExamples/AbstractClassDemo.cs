using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    abstract class Vehicle
    {
        public int numOfWheels;

        public abstract void drive();
        public void Park()
        {
            Console.WriteLine("Look for an open space big enough to park");
        }
    }
    class Car : Vehicle
    {
        public Car()
        {
            numOfWheels = 4;
        }
        public override void drive()
        {
            Console.WriteLine("You need to start the engine first");
        }
    }

    class Bicycle : Vehicle
    {
        public Bicycle()
        {
            numOfWheels = 2;
        }
        public override void drive()
        {
            Console.WriteLine("Use pedal to move forward in Bicycle");
        }
    }
    class AbstractClassDemo
    {
        public AbstractClassDemo()
        {
            Car car = new Car();
            Console.WriteLine($"A car has {car.numOfWheels} wheels");           // A car has 4 wheels
            car.drive();                                                        // You need to start the engine first
            car.Park();                                                         // Look for an open space big enough to park
            Bicycle bicycle = new Bicycle();
            Console.WriteLine($"A bicycle has {bicycle.numOfWheels} wheels");   // A bicycle has 2 wheels
            bicycle.drive();                                                    // Use pedal to move forward in Bicycle
            bicycle.Park();                                                     // Look for an open space big enough to park
        }
    }
}
