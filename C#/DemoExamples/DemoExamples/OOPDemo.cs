using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    internal class OOPDemo
    {
        public OOPDemo()
        {
            DemoInterfaces();
        }

        public void DemoEncapsulation()
        {
            Employee employee = new Employee("Smith", "R&D");
            employee.setSalary(20000, "aaaaa");                 // You are not authorized to set Smith's salary
            employee.setSalary(20000, "abcde");
            Console.WriteLine(employee.getSalary("aaaaa"));     // You are not authorized to know Smith's salary
            Console.WriteLine(employee.getSalary("abcde"));     // 20000
        }

        public void DemoInheritance()
        {
            Dog dog = new Dog();
            dog.name = "Bruno";
            dog.color = "Golden";
            Chicken chicken = new Chicken();
            chicken.name = "Max";
            chicken.color = "White";
            Console.WriteLine($"A {dog.name} have {dog.numberOfFeet} feet");            // A Bruno have 4 feet
            Console.WriteLine($"A {chicken.name} have {chicken.numberOfFeet} feet");    // A Max have 2 feet

        }

        public void DemoPolymorphism()
        {
            Console.WriteLine("PC");
            PC pc = new PC();
            pc.display();                   // PC:Easy and cheaper to upgrade, PC:Fixed can not be mobile
            Console.WriteLine("Laptop");
            Laptop laptop = new Laptop();
            laptop.display();               // Laptop :Can be carried anywhere, Laptop :Expensive and hard to fix or upgrade
        }

        public void DemoInterfaces()
        {
            Console.WriteLine("PC");
            PC2 pc = new PC2();
            pc.display();                   // PC:Easy and cheaper to upgrade, PC:Fixed can not be mobile
            Console.WriteLine("Laptop");
            Laptop2 laptop = new Laptop2();
            laptop.display();               // Laptop :Can be carried anywhere, Laptop :Expensive and hard to fix or upgrade
        }
    }
    // Encapsulation
    class Employee
    {
        public string name;
        public string department;
        private int salary;
        private string authorzationKey = "abcde";

        public Employee(string name, string department)
        {
            this.name = name;
            this.department = department;
        }
        
        public void setSalary(int salary, string authorzationKey)
        {
            if (authorzationKey == this.authorzationKey)
                this.salary = salary;
            else
                Console.WriteLine($"You are not authorized to set {this.name}'s salary");
        }

        public int getSalary(string authorzationKey)
        {
            if (authorzationKey == this.authorzationKey)
                return this.salary;
            else
                Console.WriteLine($"You are not authorized to know {this.name}'s salary");
                return 0;
        }
    }
    
    // Inheritance
    class Animal
    {
        public string name;
        public int numberOfFeet;
        public string color;

        public void displayInfo()
        {
            Console.WriteLine($"Name: {name}, number of feet {numberOfFeet}, color : {color}");
        }
    }

    class Dog:Animal
    {
        public Dog()
        {
            this.numberOfFeet = 4;
        }
    }

    class Chicken : Animal
    {
        public Chicken()
        {
            this.numberOfFeet = 2;
        }
    }

    // Polymorphism 
    class Computers
    {
        public virtual void display()
        {
            displayAdvantages();
            displayDisadvantages();
        }

        public virtual void displayAdvantages() {
            Console.WriteLine("Computers:Help process task");
        }
        public virtual void displayDisadvantages() { 
            Console.WriteLine("Computers:Reduces physical work of human");
        }
    }

    class PC : Computers
    {
        public override void displayAdvantages()
        {
            Console.WriteLine("PC:Easy and cheaper to upgrade");
        }
        public override void displayDisadvantages()
        {
            Console.WriteLine("PC:Fixed can not be mobile");
        }
    }

    class Laptop : Computers
    {
        public override void displayAdvantages()
        {
            Console.WriteLine("Laptop :Can be carried anywhere");
        }
        public override void displayDisadvantages()
        {
            Console.WriteLine("Laptop :Expensive and hard to fix or upgrade");
        }
    }

    // Interface 
    interface IComputers
    {
        public void displayAdvantages();
        public void displayDisadvantages();
    }

    class PC2 : IComputers
    {
        public void display()
        {
            displayAdvantages();
            displayDisadvantages();
        }
        public void displayAdvantages()
        {
            Console.WriteLine("PC:Easy and cheaper to upgrade");
        }
        public void displayDisadvantages()
        {
            Console.WriteLine("PC:Fixed can not be mobile");
        }
    }

    class Laptop2 : IComputers
    {
        public void display()
        {
            displayAdvantages();
            displayDisadvantages();
        }
        public void displayAdvantages()
        {
            Console.WriteLine("Laptop :Can be carried anywhere");
        }
        public void displayDisadvantages()
        {
            Console.WriteLine("Laptop :Expensive and hard to fix or upgrade");
        }
    }
}
