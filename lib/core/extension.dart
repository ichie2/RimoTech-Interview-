// filter phone number
String phoneNumber(phone) {
  if (phone!.startsWith('0')) {
    phone = phone.substring(1, phone.length);
    return phone = "+234$phone";
  } else if (phone.startsWith('+')) {
    return phone;
  } else {
    return phone;
  }
}
