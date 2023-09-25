import 'package:flutter/material.dart';
import 'package:social_posts_provider/post_model.dart';

class PostWidget extends StatefulWidget{
  PostModel postModel;
  Function function;
  PostWidget(this.postModel, this.function);

  @override
  State<PostWidget> createState(){
    return _PostWidgetState();
  }
}
class _PostWidgetState extends State<PostWidget>{
  toggleIsLike(){
    widget.postModel.isLiked = !(widget.postModel.isLiked);
    widget.function();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color:Colors.green , width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: 
      Column(
        children: [
          Row(
            children: [
              // User Image
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.network(widget.postModel.user?.imageUrl ?? '' , errorBuilder: (context, error, stackTrace){
                    return const Icon(Icons.image);
                },
                fit: BoxFit.cover,
                )
              ),
              Text(widget.postModel.user?.name ?? 'user',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ) // User Name
            ],
          ),
          Image.network(widget.postModel.image ?? '' , errorBuilder:(context, error, stackTrace) {
            return Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              child: const Icon(Icons.image),
            );
          },
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    toggleIsLike();
                  },
                  child: Icon(
                    Icons.favorite, 
                    color: widget.postModel.isLiked == true ? Colors.red : Colors.green,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(widget.postModel.content ?? ''),
                ),
                TextField(
                  onChanged: (value) => {
                    print(value)
                  },
                  decoration: InputDecoration(
                    suffixIcon:InkWell(
                      onTap: (){
                        print('ok');
                      },
                      child: Icon(
                        Icons.send,
                        size: 35,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                    )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}