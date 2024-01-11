class Chat {
  final String name, lastMessage, image, time;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
  });
}

List chatsData = [
  Chat(
    name: "Laurent",
    lastMessage: "How about meeting tomorrow?",
    image: "assets/images/img_2.png",
    time: "20:18",
  ),
  Chat(
    name: "Tracy",
    lastMessage: "I love this idea, it's great!",
    image: "assets/images/img_5.png",
    time: "19:22",
  ),
  Chat(
    name: "Claire",
    lastMessage: "I wasn't aware of that. Let me check",
    image: "assets/images/img_6.png",
    time: "14:34",
  ),
  Chat(
    name: "Joe",
    lastMessage: "Flutter just released 1.0 officially. Should I go for it?",
    image: "assets/images/img_1.png",
    time: "11:05",
  ),
  Chat(
    name: "Mark",
    lastMessage: "It totally makes sense to get some extra day-off.",
    image: "assets/images/img_3.png",
    time: "09:46",
  ),
  Chat(
    name: "Williams",
    lastMessage: "It has been re-scheduled to next Saturday 7.30pm",
    image: "assets/images/img_4.png",
    time: "08:15",
  ),
];