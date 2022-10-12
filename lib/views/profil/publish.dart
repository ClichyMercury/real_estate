import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/colors.dart';
import '../../core/space.dart';
import '../../core/text_style.dart';
import '../../widget/main_button.dart';
import '../../widget/text_fild.dart';

class publish extends StatefulWidget {
  const publish({super.key});

  @override
  State<publish> createState() => _publishState();
}

class _publishState extends State<publish> {
  String imageName = "";
  late XFile? imagePath;
  final ImagePicker _picker = ImagePicker();

  FirebaseFirestore firestoreRef = FirebaseFirestore.instance;
  FirebaseStorage storageRef = FirebaseStorage.instance;
  String collectionName = "products";

  CollectionReference products =
      FirebaseFirestore.instance.collection('products');
  Future<void> addProduct() {
    return products
        .add({
          'label': _label,
          'name': _name,
          'price': _price,
          'location': _location,
          'sqm': _sqm,
          'review': _review,
          'description': _description,
          'owner name': _ownerName,
        })
        .then((value) => print("Product Added"))
        .catchError((error) => print("Failed to add Product: $error"));
  }

  final FocusNode _labelFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _priceFocusNode = FocusNode();
  final FocusNode _locationFocusNode = FocusNode();
  final FocusNode _sqmFocusNode = FocusNode();
  final FocusNode _reviewFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  final FocusNode _ownerNameFocusNode = FocusNode();

  final TextEditingController _labelController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _sqmController = TextEditingController();
  final TextEditingController _reviewController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _ownerNameController = TextEditingController();

  String get _label => _labelController.text;
  String get _name => _nameController.text;
  String get _price => _priceController.text;
  String get _location => _locationController.text;
  String get _sqm => _sqmController.text;
  String get _review => _reviewController.text;
  String get _description => _descriptionController.text;
  String get _ownerName => _ownerNameController.text;

  bool _isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'DomArt',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w300, fontSize: 35),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: _isloading
              ? Center(child: const CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      SpaceVH(height: 20.0),
                      Text(
                        'Add a new real estate',
                        style: headlineDot,
                      ),
                      SpaceVH(height: 20.0),
                      imageName == ""
                          ? Container()
                          : Text("${imageName}", style: headline3),
                      SpaceVH(height: 10.0),
                      OutlinedButton(
                          onPressed: imagePicker, child: Text("Select image")),
                      textFild(
                        enabled: true,
                        focusNode: _labelFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _labelController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Label',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _nameFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _nameController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Name',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _priceFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _priceController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Price',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _locationFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _locationController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Location',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _sqmFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _sqmController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Sqm',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _reviewFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _reviewController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Review',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _descriptionFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _descriptionController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Description',
                      ),
                      textFild(
                        enabled: true,
                        focusNode: _ownerNameFocusNode,
                        textInputAction: TextInputAction.done,
                        controller: _ownerNameController,
                        image: 'house-key-icon.svg',
                        hintTxt: 'Owner Name',
                      ),
                      SpaceVH(height: 25.0),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Mainbutton(
                              onTap: _uploadImage,
                              text: 'Post your real estate',
                              image: 'house-key-icon.png',
                              btnColor: blueButton,
                            ),
                            SpaceVH(height: 47.5),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        ));
  }

  _uploadImage() async {
    setState(() {
      _isloading = true;
    });
    var uniqueKey = firestoreRef.collection(collectionName).doc();
    String uploadfileName =
        DateTime.now().millisecondsSinceEpoch.toString() + '.jpg';
    Reference reference =
        storageRef.ref().child(collectionName).child(uploadfileName);
    UploadTask uploadTask = reference.putFile(File(imagePath!.path));

    uploadTask.snapshotEvents.listen((event) {
      print(event.bytesTransferred.toString() +
          "\t" +
          event.totalBytes.toString());
    });

    await uploadTask.whenComplete(() async {
      var uploadPath = await uploadTask.snapshot.ref.getDownloadURL();

      if (uploadPath.isNotEmpty) {
        firestoreRef.collection(collectionName).doc(uniqueKey.id).set({
          "label": _label,
          "name": _name,
          "price": _price,
          "location": _location,
          "sqm": _sqm,
          "review": _review,
          "description": _description,
          "owner name": _ownerName,
          "front image": uploadPath
        }).then((value) => _showMessage("real estate posted !"));
      } else {
        _showMessage("Something Went wrong");
      }
      setState(() {
        _isloading = false;
        imageName = "";
        _labelController.text = "";
        _nameController.text = "";
        _priceController.text = "";
        _locationController.text = "";
        _sqmController.text = "";
        _reviewController.text = "";
        _descriptionController.text = "";
      });
    });
  }

  _showMessage(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 3),
    ));
  }

  imagePicker() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imagePath = image;
        imageName = image.name.toString();
      });
    }
  }
}
