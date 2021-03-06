
/**
 * Converting to C#...
 */
using System;
    // 1. Cara mendifinisikan kelas
    class PublicClass
    {

        // 2. Cara mendefinisikan atribut privat bertipe int
        private int privateInt;

        // 3. Cara mendifinisikan atribut public bertipe string, dan mengisi dengan nilai awal
        public String publicString = "Hello";

        // 4. Cara mendefinisikan atribut statik
        static public int staticInt;

        // 5. Cara mendefinisikan konstanta
        public const double PI = 3.14;

        // 6. Cara mendefinisikan konstruktor
        public PublicClass()
        {
            // kosong
        }

        // 7a. Cara mendefinisikan method dengan parameter tanpa return value
        // 7b. Cara menuliskan dokumentasi untuk method 7a
        /**
         * Mengubah nilai atribut privateInt
         * @param privateInts nilai privateInt yang baru.
         */
        public void setPrivateInt(int privateInt)
        {

            // 8. Cara mengisi atribut dari dalam kelas itu sendiri
            this.privateInt = privateInt;
        }
    
    // 9a. Cara mendefinisikan method dengan return value
    // 9b. Cara menuliskan dokumentasi untuk method 9a
    /*
     * Mendapatkan nilai dari atribut privateInt
     * @return nilai dari privateInt
     */
        public virtual int getPrivateInt()
        {

            // 10. Cara mengembalikan nilai
            return privateInt;
        }
    }

    // 11. Cara menurunkan kelas
    class PublicSubClass : PublicClass
    {

        // 12. Cara melakukan override method
        public override int getPrivateInt()
        {
            
            // 13. Cara mengakses method pada superclass
            
            return 2 * base.getPrivateInt();
        }
    }

    public class LanguagesExploration
    {
        static void Main(String[] args)
        {
            // 14. Cara menginstansiasi kelas baru
            PublicClass publicClass = new PublicClass();

            // 15. Cara memanggil method dengan parameter
            publicClass.setPrivateInt(13);

            // 16. Cara memanggil method dan mendapatkan return value-nya
            System.Console.WriteLine("[13] publicClass.getPrivateInt() = " + publicClass.getPrivateInt());

            // 17. Cara mengubah isi atribut publik dari luar kelas
            publicClass.publicString = "World!";

            // 18. Cara mendapatkan isi atribut publik dari luar kelas
            System.Console.WriteLine("[World!] publicClass.publicString = " + publicClass.publicString);

            // 19. Cara mengisi nilai atribut statik
            PublicClass.staticInt = 10;

            // 20. Cara mendapatkan nilai atribut statik
            System.Console.WriteLine("[10] PublicClass.staticInt = " + PublicClass.staticInt);

            // 21. Cara mendapatkan nilai konstanta
            System.Console.WriteLine("[3.14] PublicClass.PI = " + PublicClass.PI);

            // 22. Cara menginstansiasi kelas dengan turunannya
            PublicClass publicSubClass = new PublicSubClass();

            publicSubClass.setPrivateInt(13);

            // 23. Memastikan method overriding bekerja
            System.Console.WriteLine("[26] publicSubClass.getPrivateInt() = " + publicSubClass.getPrivateInt());
        }
    }
