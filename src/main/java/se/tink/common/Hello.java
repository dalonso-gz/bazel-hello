package se.tink.common;

public class Hello {

  public Hello() throws InterruptedException {
    for (int i = 0; i < 3; i++) {
      System.out.println("HelloWorld");
      Thread.sleep(1000);
    }
  }

}
