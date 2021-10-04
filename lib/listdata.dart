class ListData{
  String name;
  String nationality;
  String gender;
  String role;
  String photo;

  ListData({
    required this.name,
    required this.nationality,
    required this.gender,
    required this.role,
    required this.photo,
  });
}

var userList = [
  ListData(
      name: "Jett",
      nationality: "japan",
      gender: "Female",
      role: "Duelist",
      photo: "https://i.pinimg.com/550x/78/b0/a3/78b0a3c9cac858f1acbbd97265b0ab70.jpg",
  ),
  ListData(
      name: "Killjoy",
      nationality: "German",
      gender: "Female",
      role: "Sentinel",
      photo: "https://i.pinimg.com/564x/e1/79/70/e179708064cc5d59be7acc9df8b2b4d6.jpg",
  ),
  ListData(
      name: "Sova",
      nationality: "Russia",
      gender: "Male",
      role: "Initiator",
      photo: "https://i.pinimg.com/564x/87/b7/fc/87b7fc498e6bd125157bac23e0b1343f.jpg",
  ),
  ListData(
    name: "Raze",
      nationality: "Brazil",
      gender: "Female",
      role: "Duelist",
      photo: "https://i.pinimg.com/564x/a2/71/91/a2719106103ab34968b49d27f881e151.jpg",
  ),
  ListData(
    name: "Viper",
      nationality: "USA",
      gender: "Female",
      role: "Controller",
      photo: "https://i.pinimg.com/564x/c6/fa/48/c6fa4811964b38e277b1c349b49672fb.jpg",
  ),
];

var emptyUser = [
  ListData(
    name: "",
    nationality: "",
    photo: "https://i.ibb.co/kmVrCMX/no-image-found-360x250.png",
    gender: "",
    role: ""
  ),
];