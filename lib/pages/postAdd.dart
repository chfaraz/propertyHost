import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostAdd extends StatefulWidget {
  @override
  _PostAddState createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //String msg = 'Flutter RaisedButton example';
  String dropdownNames;
  String _selectedProvince;
  String _selectedPurpose;
  String _selectedpropertyType;
  String _selectedpropertyDetailType;
  String _selectedpropertyTypeHomes;
  String _selectedpropertyTypePlots;
  String _selectedpropertyTypeCommercial;
  String _selectedCity;
  String _selectedPropertyTypeData;
  String _btn1SelectedVal;
  List<String> _categories;
  String _selectedCategory;

  int value = 0;
  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
  bool isButtonPressed3 = false;
  bool isButtonPressed4 = false;
  bool isButtonPressed5 = false;
  bool isButtonPressed6 = false;
  bool isButtonPressed7 = false;
  bool _checkBoxVal = false;
  String province_id;
  List<String> _purpose = ['For Sale', 'Rent'];
  List<String> _propertyType = ['Homes', 'Plots', 'Commercial'];
  List<String> _propertyTypeHomes = [
    'House',
    'Flat',
    'Upper Portion',
    'Lower Portion',
    'Farm House',
    'Room',
    'Pent House'
  ];
  List<String> _propertyTypePlots = [
    'Residential Plot',
    'Commerical Plot',
    'Agricultural Plot',
    'Industrial Land',
    'Plot File',
    'Plot Form'
  ];
  List<String> _propertyTypeCommercial = [
    'Office',
    'Shop',
    'WareHouse',
    'Factory',
    'BUilding',
    'Other'
  ];
  List<String> _province = ['Sindh', 'Balouchistan', 'KPK', 'Punjab'];
  String state_id;
  List<String> _sindhCities = [
    'Karachi',
    'Hyderabad',
    'Sukkur',
  ];
  List<String> _punjabCities = [
    'Islamabad',
    'Rawalpindi',
    'Lahore',
  ];
  List<String> _kpkCities = [
    'Peshawar',
    'Abbotabad',
    'Mardan',
  ];
  List<String> _balouchCities = [
    'Gawadar',
    'Sui',
    'Quetta',
  ];
  final List<String> _listItem = [
    'img/1.jpg',
    'img/2.jpg',
    'img/3.jpg',
    'img/1.jpg',
  ];
//  Beds selectedBeds;
//  List<Beds> beds = [
//    Beds('1'),
//    Beds('2'),
//  ];
//
//  List<DropdownMenuItem> generateItems(List<Beds> beds) {
//    List<DropdownMenuItem> items = [];
//    for (var item in beds) {
//      items.add(
//        (DropdownMenuItem(
//          child: Text(item.num),
//          value: item,
//        )),
//      );
//    }
//    return items;
//  }
//
//  Bathrooms selectedBathrooms;
//  List<Bathrooms> bathrooms = [
//    Bathrooms('1'),
//    Bathrooms('2'),
//  ];
//
//  List<DropdownMenuItem> generateItems1(List<Bathrooms> bathrooms) {
//    List<DropdownMenuItem> items = [];
//    for (var item in bathrooms) {
//      items.add(
//        (DropdownMenuItem(
//          child: Text(item.num1),
//          value: item,
//        )),
//      );
//    }
//    return items;
//  }
  static const menuItems = <String>[
    'Tiles',
    'Marble',
    'Wooden',
    'Cement',
    'Other'
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.grey[600],
      body: Container(
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage("assets/background.png"),
//            fit: BoxFit.cover,
//          ),
//        ),
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Center(
                child: Text(
                  "Post New Ad",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              _showTitleInput(),
              _showDescInput(),
//              _categories == null ? Container() : _showCategoryDropDown(),
              //    _showLocationDropDown(),
              _showPriceInput(),
              // _categories == null ? Container() : _showCategoryDropDown(),

              _showprovinceDropDown(),
              _showLocationDropDown(),
              _showSectorInput(),
              _showonMap(),
//              _showProvinceInput(),
//              _showStateInput(),
              _showPurposeDropDown(),
              _showpropertyTypeDropDown(),
              _showpropertyTypeDetailDropDown(),

              //_getPurposeDropDown(),
              //          _getPropertyTypeDropDown(),
              //          _showPropertyTypeDropDown(),
              _showExpansionList(),
              //            _showBedsInput(),
//              _showBathroomsInput(),
              _showAreaInput(),
              _showArea1Input(),
              _selectMeetingTime(),
              //_showLocationDropDown(),

              _uploadImagesInput(),
              _showSelectImages(),
              _showAddImages(),

              _showSubmitButton(),
              //      _showButtons(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
              ),
            ], //:TODO: implement upload pictures
          ),
        ),
      ),
    );
  }

  Widget _showTitleInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
        maxLines: 1,
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.title,
              color: Color(0xff2470c7),
            ),
            labelText: 'Title'),
        validator: (value) => value.isEmpty ? 'Title can\'t be empty' : null,
      ),
    );
  }

  Widget _showprovinceDropDown() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        child: Column(
          children: <Widget>[
            //_getCityDropDown(),
            _getProvinceDropDown(),
            //_selectedProvince == null ? Container() : _getCityDropDown(),
          ],
        ),
      ),
    );
  }

  Widget _showLocationDropDown() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        child: Column(
          children: <Widget>[
            _getCityDropDown(),
            //  _getProvinceDropDown(),
            //_selectedProvince == null ? Container() : _getCityDropDown(),
          ],
        ),
      ),
    );
  }

  Widget _showSectorInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
        maxLines: 1,
        //autofocus: true,
        decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.pin_drop,
                color: Color(0xff2470c7),
              ),
            ),
            labelText: 'Enter Sector ! Example: G-10/1 ,'),

        validator: (value) => value.isEmpty ? 'Title can\'t be empty' : null,
      ),
    );
  }

  Widget _showPurposeDropDown() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        child: Column(
          children: <Widget>[
            //_getCityDropDown(),
            _getPurposeDropDown(),
            //  _getProvinceDropDown(),
            //_selectedProvince == null ? Container() : _getCityDropDown(),
          ],
        ),
      ),
    );
  }

  Widget _showpropertyTypeDropDown() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        child: Column(
          children: <Widget>[
            //_getCityDropDown(),
            _getPropertyTypeDropDown(),
            //_selectedProvince == null ? Container() : _getCityDropDown(),
          ],
        ),
      ),
    );
  }

  Widget _showpropertyTypeDetailDropDown() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        child: Column(
          children: <Widget>[
            //_getCityDropDown(),
            _getPropertyTypeDetailDropDown(),
            //_selectedProvince == null ? Container() : _getCityDropDown(),
          ],
        ),
      ),
    );
  }

  Widget _getCityDropDown() {
    return Column(
      children: <Widget>[
        Container(
          height: 5,
        ),
        Row(
          children: <Widget>[
//            Icon(Icons.location_city, color: Colors.grey),
            Container(
              width: 7.0,
            ),
            Expanded(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.add_location,
                          color: Color(0xff2470c7),
                        ),
                      ),
                      labelText: 'Choose Your City'),
                  value: _selectedCity,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCity = newValue;
                    });
                  },
                  items: _getCities().map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                  validator: (value) =>
                      value == null ? 'Price select a city' : null,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<String> _getCities() {
    switch (_selectedProvince) {
      case ("Sindh"):
        return _sindhCities;

      case ("Punjab"):
        return _punjabCities;

      case ("Balouchistan"):
        return _balouchCities;

      case ("KPK"):
        return _kpkCities;
    }
    List<String> deflt = ['Please Select Province'];
    return deflt;
  }

  List<String> _getPropertyTypeDetails() {
    switch (_selectedpropertyType) {
      case ("Homes"):
        return _propertyTypeHomes;
      case ("Plots"):
        return _propertyTypePlots;
      case ("Commercial"):
        return _propertyTypeCommercial;
    }
    List<String> deflt2 = ['Please Select Property Type'];
    return deflt2;
  }

  Widget _getProvinceDropDown() {
    return Row(
      children: <Widget>[
        //Icon(Icons.map, color: Colors.grey),
        Container(
          //padding: EdgeInsets.all(5),
          //margin: EdgeInsets.only(right: 10,),
          width: 7.0,
        ),
        Flexible(
          child: ButtonTheme(
            alignedDropdown: true,
            child: Container(
              //margin: EdgeInsets.only(right: 10),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.place,
                      color: Color(0xff2470c7),
                    ),
                  ),
                  labelText: 'Please choose Your Province',
                ),
                value: _selectedProvince,
                onChanged: (newValue) {
                  setState(() {
                    _selectedProvince = newValue;
                    _selectedCity = _getCities().first;
                  });
                },
                items: _province.map((province) {
                  return DropdownMenuItem(
                    child: Text(province),
                    value: province,
                  );
                }).toList(),
                validator: (value) =>
                    value == null ? 'Please select a province' : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _showonMap() {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.map,
                color: Colors.white,
                textDirection: TextDirection.ltr,
              ),
              label: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ChoseOnMap');
                },
                child: Text(
                  'Choose Area on Map',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPurposeDropDown() {
    return Row(
      children: <Widget>[
        //Icon(Icons.map, color: Colors.grey),
        Container(
            //margin: EdgeInsets.only(left: 5,),
            //width: 7.0,
            ),
        Flexible(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.home,
                      color: Color(0xff2470c7),
                    ),
                  ),
                  labelText: 'Choose Purpose'),
              value: _selectedPurpose,
              onChanged: (newValue) {
                setState(() {
                  _selectedPurpose = newValue;
                  //                _selectedPropertyTypeData = _getCities().first;
                });
              },
              items: _purpose.map((purpose) {
                return DropdownMenuItem(
                  child: Text(purpose),
                  value: purpose,
                );
              }).toList(),
              validator: (value) =>
                  value == null ? 'Please select a province' : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _getPropertyTypeDropDown() {
    return Row(
      children: <Widget>[
        //Icon(Icons.map, color: Colors.grey),
        Container(
          //margin: EdgeInsets.only(left: 5,),
          width: 7.0,
        ),
        Flexible(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    //margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.scatter_plot,
                      color: Color(0xff2470c7),
                    ),
                  ),
                  labelText: 'Choose Property Type'),
              value: _selectedpropertyType,
              onChanged: (newValue) {
                setState(() {
                  _selectedpropertyType = newValue;
                  _selectedpropertyDetailType = _getPropertyTypeDetails().first;
                });
              },
              items: _propertyType.map((propertyType) {
                return DropdownMenuItem(
                  child: Text(propertyType),
                  value: propertyType,
                );
              }).toList(),
              validator: (value) =>
                  value == null ? 'Please select a province' : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _getPropertyTypeDetailDropDown() {
    return Row(
      children: <Widget>[
        //Icon(Icons.map, color: Colors.grey),
        Container(
          //margin: EdgeInsets.only(left: 5,),
          width: 7.0,
        ),
        Flexible(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    //margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.merge_type,
                      color: Color(0xff2470c7),
                    ),
                  ),
                  labelText: 'Choose Property Detail'),
              //hint: Text('Choose Property Type Detail'),
              value: _selectedpropertyDetailType,
              onChanged: (newValue) {
                setState(() {
                  _selectedpropertyDetailType = newValue;
                });
              },
              items: _getPropertyTypeDetails().map((propertyType) {
                return DropdownMenuItem(
                  child: Text(propertyType),
                  value: propertyType,
                );
              }).toList(),
              validator: (value) =>
                  value == null ? 'Please select a province' : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _showDescInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
        maxLines: 2,
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.description,
              color: Color(0xff2470c7),
            ),
            labelText: 'Description'),
        //textAlign: TextAlign,
        validator: (value) =>
            value.isEmpty ? 'Description can\'t be empty' : null,
      ),
      // ),
    );
  }

  Widget _showPriceInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
//        inputFormatters: <TextInputFormatter>[
//          WhitelistingTextInputFormatter.digitsOnly
//        ],
//        maxLines: 1,
        keyboardType: TextInputType.number,
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.attach_money,
              color: Color(0xff2470c7),
            ),
            labelText: 'Price'),
        validator: (value) => value.isEmpty ? 'Price can\'t be empty' : null,
      ),
    );
  }

//  Widget _showBedsInput() {
//    return Container(
//      padding: EdgeInsets.only(left: 40, top: 28),
//      //height: MediaQuery.of(context).size.height,
//      child: Column(
//        //crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
////          Row(
////            mainAxisAlignment: MainAxisAlignment.start,
////            children: <Widget>[
////              Text('No of beds'),
////            ],
////
////          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    'No of beds: ',
//                    style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                        fontSize: 18,
//                        color: Colors.grey[600]),
//                  ),
//                ],
//              ),
//            ],
//          ),
//          Container(
//            child: DropdownButton(
//              //  hint: Text('Select No. of beds'),
//              isExpanded: true,
//              style: TextStyle(fontSize: 20, color: Colors.purple),
//              value: selectedBeds,
//              items: generateItems(beds),
//              onChanged: (item) {
//                setState(() {
//                  selectedBeds = item;
//                });
//              },
//            ),
//          ),
//        ],
//      ),
//    );
//  }

//  Widget _showBathroomsInput() {
//    return Container(
//      padding: EdgeInsets.only(left: 40, top: 28),
//      //height: MediaQuery.of(context).size.height,
//      child: Column(
//        //crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
////          Row(
////            mainAxisAlignment: MainAxisAlignment.start,
////            children: <Widget>[
////              Text('No of beds'),
////            ],
////
////          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    'No. of bathrooms: ',
//                    style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                        fontSize: 18,
//                        color: Colors.grey[600]),
//                  ),
//                ],
//              ),
//            ],
//          ),
//          Container(
//
//
//            child: DropdownButton(
//
//              //hint: Text('Select No. of bathrooms'),
//              isExpanded: true,
//              style: TextStyle(fontSize: 20, color: Colors.purple),
//              value: selectedBathrooms,
//              items: generateItems1(bathrooms),
//              onChanged: (item) {
//                setState(() {
//                  selectedBathrooms = item;
//                });
//              },
//            ),
//          ),
//        ],
//      ),
//    );
//  }

  Widget _showAreaInput() {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Unit Area: ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Kanal"),
                          color: isButtonPressed1
                              ? Colors.green[400]
                              : Colors.grey,
                          onPressed: () {
                            setState(() {
                              isButtonPressed1 = !isButtonPressed1;
                            });
                          },
                          textColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Marla"),
                            color: isButtonPressed2
                                ? Colors.green[400]
                                : Colors.grey,
                            onPressed: () {
                              setState(() {
                                isButtonPressed2 = !isButtonPressed2;
                              });
                            },
                            textColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            splashColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Square Feet"),
                            color: isButtonPressed3
                                ? Colors.green[400]
                                : Colors.grey,
                            onPressed: () {
                              setState(() {
                                isButtonPressed3 = !isButtonPressed3;
                              });
                            },
                            textColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            splashColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Square Meter"),
                          color: isButtonPressed4
                              ? Colors.green[400]
                              : Colors.grey,
                          onPressed: () {
                            setState(() {
                              isButtonPressed4 = !isButtonPressed4;
                            });
                          },
                          textColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Square Yards"),
                            color: isButtonPressed5
                                ? Colors.green[400]
                                : Colors.grey,
                            onPressed: () {
                              setState(() {
                                isButtonPressed5 = !isButtonPressed5;
                              });
                            },
                            textColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            splashColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showArea1Input() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Area: ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        value.toString(),
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            ),
            child: Slider(
              value: value.toDouble(),
              min: 0,
              max: 100,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              label: '$value',
              onChanged: (double newValue) {
                setState(() {
                  value = newValue.round();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _showSubmitInput() {
    return Container(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Submit"),
                    color:
                        isButtonPressed6 ? Colors.lightGreen : Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        isButtonPressed6 = !isButtonPressed6;
                      });
                    },
                    textColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _uploadImagesInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Upload Images : ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showSelectImages() {
    return Container(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Select Images"),
                    color:
                        isButtonPressed6 ? Colors.lightGreen : Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        isButtonPressed6 = !isButtonPressed6;
                      });
                    },
                    textColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _showAddImages() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 1 / 2,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: _listItem
                .map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(item), fit: BoxFit.cover)),
                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 65, vertical: 63),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              //            child: Icon(Icons.bookmark_border, size: 15,),
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          )),
    );
  }

  Widget _showSubmitButton() {
    return Container(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Submit"),
                    color:
                        isButtonPressed7 ? Colors.lightGreen : Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        isButtonPressed7 = !isButtonPressed7;
                      });
                    },
                    textColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _showExpansionList() {
    return Container(
      //margin: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 25, top: 25, bottom: 10),
      child: ExpansionTile(
        //leading:  Icon(Icons.arrow_drop_down_circle,color: Colors.blue,),
        title: Text(
          "Choose Main Features",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black45),
        ),
        trailing: Icon(
          Icons.arrow_drop_down_circle,
          color: Colors.blue,
        ),
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Build Year:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Parking Space:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Bedrooms:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Bathrooms:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Kitchens:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 50,
                        margin: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Floors:',
                            alignLabelWithHint: false,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Drawing Room',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 50,
                          margin: const EdgeInsets.all(8.0),
                          child: Checkbox(
                            onChanged: (bool value) {
                              setState(() => this._checkBoxVal = value);
                            },
                            value: this._checkBoxVal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Dining Room',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 50,
                      margin: const EdgeInsets.only(left: 25.0, top: 12),
                      child: Checkbox(
                        onChanged: (bool value) {
                          setState(() => this._checkBoxVal = value);
                        },
                        value: this._checkBoxVal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Furnished:',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 50,
                      margin: const EdgeInsets.only(left: 47.0, top: 12),
                      child: Checkbox(
                        onChanged: (bool value) {
                          setState(() => this._checkBoxVal = value);
                        },
                        value: this._checkBoxVal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            title: Text("Flooring: "),
            trailing: DropdownButton(
              value: _btn1SelectedVal,
              hint: Text("Choose"),
              onChanged: ((String newValue) {
                setState(() {
                  _btn1SelectedVal = newValue;
                });
              }),
              items: _dropDownMenuItems,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectMeetingTime() {
    return Container(
      //constraints: BoxConstraints(maxWidth: 250),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                margin: EdgeInsets.only(bottom: 4),
                child: Text(
                  'Set Meeting Time',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          Row(
            children: <Widget>[
              Text(
                'Available Days :',
                style: TextStyle(fontSize: 15),
              ),
              Row(
                children: <Widget>[
                  Container(
                    //width: 50,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Card(
                      child: DropdownButton<String>(
                        value: dropdownNames,
                        hint: const Text('To'),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownNames = newValue;
                          });
                        },
                        items: <String>[
                          'Mon',
                          'Tue',
                          'Wed',
                          'Thu',
                          'Fri',
                          'Sat',
                          'Sun',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              margin: EdgeInsets.only(left: 4, right: 4),
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blueGrey),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    //width: 50,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Card(
                      child: DropdownButton<String>(
                        value: dropdownNames,
                        hint: const Text('From'),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownNames = newValue;
                          });
                        },
                        items: <String>[
                          'Mon',
                          'Tue',
                          'Wed',
                          'Thu',
                          'Fri',
                          'Sat',
                          'Sun',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              margin: EdgeInsets.only(left: 4, right: 4),
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blueGrey),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 10, top: 15),
                  child: Text(
                    'Mention Time :',
                    style: TextStyle(fontSize: 15),
                  )),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 200,
                      child: TextFormField(
                        maxLines: 1,
                        //autofocus: true,

                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.pin_drop,
                              color: Color(0xff2470c7),
                            ),
                            labelText: '1-3 pm ,'),

                        validator: (value) =>
                            value.isEmpty ? 'Time Field can\'t be empty' : null,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
