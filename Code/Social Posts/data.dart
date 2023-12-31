import 'package:social_posts_provider/post_model.dart';

List<PostModel> finalPostsData(){
  return postsData.map((e) => PostModel(e)).toList();
}
List<Map> postsData = [
  {
    "content" : "post content",
    "user" : {
      "image" : "https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=1024x1024&w=is&k=20&c=8mgK2Kq73o8DIjazvLmEGkhx2p_7P5r3mvpbIM6q5cA=",
      "name" : "jameel",
    },
    "isLiked" : true,
  },
    {
    "image" : "https://media.istockphoto.com/id/1352603244/photo/shot-of-an-unrecognizable-businessman-working-on-his-laptop-in-the-office.jpg?s=1024x1024&w=is&k=20&c=mTABddPRSU1r_hCBpknMjJbCIrJAicjjXGSU42rx-YI=",
    "content" : "post content",
    "user" : {
      "image" : "https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=1024x1024&w=is&k=20&c=8mgK2Kq73o8DIjazvLmEGkhx2p_7P5r3mvpbIM6q5cA=",
      "name" : "ahmed",
    },
    "isLiked" : false,
  },
    {
    "image" : "https://media.istockphoto.com/id/1352603244/photo/shot-of-an-unrecognizable-businessman-working-on-his-laptop-in-the-office.jpg?s=1024x1024&w=is&k=20&c=mTABddPRSU1r_hCBpknMjJbCIrJAicjjXGSU42rx-YI=",
    "content" : "post content",
    "user" : {
      "image" : "https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=1024x1024&w=is&k=20&c=8mgK2Kq73o8DIjazvLmEGkhx2p_7P5r3mvpbIM6q5cA=",
      "name" : "ali",
    },
    "isLiked" : true,
  },
];