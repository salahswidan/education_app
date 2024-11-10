myValidator(String value, String type, String title) {
    if (value!.isEmpty) {
                return "الرجاء ادخال ${title}";
              }
              if (type == "email") {
                if (!value.contains("@") || !value.contains(".")) {
                  return "الرجاء ادخال بريد الكتروني صحيح";
                }
              }
              if (type == "pass") {
                if (value.length < 8) {
                  return "الرجاء ادخال كلمة مرور صحيحة";
                }
              }
              if(type == "phone"){
                if(value.length != 11){
                  return "الرجاء ادخال رقم هاتف صحيح";
                }
              }
  
}