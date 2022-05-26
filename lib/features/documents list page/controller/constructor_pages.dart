class ConstructorPages {
  String? titlePage;
  Status status;

ConstructorPages.toSign({this.titlePage, this.status = Status.toSign})
ConstructorPages.pending({this.titlePage, this.status = Status.pending})
ConstructorPages.available({this.titlePage, this.status = Status.available})
}
enum Status {toSign, pending, available}