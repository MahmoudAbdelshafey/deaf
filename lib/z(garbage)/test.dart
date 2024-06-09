// FutureBuilder(
// future: CategoryApiService.getCategory(),
// builder: (context, snapshot) {
//
// print(snapshot.connectionState);
// if (snapshot.connectionState == ConnectionState.waiting) {
// return const Center(child: CircularProgressIndicator());
// } else if (snapshot.connectionState == ConnectionState.done) {
// if (snapshot.hasError) {
// return const Center(child: const Text('Error'));
// } else if (snapshot.hasData)