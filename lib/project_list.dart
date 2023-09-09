
List<ProjectInfo> myProjectList=[
  ProjectInfo(id: 1, name: 'Remit Money Transfer', date: '2023', tools: '[Rest-Api , Google Map location, Secured bearer token,Bio metric verification, Smart UI,Get-X]', details: 'Money Transfer app for Australia to any country with green id secured verification and other latest functionalities'),
  ProjectInfo(id: 2, name: 'GLO Ticket', date: '2023', tools: '[Rest-Api, Secured authentication, Awesome animated UI]', details: 'Lottery app to buy, sell and exchange for Malaysian local people'),
  ProjectInfo(id: 3, name: 'Pencilbox Training Institute', date: '2022', tools: '[Rest-Api , Provider, Payment getway,Live Data, Functional Menus]', details: 'Converting full Functional website through Restfull api With Integrated Payment System and Live functionalities.'),
  ProjectInfo(id: 4, name: 'TexPart Contact App', date: '2022', tools: '[Firebasebackend,Various-Filtering , Admin Panel , call-sms-mail System , ML kit Camera Scanning ]', details: 'Project for Texpart\'s Employee where admin can filter , contact and transfer employees with all log\'s history, ML kit Contact Registration.'),
  ProjectInfo(id: 5, name: 'AngelicaGame', date: '2022', tools: '[Firebasebackend,Animation, Authentications, Players History , Records, Get-X]', details: 'Simple Math Solving game for kids with professional animated story , sound and Thrillings.'),
  ProjectInfo(id: 6, name: 'E-comrs App', date: '2021', tools: '[FIREBASE , RECYCLERVIEW , SEARCHVIEW , PICASSO, NAVIGATION,TOOLBAR,ADMIN PANEL,CUSTOMER PANEL]', details: 'User can chose,search,details & buy any product from a smart UI and add to cart his chosen product. Admin can CRUD products and have a panel of controling the orders and payment'),
  ProjectInfo(id: 7, name: 'MediTechApp[Java]', date: '2021', tools: '[ANDROID,FIREBASE,REST- API,GOOGLE-API, MVVM]', details: 'health informattion & current health condition with medical providers can contact people, exploring nearby emergency places with route and direction.'),
  ProjectInfo(id: 8, name: ' Music Player [Java]', date: '2021', tools: '[ System Services,Custom seekbar,Visualizer,Background services ]', details: 'show all music file and play,pause,running in background,fast-forward with smart UI,Theme Change,Toolbar.'),
];


class ProjectInfo{
  int id;
  String name;
  String date;
  String tools;
  String details;

  ProjectInfo({
   required this.id,
   required this.name,
   required this.date,
   required this.tools,
   required this.details});
}