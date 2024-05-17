import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';

class ProductDisplayScreen extends StatelessWidget {
  const ProductDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: true,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: size.height / 3.5,
              // color: Colors.blue,
              width: size.width / 1.2,
              child: const Image(
                image: NetworkImage(
                    "https://m.media-amazon.com/images/I/71-Fx3Vfq5L._SX679_.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          kheight20,
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Azuz TUF Gaming",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "₹45000 ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  TextSpan(
                      text: "-10%",
                      style: TextStyle(color: Colors.green, fontSize: 28)),
                ])),
                // Text("₹45000",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                Divider(),
                secondRow(txt: "Size", val: "512gb"),
                secondRow(txt: "Category", val: "Gaming"),
                secondRow(txt: "Stock", val: "In stock"),
                
               divider,
                const Text(
                  "Specification",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                    "Intel Core i5-11400H 11th Gen, 15.6-inch (39.62 cm) FHD 144Hz, Gaming Laptop (16GB/512GB SSD/4GB NVIDIA GeForce RTX 2050/Win 11/ RGB Backlit KB/Black/2.30 kg), FX506HF-HN025W",
                    style: TextStyle(color: black)),
                // Text("Description:",style: TextStyle(fontSize: 20),),

                divider,
                Text(
                  "Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                // Text("Description:",style: TextStyle(fontSize: 20),),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "ASUS TUF Gaming F15 : ",
                      style: TextStyle(
                          color: black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text:
                          "Intel Core i5-11400H 11th Gen, 15.6-inch (39.62 cm) FHD 144Hz, Gaming Laptop (16GB/512GB SSD/4GB NVIDIA GeForce RTX 2050/Win 11/ RGB Backlit KB/Black/2.30 kg), FX506HF-HN025W",
                      style: TextStyle(color: black))
                ])),
                // Divider(),

                // kheight10,
                // Container(
                //   width: size.width,
                //   height: size.height /7,
                //   decoration: BoxDecoration(border: Border.all()),
                //   child: Text("•"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row secondRow({required String txt, required String val}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          val,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
