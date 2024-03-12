String [] piLines;
String piDigits;
long numDigits;
String bday = "06/29/2009";
String us [];
String uk [];
void setup() {
  size(200, 200);
  noLoop();
  MyPI bob = new MyPI();
  piLines = loadStrings("pi-tenmillion.txt");
  piDigits = piLines[0].substring(0, 1) + piLines[0].substring(2);
  MyPI.setPI(piDigits);
  numDigits = piDigits.length();
  us = MyPI.getSubs(bday);
  for (String q : us) {
    println(q + " " + MyPI.findinPI(q));
  }
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring(0, 3) + "/" + bday.substring(6);
  uk = MyPI.getSubs(bday_uk);
  for (String q : uk) {
    println(q + " " + MyPI.findinPI(q));
  }
}
