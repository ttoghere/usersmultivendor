import 'package:flutter/material.dart';

import 'package:usersmultivendor/models/sellers.dart';

class InfoDesignWidget extends StatefulWidget {
  Sellers? model;
  BuildContext? context;
  InfoDesignWidget({
    Key? key,
    this.model,
    this.context,
  }) : super(key: key);

  @override
  State<InfoDesignWidget> createState() => _InfoDesignWidgetState();
}

class _InfoDesignWidgetState extends State<InfoDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Divider(
                height: 4,
                thickness: 3,
                color: Colors.white,
              ),
              Image.network(
                widget.model!.sellerAvatarUrl!,
                height: 210,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.model!.sellerName!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Signatra",
                ),
              ),
              Text(
                widget.model!.sellerEmail!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Signatra",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
