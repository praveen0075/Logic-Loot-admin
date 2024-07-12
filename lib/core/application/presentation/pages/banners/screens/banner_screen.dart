import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/banner/banner_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/banners/screens/add_banner.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BannerBloc>(context).add(const BannerEvent.getBanner());
    var size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: appcolorRose,
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const AddBannerScreen(),
                ));
          },
          child: const Icon(Icons.add),
        ),
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: "Banners")),
        drawer: const SideBarWidget(),
        body: BlocConsumer<BannerBloc, BannerState>(
          listener: (context, state) {
            if (state is DeleteBannerError) {
              snackBarWidget(
                  context: context, msg: state.errormsg, bgColor: Colors.red);
            }
          },
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetBannerSuccess) {
              return state.banners.isEmpty
                  ? const Center(
                      child: Text("No banner added"),
                    )
                  : ListView.builder(
                      itemCount: state.banners.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          elevation: 10,
                          child: SizedBox(
                            height: size.height / 5,
                            width: size.width,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onLongPress: () {
                                    showModalBottomSheet(
                                      backgroundColor:
                                          Color(Color.getAlphaFromOpacity(1)),
                                      context: context,
                                      builder: (context) => SafeArea(
                                          child: SizedBox(
                                        height: size.height / 8.5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              Card(
                                                elevation: 10,
                                                child: ListTile(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          AlertDialog(
                                                        title: const Text(
                                                          "Delete?",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        content: const Text(
                                                          "Do you want to delete this banner?",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                "Delete",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                              )),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                  "Cancel")),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  leading: const Icon(
                                                    Icons.delete,
                                                    color: Colors.red,
                                                  ),
                                                  title: const Text(
                                                    "Delete",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )),
                                    );
                                  },
                                  child: Image(
                                    image: NetworkImage(
                                        state.banners[index].imageurl),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    );
            } else if (state is ErrorSt) {
              return Center(
                child: Text(state.errormsg),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            }
          },
        ));
  }
}
