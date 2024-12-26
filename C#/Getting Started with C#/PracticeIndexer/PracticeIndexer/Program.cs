namespace PracticeIndexer
{
    public class SampleCollection
    {

        
        private int[] array = new int[60];

        public int this[int i]
        {
            get { return array[i]; }
            set { array[i] = value; }
        }
    }
    public class SampleCollectionString
    {
        private string[] array = new string[60];

        public string this[int i]
        {
            get { return array[i]; }
            set { array[i] = value; }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            SampleCollection sampleCollection = new SampleCollection();
            sampleCollection[0] = 25;
            Console.WriteLine($"The value = {sampleCollection[0]}");
            SampleCollectionString sampleCollectionString = new SampleCollectionString();
            sampleCollectionString[0] = "25";
            Console.WriteLine($"The value = {sampleCollectionString[0]}");

        }
    }
}