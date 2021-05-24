// extension ResponseX on Response {
//   U fold<U>({
//     U Function()? failure,
//     U Function()? success,
//     U Function()? orElse,
//   }) {
//     switch (this.runtimeType) {
//       case Failure:
//         return failure?.call();
//       case Success:
//         return success?.call();
//       default:
//         return orElse?.call();
//     }
//   }
// }
