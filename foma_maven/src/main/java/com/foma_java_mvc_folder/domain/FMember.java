package com.foma_java_mvc_folder.domain;

public class FMember { //음식정보 엔티티
 
private String fd_code,
fd_name,
fd_data_code,
 fd_data_name,
fd_origin_code,
fd_origin_name,
fd_category_big_code,
fd_category_big_name,
fd_general_code,
fd_general_name,
fd_category_middle_code,
fd_category_middle_name,
fd_category_small_code,
fd_category_small_name,
fd_category_micro_code,
fd_category_micro_name;

private  double
fd_ing_cal,
fd_ing_water,
fd_ing_protein,
fd_ing_carbohydrate,
fd_ing_sugar,
fd_ing_dietaryfiber,
fd_ing_calcium,
fd_ing_iron,
fd_ing_potassium,
fd_ing_salt,
fd_ing_vitamin_a,
fd_ing_retinol,
fd_ing_beta_carotene,
fd_ing_riboflamin,
fd_ing_vitamin_c,
fd_ing_vitamin_d,
fd_ing_cholesterol,
fd_ing_saturated_fatty,
fd_ing_trans_fatty,
fd_ing_folic,
fd_ing_arginine,
fd_ing_caffeine;


private String
fd_intake_once,
fd_intake_measure ;

private double
fd_intake_max_g,
fd_intake_max_ml;

private String
fd_maker,
fd_importer,
fd_publisher  ;

private double
fd_ing_fatty,
fd_ing_vitamin_b1;




public FMember(String fd_code, String fd_name, String fd_data_code, String fd_data_name, String fd_origin_code,
      String fd_origin_name, String fd_category_big_code, String fd_category_big_name, String fd_general_code,
      String fd_general_name, String fd_category_middle_code, String fd_category_middle_name,
      String fd_category_small_code, String fd_category_small_name, String fd_category_micro_code,
      String fd_category_micro_name, double fd_ing_cal, double fd_ing_water, double fd_ing_protein,
      double fd_ing_carbohydrate, double fd_ing_sugar, double fd_ing_dietaryfiber, double fd_ing_calcium,
      double fd_ing_iron, double fd_ing_potassium, double fd_ing_salt, double fd_ing_vitamin_a, double fd_ing_retinol,
      double fd_ing_beta_carotene, double fd_ing_riboflamin, double fd_ing_vitamin_c, double fd_ing_vitamin_d,
      double fd_ing_cholesterol, double fd_ing_saturated_fatty, double fd_ing_trans_fatty, double fd_ing_folic,
      double fd_ing_arginine, double fd_ing_caffeine, String fd_intake_once, String fd_intake_measure,
      double fd_intake_max_g, double fd_intake_max_ml, String fd_maker, String fd_importer, String fd_publisher,
      double fd_ing_fatty, double fd_ing_vitamin_b1) {
   super();
   this.fd_code = fd_code;
   this.fd_name = fd_name;
   this.fd_data_code = fd_data_code;
   this.fd_data_name = fd_data_name;
   this.fd_origin_code = fd_origin_code;
   this.fd_origin_name = fd_origin_name;
   this.fd_category_big_code = fd_category_big_code;
   this.fd_category_big_name = fd_category_big_name;
   this.fd_general_code = fd_general_code;
   this.fd_general_name = fd_general_name;
   this.fd_category_middle_code = fd_category_middle_code;
   this.fd_category_middle_name = fd_category_middle_name;
   this.fd_category_small_code = fd_category_small_code;
   this.fd_category_small_name = fd_category_small_name;
   this.fd_category_micro_code = fd_category_micro_code;
   this.fd_category_micro_name = fd_category_micro_name;
   this.fd_ing_cal = fd_ing_cal;
   this.fd_ing_water = fd_ing_water;
   this.fd_ing_protein = fd_ing_protein;
   this.fd_ing_carbohydrate = fd_ing_carbohydrate;
   this.fd_ing_sugar = fd_ing_sugar;
   this.fd_ing_dietaryfiber = fd_ing_dietaryfiber;
   this.fd_ing_calcium = fd_ing_calcium;
   this.fd_ing_iron = fd_ing_iron;
   this.fd_ing_potassium = fd_ing_potassium;
   this.fd_ing_salt = fd_ing_salt;
   this.fd_ing_vitamin_a = fd_ing_vitamin_a;
   this.fd_ing_retinol = fd_ing_retinol;
   this.fd_ing_beta_carotene = fd_ing_beta_carotene;
   this.fd_ing_riboflamin = fd_ing_riboflamin;
   this.fd_ing_vitamin_c = fd_ing_vitamin_c;
   this.fd_ing_vitamin_d = fd_ing_vitamin_d;
   this.fd_ing_cholesterol = fd_ing_cholesterol;
   this.fd_ing_saturated_fatty = fd_ing_saturated_fatty;
   this.fd_ing_trans_fatty = fd_ing_trans_fatty;
   this.fd_ing_folic = fd_ing_folic;
   this.fd_ing_arginine = fd_ing_arginine;
   this.fd_ing_caffeine = fd_ing_caffeine;
   this.fd_intake_once = fd_intake_once;
   this.fd_intake_measure = fd_intake_measure;
   this.fd_intake_max_g = fd_intake_max_g;
   this.fd_intake_max_ml = fd_intake_max_ml;
   this.fd_maker = fd_maker;
   this.fd_importer = fd_importer;
   this.fd_publisher = fd_publisher;
   this.fd_ing_fatty = fd_ing_fatty;
   this.fd_ing_vitamin_b1 = fd_ing_vitamin_b1;
}

public String getFd_general_name() {
   return fd_general_name;
}

public void setFd_general_name(String fd_general_name) {
   this.fd_general_name = fd_general_name;
}

public double getFd_ing_fatty() {
   return fd_ing_fatty;
}

public void setFd_ing_fatty(double fd_ing_fatty) {
   this.fd_ing_fatty = fd_ing_fatty;
}

public double getFd_ing_vitamin_b1() {
   return fd_ing_vitamin_b1;
}

public void setFd_ing_vitamin_b1(double fd_ing_vitamin_b1) {
   this.fd_ing_vitamin_b1 = fd_ing_vitamin_b1;
}

public FMember(String fd_name) {
   super();
   this.fd_name = fd_name;
}
public FMember(String fd_name ,String fd_category_big_name) {
   super();
   this.fd_name = fd_name;
   this.fd_category_big_name=fd_category_big_name;
}

/*
public FMember(String fd_code, String fd_name, String fd_data_code, String fd_data_name, String fd_origin_code,
      String fd_origin_name, String fd_category_big_code, String fd_category_big_name, String fd_general_code,
      String fd_genera_name, String fd_category_middle_code, String fd_category_middle_name,
      String fd_category_small_code, String fd_category_small_name, String fd_category_micro_code,
      String fd_category_micro_name, double fd_ing_cal, double fd_ing_water, double fd_ing_protein,
      double fd_ing_carbohydrate, double fd_ing_sugar, double fd_ing_dietaryfiber, double fd_ing_calcium,
      double fd_ing_iron, double fd_ing_potassium, double fd_ing_salt, double fd_ing_vitamin_a, double fd_ing_retinol,
      double fd_ing_beta_carotene, double fd_ing_riboflamin, double fd_ing_vitamin_c, double fd_ing_vitamin_d,
      double fd_ing_cholesterol, double fd_ing_saturated_fatty, double fd_ing_trans_fatty, double fd_ing_folic,
      double fd_ing_arginine, double fd_ing_caffeine, String fd_intake_once, String fd_intake_measure,
      double fd_intake_max_g, double fd_intake_max_ml, String fd_maker, String fd_importer, String fd_publisher) {
   super();
   this.fd_code = fd_code;
   this.fd_name = fd_name;
   this.fd_data_code = fd_data_code;
   this.fd_data_name = fd_data_name;
   this.fd_origin_code = fd_origin_code;
   this.fd_origin_name = fd_origin_name;
   this.fd_category_big_code = fd_category_big_code;
   this.fd_category_big_name = fd_category_big_name;
   this.fd_general_code = fd_general_code;
   this.fd_general_name = fd_genera_name;
   this.fd_category_middle_code = fd_category_middle_code;
   this.fd_category_middle_name = fd_category_middle_name;
   this.fd_category_small_code = fd_category_small_code;
   this.fd_category_small_name = fd_category_small_name;
   this.fd_category_micro_code = fd_category_micro_code;
   this.fd_category_micro_name = fd_category_micro_name;
   this.fd_ing_cal = fd_ing_cal;
   this.fd_ing_water = fd_ing_water;
   this.fd_ing_protein = fd_ing_protein;
   this.fd_ing_carbohydrate = fd_ing_carbohydrate;
   this.fd_ing_sugar = fd_ing_sugar;
   this.fd_ing_dietaryfiber = fd_ing_dietaryfiber;
   this.fd_ing_calcium = fd_ing_calcium;
   this.fd_ing_iron = fd_ing_iron;
   this.fd_ing_potassium = fd_ing_potassium;
   this.fd_ing_salt = fd_ing_salt;
   this.fd_ing_vitamin_a = fd_ing_vitamin_a;
   this.fd_ing_retinol = fd_ing_retinol;
   this.fd_ing_beta_carotene = fd_ing_beta_carotene;
   this.fd_ing_riboflamin = fd_ing_riboflamin;
   this.fd_ing_vitamin_c = fd_ing_vitamin_c;
   this.fd_ing_vitamin_d = fd_ing_vitamin_d;
   this.fd_ing_cholesterol = fd_ing_cholesterol;
   this.fd_ing_saturated_fatty = fd_ing_saturated_fatty;
   this.fd_ing_trans_fatty = fd_ing_trans_fatty;
   this.fd_ing_folic = fd_ing_folic;
   this.fd_ing_arginine = fd_ing_arginine;
   this.fd_ing_caffeine = fd_ing_caffeine;
   this.fd_intake_once = fd_intake_once;
   this.fd_intake_measure = fd_intake_measure;
   this.fd_intake_max_g = fd_intake_max_g;
   this.fd_intake_max_ml = fd_intake_max_ml;
   this.fd_maker = fd_maker;
   this.fd_importer = fd_importer;
   this.fd_publisher = fd_publisher;
}
*/


public String getFd_code() {
   return fd_code;
}

public void setFd_code(String fd_code) {
   this.fd_code = fd_code;
}

public String getFd_name() {
   return fd_name;
}

public void setFd_name(String fd_name) {
   this.fd_name = fd_name;
}

public String getFd_data_code() {
   return fd_data_code;
}

public void setFd_data_code(String fd_data_code) {
   this.fd_data_code = fd_data_code;
}

public String getFd_data_name() {
   return fd_data_name;
}

public void setFd_data_name(String fd_data_name) {
   this.fd_data_name = fd_data_name;
}

public String getFd_origin_code() {
   return fd_origin_code;
}

public void setFd_origin_code(String fd_origin_code) {
   this.fd_origin_code = fd_origin_code;
}

public String getFd_origin_name() {
   return fd_origin_name;
}

public void setFd_origin_name(String fd_origin_name) {
   this.fd_origin_name = fd_origin_name;
}

public String getFd_category_big_code() {
   return fd_category_big_code;
}

public void setFd_category_big_code(String fd_category_big_code) {
   this.fd_category_big_code = fd_category_big_code;
}

public String getFd_category_big_name() {
   return fd_category_big_name;
}

public void setFd_category_big_name(String fd_category_big_name) {
   this.fd_category_big_name = fd_category_big_name;
}

public String getFd_general_code() {
   return fd_general_code;
}

public void setFd_general_code(String fd_general_code) {
   this.fd_general_code = fd_general_code;
}

public String getFd_genera_name() {
   return fd_general_name;
}

public void setFd_genera_name(String fd_genera_name) {
   this.fd_general_name = fd_genera_name;
}

public String getFd_category_middle_code() {
   return fd_category_middle_code;
}

public void setFd_category_middle_code(String fd_category_middle_code) {
   this.fd_category_middle_code = fd_category_middle_code;
}

public String getFd_category_middle_name() {
   return fd_category_middle_name;
}

public void setFd_category_middle_name(String fd_category_middle_name) {
   this.fd_category_middle_name = fd_category_middle_name;
}

public String getFd_category_small_code() {
   return fd_category_small_code;
}

public void setFd_category_small_code(String fd_category_small_code) {
   this.fd_category_small_code = fd_category_small_code;
}

public String getFd_category_small_name() {
   return fd_category_small_name;
}

public void setFd_category_small_name(String fd_category_small_name) {
   this.fd_category_small_name = fd_category_small_name;
}

public String getFd_category_micro_code() {
   return fd_category_micro_code;
}

public void setFd_category_micro_code(String fd_category_micro_code) {
   this.fd_category_micro_code = fd_category_micro_code;
}

public String getFd_category_micro_name() {
   return fd_category_micro_name;
}

public void setFd_category_micro_name(String fd_category_micro_name) {
   this.fd_category_micro_name = fd_category_micro_name;
}

public double getFd_ing_cal() {
   return fd_ing_cal;
}

public void setFd_ing_cal(double fd_ing_cal) {
   this.fd_ing_cal = fd_ing_cal;
}

public double getFd_ing_water() {
   return fd_ing_water;
}

public void setFd_ing_water(double fd_ing_water) {
   this.fd_ing_water = fd_ing_water;
}

public double getFd_ing_protein() {
   return fd_ing_protein;
}

public void setFd_ing_protein(double fd_ing_protein) {
   this.fd_ing_protein = fd_ing_protein;
}

public double getFd_ing_carbohydrate() {
   return fd_ing_carbohydrate;
}

public void setFd_ing_carbohydrate(double fd_ing_carbohydrate) {
   this.fd_ing_carbohydrate = fd_ing_carbohydrate;
}

public double getFd_ing_sugar() {
   return fd_ing_sugar;
}

public void setFd_ing_sugar(double fd_ing_sugar) {
   this.fd_ing_sugar = fd_ing_sugar;
}

public double getFd_ing_dietaryfiber() {
   return fd_ing_dietaryfiber;
}

public void setFd_ing_dietaryfiber(double fd_ing_dietaryfiber) {
   this.fd_ing_dietaryfiber = fd_ing_dietaryfiber;
}

public double getFd_ing_calcium() {
   return fd_ing_calcium;
}

public void setFd_ing_calcium(double fd_ing_calcium) {
   this.fd_ing_calcium = fd_ing_calcium;
}

public double getFd_ing_iron() {
   return fd_ing_iron;
}

public void setFd_ing_iron(double fd_ing_iron) {
   this.fd_ing_iron = fd_ing_iron;
}

public double getFd_ing_potassium() {
   return fd_ing_potassium;
}

public void setFd_ing_potassium(double fd_ing_potassium) {
   this.fd_ing_potassium = fd_ing_potassium;
}

public double getFd_ing_salt() {
   return fd_ing_salt;
}

public void setFd_ing_salt(double fd_ing_salt) {
   this.fd_ing_salt = fd_ing_salt;
}

public double getFd_ing_vitamin_a() {
   return fd_ing_vitamin_a;
}

public void setFd_ing_vitamin_a(double fd_ing_vitamin_a) {
   this.fd_ing_vitamin_a = fd_ing_vitamin_a;
}

public double getFd_ing_retinol() {
   return fd_ing_retinol;
}

public void setFd_ing_retinol(double fd_ing_retinol) {
   this.fd_ing_retinol = fd_ing_retinol;
}

public double getFd_ing_beta_carotene() {
   return fd_ing_beta_carotene;
}

public void setFd_ing_beta_carotene(double fd_ing_beta_carotene) {
   this.fd_ing_beta_carotene = fd_ing_beta_carotene;
}

public double getFd_ing_riboflamin() {
   return fd_ing_riboflamin;
}

public void setFd_ing_riboflamin(double fd_ing_riboflamin) {
   this.fd_ing_riboflamin = fd_ing_riboflamin;
}

public double getFd_ing_vitamin_c() {
   return fd_ing_vitamin_c;
}

public void setFd_ing_vitamin_c(double fd_ing_vitamin_c) {
   this.fd_ing_vitamin_c = fd_ing_vitamin_c;
}

public double getFd_ing_vitamin_d() {
   return fd_ing_vitamin_d;
}

public void setFd_ing_vitamin_d(double fd_ing_vitamin_d) {
   this.fd_ing_vitamin_d = fd_ing_vitamin_d;
}

public double getFd_ing_cholesterol() {
   return fd_ing_cholesterol;
}

public void setFd_ing_cholesterol(double fd_ing_cholesterol) {
   this.fd_ing_cholesterol = fd_ing_cholesterol;
}

public double getFd_ing_saturated_fatty() {
   return fd_ing_saturated_fatty;
}

public void setFd_ing_saturated_fatty(double fd_ing_saturated_fatty) {
   this.fd_ing_saturated_fatty = fd_ing_saturated_fatty;
}

public double getFd_ing_trans_fatty() {
   return fd_ing_trans_fatty;
}

public void setFd_ing_trans_fatty(double fd_ing_trans_fatty) {
   this.fd_ing_trans_fatty = fd_ing_trans_fatty;
}

public double getFd_ing_folic() {
   return fd_ing_folic;
}

public void setFd_ing_folic(double fd_ing_folic) {
   this.fd_ing_folic = fd_ing_folic;
}

public double getFd_ing_arginine() {
   return fd_ing_arginine;
}

public void setFd_ing_arginine(double fd_ing_arginine) {
   this.fd_ing_arginine = fd_ing_arginine;
}

public double getFd_ing_caffeine() {
   return fd_ing_caffeine;
}

public void setFd_ing_caffeine(double fd_ing_caffeine) {
   this.fd_ing_caffeine = fd_ing_caffeine;
}

public String getFd_intake_once() {
   return fd_intake_once;
}

public void setFd_intake_once(String fd_intake_once) {
   this.fd_intake_once = fd_intake_once;
}

public String getFd_intake_measure() {
   return fd_intake_measure;
}

public void setFd_intake_measure(String fd_intake_measure) {
   this.fd_intake_measure = fd_intake_measure;
}

public double getFd_intake_max_g() {
   return fd_intake_max_g;
}

public void setFd_intake_max_g(double fd_intake_max_g) {
   this.fd_intake_max_g = fd_intake_max_g;
}

public double getFd_intake_max_ml() {
   return fd_intake_max_ml;
}

public void setFd_intake_max_ml(double fd_intake_max_ml) {
   this.fd_intake_max_ml = fd_intake_max_ml;
}

public String getFd_maker() {
   return fd_maker;
}

public void setFd_maker(String fd_maker) {
   this.fd_maker = fd_maker;
}

public String getFd_importer() {
   return fd_importer;
}

public void setFd_importer(String fd_importer) {
   this.fd_importer = fd_importer;
}

public String getFd_publisher() {
   return fd_publisher;
}

public void setFd_publisher(String fd_publisher) {
   this.fd_publisher = fd_publisher;
}






   

}