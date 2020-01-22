public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(noSpaces(noCapitals(onlyLetters(word))).equals(onlyLetters(noCapitals(noSpaces(reverse(word)))))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
      sNew += str.substring(i-1,i);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String str = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i,i+1).equals(" ")){
      
    }else{
      str += sWord.substring(i,i+1);
    }
  }
  return str;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sString){
  String sword = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))==true){
      sword+=sString.charAt(i);
    }
  }
  return sword;
}
