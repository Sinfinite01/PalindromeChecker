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
  String lNew = new String(); //lNew has all lower case
    for(int i=0; i<word.length(); i++)
    {
      if(Character.isLetter(word.charAt(i)))
      {
        lNew=lNew+word.substring(i,i+1);
      }
    }
    lNew = lNew.toLowerCase();
    //Changes word to lower case and no punctuation
  if(lNew.equals(reverse(lNew)))
    {
      return true;
    }
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    String lNew = new String(); //lNew has all lower case
    //your code here
    for(int i=str.length(); i>0; i--)
    {
      sNew=sNew+str.substring(i-1,i);
    }
    return sNew;
}


