class Message {
  final int id;
  final String text;
  final bool received;
  final String timeStamp;

  Message(
      {required this.id,
      required this.text,
      required this.received,
      required this.timeStamp});
}

List<Message> messages = [
  Message(
      id: 0,
      received: false,
      text: " Hi Ben, it's great to finally meet you in person.",
      timeStamp: '4:30 PM'),
  Message(
      id: 1,
      received: true,
      text:
          "Yes, same here Alex. I've heard a lot about your company and the work you do",
      timeStamp: '4:31 PM'),
  Message(
      id: 2,
      received: false,
      text:
          "Thank you. Likewise, I've been following your company's progress and I'm impressed with your growth.",
      timeStamp: '4:32 PM'),
  Message(
      id: 3,
      received: true,
      text:
          "Thanks, we've been working hard to expand our reach. So, what brings you here today?",
      timeStamp: '4:33 PM'),
  Message(
      id: 4,
      received: false,
      text:
          "I wanted to discuss the possibility of a collaboration between our two companies. I think there are some areas where we can work together to create something truly innovative.",
      timeStamp: '4:33 PM'),
  Message(
      id: 5,
      received: true,
      text:
          " I agree, I've been thinking the same thing. Can you tell me more about your vision?",
      timeStamp: '4:33 PM'),
  Message(
      id: 6,
      received: false,
      text:
          "Sure. I think we could combine our expertise in software development and data analysis to create a new product that would be highly valuable to our customers. We could each bring our own strengths to the table and work together to create something truly unique.",
      timeStamp: '4:33 PM'),
];
