import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:taqreri_e_commerce/Views/home_new.dart';
import '../constants/global_constants.dart';
import '../more/settings.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';
import 'bottom_navigation_bar.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  String label = '';
  String address = '';
  String lat = '';
  String lng = '';
  var locationLatGiven;
  var locationLngGiven;
  TextEditingController tagLocationController = TextEditingController();

  CameraPosition? cameraPosition = CameraPosition(
    //innital position in map
    target: LatLng(27.6602292, 85.308027), //initial position
    zoom: 30.0, //initial zoom level
  );

  List<Marker> marker = [];
  GoogleMapController? mapController; //contrller for Google map

  LatLng startLocation = const LatLng(27.6602292, 85.308027);
  String location = "Search";
  BitmapDescriptor? customIcon;

  @override
  void initState() {
    addMarker();
    super.initState();
  }

  void addMarker() async {
    final Uint8List markerIcon =
        await getBytesFromAsset('assets/images/location.png', 300);
    //BitmapDescriptor.fromBytes(markerIcon)

    customIcon = BitmapDescriptor.fromBytes(markerIcon);
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void handleTap(LatLng argument) async {
    debugPrint(argument.toString());
    await placemarkFromCoordinates(argument.latitude, argument.longitude)
        .then((value) {
      List<Placemark> placemarks = value;
      setState(() {
        marker = [];
        marker.add(Marker(
            markerId: MarkerId(argument.toString()),
            position: argument,
            icon: customIcon!));
        location =
            "${placemarks.first.administrativeArea}, ${placemarks.first.street}, ${placemarks.first.country}";
        address = location;
        lat = argument.latitude.toString();
        lng = argument.longitude.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: R.colors.lightGrey,
        body: SafeArea(
            child: Stack(
      children: [
        //  newOrderScreenAppBar("selectlocation".tr),
        //  Sizes.h20,
        Stack(
          children: [
            GoogleMap(
              //Map widget from google_maps_flutter package
              zoomGesturesEnabled: true, //enable Zoom in, out on map
              initialCameraPosition: cameraPosition!,
              myLocationButtonEnabled: false,
              myLocationEnabled: true,

              zoomControlsEnabled: false,
              padding: const EdgeInsets.only(top: 100),
              mapType: MapType.normal, //map type
              onMapCreated: (controller) {
                //method called when map is created
                setState(() {
                  mapController = controller;
                  //marker.add(Marker(markerId: const MarkerId('default'),position: startLocation));
                });
              },
              onTap: handleTap,
              markers: Set.from(marker),
              onCameraMove: (CameraPosition cameraPositiona) {
                cameraPosition = cameraPositiona;
              },
              onCameraIdle: () async {
                //   List<Placemark> placemarks = await placemarkFromCoordinates(cameraPosition!.target.latitude, cameraPosition!.target.longitude);
                //  print(placemarks.first);
                //   setState(() {
                //      location = placemarks.first.administrativeArea.toString() + ", " +  placemarks.first.street.toString() + ',' + placemarks.first.country.toString();
                //   });
              },
            ),

            //search autoconplete input
            Positioned(
              //search input bar
              bottom: 10,

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    print(
                        'This is Location==================${location.toString()}');
                    print('This is lat==================${lat.toString()}');
                    print('This is lng==================${lng.toString()}');

                    openTagLocationDialog();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffF86B6B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: height * 0.064,
                    width: width * 0.89,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
                            child: Text(
                              'Add Location',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: height * 0.064,
                            width: width * 0.13,
                            decoration: BoxDecoration(
                              color: Color(0xffE76161),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        Container(
          margin: const EdgeInsets.only(top: 60, left: 30, right: 15),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add Delivery Location',
                style: TextStyle(
                    color: Colors.black, fontSize: 16, fontFamily: "semibold"),
              ),
            ],
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 75, left: 15, right: 15),
          child: InkWell(
              onTap: () async {
                var place = await PlacesAutocomplete.show(
                    context: context,
                    apiKey: googleMapsKey,
                    mode: Mode.overlay,
                    types: [],
                    strictbounds: false,
                    //components: [Component(Component.country, 'np')],
                    //google_map_webservice package
                    onError: (err) {
                      debugPrint(err.toString());
                    }).then((value) async {
                  if (value != null) {
                    //  print(value);

                    //form google_maps_webservice package
                    final plist = GoogleMapsPlaces(
                      apiKey: googleMapsKey,
                      apiHeaders: await const GoogleApiHeaders().getHeaders(),
                      //from google_api_headers package
                    );
                    String placeid = value.placeId ?? "0";
                    final detail = await plist.getDetailsByPlaceId(placeid);
                    final geometry = detail.result.geometry!;
                    final lat = geometry.location.lat;
                    final lang = geometry.location.lng;
                    var newlatlang = LatLng(lat, lang);

                    //move map camera to selected place with animation
                    mapController?.animateCamera(CameraUpdate.newCameraPosition(
                        CameraPosition(target: newlatlang, zoom: 17)));
                    setState(() {
                      marker.clear();
                      location = value.description.toString();
                      marker.add(Marker(
                          markerId: MarkerId('$newlatlang'),
                          position: newlatlang));
                      address = location;
                      this.lat = lat.toString();
                      lng = lang.toString();
                    });
                  }
                });

                debugPrint(place.toString());
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(
                      location,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              )),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 20),
        )
      ],
    )));
  }

  void openTagLocationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Material(
          type: MaterialType.transparency,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/tagLocationImage.png',
                          height: 90,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Tag Location to use later',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "semibold"),
                        ),
                        buildEnterTagTitle(),
                        buildTagField(),
                        buildProceedAndNotNowButtonsInPoPup()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildEnterTagTitle() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: customTitle(
        text: 'Enter Tag'.tr,
        color: Colors.grey,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildTagField() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 20,
      ),
      child: customTextField(
          hintTextSize: 12,
          color: Colors.transparent,
          height: 45,
          borderColour: Colors.black12,
          controller: tagLocationController,
          hintText: 'example Home',
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }

  Widget buildProceedAndNotNowButtonsInPoPup() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 40),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: customButton(
                margin: 0,
                width: MediaQuery.of(context).size.width,
                titleTextAlign: TextAlign.center,
                title: 'Proceed'.tr,
                color: Color(0xffF86B6B),
                textColor: Colors.white,
                height: 45,
                borderColour: Colors.transparent,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => Bottom_Navigation()));
                },
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: customButton(
              optionalNavigateIcon: false,
              margin: 0,
              width: MediaQuery.of(context).size.width / 4,
              titleTextAlign: TextAlign.center,
              title: 'Skip'.tr,
              color: Colors.grey[300]!,
              textColor: Colors.black,
              height: 45,
              borderColour: Colors.transparent,
              onPress: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) => Settings()));
              }),
            ),
          ),
        ],
      ),
    );
  }
}
