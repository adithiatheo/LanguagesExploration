# 1. Cara mendifinisikan kelas
class PublicClass 
    
    # 2. Cara mendefinisikan atribut privat bertipe int
    @privateInt
    
    # 3. Cara mendifinisikan atribut public bertipe string, dan mengisi dengan nilai awal
    @publicString = "Hello"
    
    def setPublicString(publicString)
        return @publicString= publicString
    end    
    
    def getPublicString
        return @publicString
    end 
    
    # 4. Cara mendefinisikan atribut statik
    @@staticInt
    
    def setStaticInt(newStaticInt)
        @@staticInt = newStaticInt
    end
    
    def getStaticInt
        return @@staticInt
    end
    
    # 5. Cara mendefinisikan konstanta
    PI = 3.14
    
    # 6. Cara mendefinisikan konstruktor
    def initialize
        # kosong
    end
    
    # 7a. Cara mendefinisikan method dengan parameter tanpa return value
    
    
    # 7b. Cara menuliskan dokumentasi untuk method 7a
    
    # Mengubah nilai atribut privateInt
    # @param privateInt nilai privateInt yang baru.
    
    def setPrivateInt(privateInt)
        
        # 8. Cara mengisi atribut dari dalam kelas itu sendiri
        @privateInt = privateInt
    end
    
    # 9a. Cara mendefinisikan method dengan return value
    # 9b. Cara menuliskan dokumentasi untuk method 9a
    
    #  Mendapatkan nilai dari atribut privateInt
    #  @return nilai dari privateInt
    
    
    def getPrivateInt 
        
        # 10. Cara mengembalikan nilai
        return @privateInt
    end
    
end


# 11. Cara menurunkan kelas
class PublicSubClass < PublicClass 
    
    # 12. Cara melakukan override method
    def getPrivateInt 
    
    # 13. Cara mengakses method pada superclass
    return 2 * super
end
    
end



        # 14. Cara menginstansiasi kelas baru
        publicClass = PublicClass.new
        
        # 15. Cara memanggil method dengan parameter
        publicClass.setPrivateInt(13)
        
        # 16. Cara memanggil method dan mendapatkan return value-nya
        print "[13] publicClass.getPrivateInt() = "
        puts publicClass.getPrivateInt
        
        # 17. Cara mengubah isi atribut publik dari luar kelas
        publicClass.setPublicString("World!")
        
        # 18. Cara mendapatkan isi atribut publik dari luar kelas
        print "[World!] publicClass.publicString = "
        puts publicClass.getPublicString
        
        
        # 19. Cara mengisi nilai atribut statik
        publicClass.setStaticInt(10)
        
        # 20. Cara mendapatkan nilai atribut statik
        print "[10] PublicClass.staticInt = "
        puts publicClass.getStaticInt
        
        
        # 21. Cara mendapatkan nilai konstanta
        print "[3.14] PublicClass.PI = " 
        puts PublicClass::PI
        
        
        # 22. Cara menginstansiasi kelas dengan turunannya
        publicSubClass = PublicSubClass.new
        
        
        publicSubClass.setPrivateInt(13)
        
        # 23. Memastikan method overriding bekerja
        print "[26] publicSubClass.getPrivateInt() = "
        puts publicSubClass.getPrivateInt
        
