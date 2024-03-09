
 byte receivedByte = 0;

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}


void loop() {
  if (Serial.available() > 0)
  {
    receivedByte = Serial.read();
  }
    if (receivedByte == 66)
    {
    digitalWrite(LED_BUILTIN,LOW);
      }
      else if (receivedByte == 79)
        digitalWrite(LED_BUILTIN,HIGH);
  }
