const int msPerSecond = 1000;
const int msPerMinute = 60 * msPerSecond;
const int msPerHour = 60 * msPerMinute;
const int msPerDay = 24 * msPerHour;

typedef NowEpochMs = int Function();

int systemNowEpochMs() => DateTime.now().millisecondsSinceEpoch;
