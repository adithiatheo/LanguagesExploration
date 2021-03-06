# 1. Cara mendefinisikan kelas
class PublicClass(object):
  # 2. Cara mendefiniskan atribut bertipe int
  __privateInt=0 #private
  # 6. Cara mendefinisikan konstruktor 
  def __init__(self):
    # 3. Cara mendefinisikan atribut bertipe string, dan mengisi dengan nilai awal
    self.publicString="Hello"
    # 5.Cara mendefinisikan konstanta
    self.PI=3.14

  # 7a. Cara mendefinisikan method dengan parameter tanpa return value
  # 7b. Cara menuliskan dokumentasi untuk method 7a

  def setPrivateInt(self, privateInt):
    # 8. Cara mengisi atribut dari dalam kelas itu sendiri
    self.__privateInt=privateInt

  # 9a. Cara mendefinisikan method dengan return value
  # 9b. Cara menuliskan dokumentasi untuk method 9a

  def getPrivateInt(self):
    # 10. Cara mengembalikan nilai
    return self.__privateInt
  
# 11. Cara menurunkan kelas
class PublicSubClass(PublicClass):
  # 12. Cara melakukan override method
  def getPrivateInt(self):
  # 13. Cara mengakses method pada superclass
    return 2 * super(PublicSubClass, self).getPrivateInt()

class LanguagesExploration():
  #def main(self):
  # 14. Cara menginstansiasi kelas baru
  publicClass=PublicClass()
  # 15. Cara memanggil method dengan parameter
  publicClass.setPrivateInt(13)
  # 16. Cara memanggil method dan mendapatkan return value-nya
  print("[13] publicClass.getPrivateInt() = %s" % publicClass.getPrivateInt())
  # 17. Cara mengubah isi atribut publik dari luar kelas
  publicClass.publicString = "World!"
  # 18. Cara mendapatkan isi atribut publik dari luar kelas
  print("[World!] publicClass.publicString = %s" % publicClass.publicString)
  # 19. Cara mengisi nilai atribut statik 
  publicClass.staticInt=10
  # 20. Cara mendapatkan nilai atribut statik 
  print("[10] publicClass.staticInt = %s"%publicClass.staticInt)
  # 21. Cara mendapatkan nilai konstanta 
  print("[3.14] publicClass.PI = %s"%publicClass.PI)
  # 22. Cara menginstansiasi kelas dengan turunannya
  publicSubClass = PublicSubClass();
  publicSubClass.setPrivateInt(13);
  #23. Memastikan method overriding bekerja
  print("[26] publicSubClass.getPrivateInt= %s"%publicSubClass.getPrivateInt())
