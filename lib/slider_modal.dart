class SliderModel{
  late String image;
  late String title;
  late String description;

  void setImage(String getImage){
    image = getImage;
  }
  String getImage(){
    return image;
  }

  void setTitle(String ti){
    title = ti;
  }
  String getTitle(){
    return title;
  }

  void setDesc(String desc){
    description = desc;
  }
  String getDesc(){
    return description;
  }
}

List<SliderModel> getSlides(){
  List<SliderModel> slides = [];
  SliderModel sliderModel = SliderModel();

  //heading
  sliderModel.setImage("images/and.gif");
  sliderModel.setTitle("Top 3 Android App Development Technologies");
  sliderModel.setDesc("Welcome everyone \n Here is the list of Top 3 Mobile App development technologies.");
  slides.add(sliderModel);

  //1
  sliderModel =  SliderModel();
  sliderModel.setImage("images/kotlinimg.gif");
  sliderModel.setTitle("1 Kotlin");
  sliderModel.setDesc('Kotlin is Google recommended official language for Android development');
  slides.add(sliderModel);

  //2
  sliderModel =  SliderModel();
  sliderModel.setImage("images/react.png");
  sliderModel.setTitle("2 React Native");
  sliderModel.setDesc('React Native is an open-source framework used to develop cross-platform applications for iOS, Android, Web, and UWP');
  slides.add(sliderModel);

  //3
  sliderModel =  SliderModel();
  sliderModel.setImage("images/flut.png");
  sliderModel.setTitle("3 Flutter");
  sliderModel.setDesc('Flutter is an open-source mobile app development SDK that facilitates developers to create cross-platform applications.');
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  return slides;
}