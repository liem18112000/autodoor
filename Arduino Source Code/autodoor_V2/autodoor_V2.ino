#include <SPI.h>
#include <MFRC522.h>

#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

#include <string.h>

#define RelayPin 5 //GPIO05

#define SS_PIN D10
#define RST_PIN D9
const char* ssid[] = {
  "ITEC Center",
  "IFIT_Admin",
  "ITEC_STUDENT"
};

const char* password[] = {
  "ItecHappy",
  "Admin_6789",
  "student_itec2020"
};

const int wifiLength= sizeof(ssid) / sizeof(ssid[0]);

String API_1 = "http://103.7.43.126/api/validate/";
String chuoitrave = "";

// Create MFRC522 instance
MFRC522 mfrc522(SS_PIN, RST_PIN);

unsigned long uidDec, uidDecTemp; // hien thi so UID dang thap phan

// day uid nhân viên 
const unsigned long uidEmployee[] = {
  4243551451, // Hạnh
  4243073979, // Nhi
  4243862187, // Lan
  4243038235, // Hà
  4243034219, // Trung
  4243596043, // Trúc
  4243600811, // Tân
  4242976779, // Vân
  2045415835, // Liêm
  951997895   // GUEST01
};

const int uidLength = sizeof(uidEmployee) / sizeof(uidEmployee[0]);

byte bCounter, readBit;
unsigned long ticketNumber;
int relay_on = 0;

void wifiConnected(){
  byte i = 0;
    
  WiFi.begin(ssid[i], password[i]);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
    
    
  Serial.println("");
  Serial.print("Connected to Wifi network with IP Address: ");
  Serial.print(WiFi.localIP());
  Serial.println("");
}

void setup() {
  Serial.begin(9600);
  SPI.begin();        //Initiate SPI bus
  mfrc522.PCD_Init(); //Initiate MFRC522

  // Init Relay
  digitalWrite(RelayPin, LOW);
  pinMode(RelayPin, OUTPUT);

  // Connected to Wifi
  wifiConnected();
  
  // Start Card Reading 
  Serial.println("Put your card to reader ....");

}

int getStatus(String api){  
  HTTPClient http; 
  http.begin(api);
  int httpCode = http.GET();
  if (httpCode > 0) {
    String trangthai = http.getString();
    Serial.println("Get status of device : " + trangthai);
    if(trangthai == "1")
    {
      http.end();
      return 1;
    }
  }
  else {
    Serial.println("Error API check_relay ...");
  }
  http.end();
  return 0;
}

int isEmployee(unsigned long id){
  for(byte i = 0; i < uidLength; i++){
    if(id == uidEmployee[i]){
      return 1;
    }
  }
  return 0;
}

void loop() {

  // Look for new cards
  if ( ! mfrc522.PICC_IsNewCardPresent()) {
    //Serial.println("No new card");

//    if(WiFi.status() == WL_CONNECTED && getStatus("http://192.168.2.17/autodoor/public/api/device/get-status/1") == 1)
//    {
//      //Mở cửa
//      relay_on = 1;
//      Serial.print("Authorized access from app, welcome ");
//      digitalWrite(RelayPin, HIGH);
//
//    } else {
//      relay_on = 0;
//      digitalWrite(RelayPin, LOW);
//    }
    
    return;
  }
  
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) {
    //Serial.println("No selected card");
    return;
  }
  
  uidDec = 0;
  API_1 = "http://103.7.43.126/api/validate/";
  Serial.println("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
  Serial.println("================================================");

  // Show UID on serial monitor
  Serial.print("Card UID: ");
  for (byte i = 0; i < mfrc522.uid.size; i++) {
    uidDecTemp = mfrc522.uid.uidByte[mfrc522.uid.size - 1 - i];
    uidDec = uidDec * 256 + uidDecTemp;
  }
  Serial.print("            [");
  Serial.print(uidDec);
  Serial.println("]");

  //Đoạn code nếu để data local tại đây
  if(isEmployee(uidDec) == 1){

    //Mở cửa
    relay_on = 1;
    Serial.print("Admin Authorized access, welcome Admin");
    Serial.println('Admin');
    digitalWrite(RelayPin, HIGH);
    delay(100);

  //Phần này gọi API kiểm tra trên database hoặc lưu data tại chổ
  }else if (WiFi.status() == WL_CONNECTED) {

    
    HTTPClient http;
//  API_1 += String(uidDec) + String("/1");
    API_1 += String(uidDec);
    Serial.println(API_1);

    http.begin(API_1);
    int httpCode = http.GET();
    Serial.print("HTTP Code : ");
    Serial.println(httpCode);

    // Kiem tra API Status
    if (httpCode > 0) {
      
      chuoitrave = http.getString();
      Serial.println(chuoitrave);
      
      if (chuoitrave == "NONAME")
      {
        
        //Không mở
        Serial.println("Access denied");
        delay(100);
        relay_on = 0;
      } else {
        
        //Mở cửa
        relay_on = 1;
        Serial.print("Authorized access, welcome ");
        Serial.println(chuoitrave);
        digitalWrite(RelayPin, HIGH);
      }
      
    } else {
      Serial.println("Error API check_relay ...");
    }

    http.end();
    
    // Kết thúc kiểm tra API
    
  }
  else {  // Lỗi kết nối Wifi
    Serial.println("WiFi Disconnected. Retrying to connected");
    wifiConnected();
  }
  Serial.println("================================================");
  if (relay_on == 1) {
    //Sẽ delay sau 3 second và tự động khóa
    for (byte i = 0; i < 3; i++) {
      Serial.print("thoi gian: ");
      Serial.println(i);
      delay(1000);
    }
    digitalWrite(RelayPin, LOW);
    relay_on = 0;
    Serial.println("Khóa cổng");
  }
  delay(200);

}
