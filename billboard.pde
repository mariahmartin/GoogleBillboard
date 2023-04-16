public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
  for (int i = 0; i < e.length() - 10; i++)
  {
    String tenDigits = e.substring(i,i+10);
    tenDigits = tenDigits.replace(".","");
    long longNum = Long.parseLong(tenDigits);
    if (isPrime(longNum))
    {
      System.out.println(longNum);
      break;
    }
  }
}



public boolean isPrime(long num) {
  boolean result = true;
  if (num == 1)
  {
    result = false;
  } else if (num == 2)
  {
    result = true;
  } else if (num<0) {
    result = false;
  } else
  {
    for (int i = 2; i<= (int)Math.sqrt(num) +1; i++)
    {
      if (num%i == 0) {
        result = false;
        break;
      } else {
        result = true;
      }
    }
  }

  return result;
}
