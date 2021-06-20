///Unknown error or an error from a different error domain.
const String UNKNOWN = 'unknown';
const String ERROR_UNKNOWN = 'error-unknown';

////////////////// FirebaseAuthException.Code//////////////////////////
/// Thrown if there already exists an account with the given email address.
const String EMAIL_ALREADY_IN_USE = 'email-already-in-use';

/// Thrown if the email address is not valid.
const String INVALID_EMAIL = 'invalid-email';

/// Thrown if the password is not strong enough.
const String WEAK_PASSWORD = 'weak-password';

/// Thrown if the user corresponding to the given email has been disabled.
const String USER_DISABLED = 'user-disabled';

/// Thrown if there is no user corresponding to the given email.
const String USER_NOT_FOUND = 'user-not-found';

/// Thrown if the password is invalid for the given email, or the account corresponding to the email does not have a password set.
const String WRONG_PASSWORD = 'wrong-password';

/// Thrown if the verification code of the credential is not valid.
const String INVALID_VERIFICATION_CODE = 'invalid-verification-code';

/// Thrown if the verification ID of the credential is not valid.
const String INVALID_VERIFICATION_ID = 'invalid-verification-id';

/// Thrown if the action code has expired.
const String EXPIRED_ACTION_CODE = 'expired-action-code';

/// Thrown if the action code is invalid. This can happen if the code is malformed or has already been used.
const String INVALID_ACTION_CODE = 'invalid-action-code';

/// Thrown if email/password accounts are not enabled. Enable email/password accounts in the Firebase Console, under the Auth tab.
const String OPERATION_NOT_ALLOWED = 'operation-not-allowed';

/// Thrown if the user's last sign-in time does not meet the security threshold.
/// Use User.reauthenticateWithCredential to resolve. This does not apply if the user is anonymous.
const String REQUIRES_RECENT_LOGIN = 'requires-recent-login';

/// Thrown when invalid credential is supplied for Authentication
const String INVALID_CREDENTIAL = 'invalid-credential';

/// Thrown when Firebase server receives
/// too many request from a device within a certain range of time
const String TOO_MANY_REQUESTS = 'too-many-requests';

/// Thrown when a user tries to sign in a to a provider (such as Google) with an email that already exists
/// for another Firebase user's provider (such as Facebook).
///
/// OR
///
/// Thrown when this credential is already associated with a different user account.
const String ACCOUNT_EXISTS_WITH_DIFFERENT_CRED =
    'account-exists-with-different-credential';

/// Thrown if the account corresponding to the credential already exists among your users,
/// or is already linked to a Firebase User. For example, this error could be thrown
/// if you are upgrading an anonymous user to a Google user by linking a Google credential
/// to it and the Google credential used is already associated with an existing Firebase Google user.
/// The fields `email`, `phoneNumber`, and `credential` (AuthCredential) may be provided, depending on the type of credential.
/// You can recover from this error by signing in with `credential` directly via signInWithCredential.
const String CRED_ALREADY_IN_USE = 'credential-already-in-use';

/// Thrown if the provider has already been linked to the user.
///
/// This error is thrown even if this is not the same provider's account that is currently linked to the user.
const String PROVIDER_ALREADY_LINKED = 'provider-already-linked';

////////////////// FirebaseFirestoreException.Code//////////////////////////
///The operation was aborted, typically due to a concurrency issue like transaction aborts, etc.
const String ABORTED = 'aborted';

///Some document that we attempted to create already exists.
const String ALREADY_EXISTS = 'already-exists';

///The operation was cancelled (typically by the caller).
const String CANCELLED = 'cancelled';

///Unrecoverable data loss or corruption.
const String DATA_LOSS = 'data-loss';

///Deadline expired before operation could complete.
///For operations that change the state of the system, this error may be returned even
///if the operation has completed successfully. For example, a successful response from
///a server could have been delayed long enough for the deadline to expire.
const String DEADLINE_EXCEEDED = 'deadline-exceeded';

///Operation was rejected because the system is not in a state required for the operation's execution.
const String FAILED_PRECONDITION = 'failed-precondition';

///Internal errors. Means some invariants expected by underlying system has been broken.
///If you see one of these errors, something is very broken.
const String INTERNAL = 'internal';

///Client specified an invalid argument.
///Note that this differs from FAILED_PRECONDITION.
///INVALID_ARGUMENT indicates arguments that are problematic
///regardless of the state of the system (e.g., an invalid field name).
const String INVALID_ARGUMENT = 'invalid-argument';

///Some requested document was not found.
const String NOT_FOUND = 'not-found';

///The operation completed successfully. FirebaseFirestoreException will never have a status of OK.
const String OK = 'ok';

///Operation was attempted past the valid range.
const String OUT_OF_RANGE = 'out-of-range';

///The caller does not have permission to execute the specified operation.
const String PERMISSION_DENIED = 'permission-denied';

///Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space.
const String RESOURCE_EXHAUSTED = 'resource-exhausted';

///The request does not have valid authentication credentials for the operation.
const String UNAUTHENTICATED = 'unauthenticated';

///The service is currently unavailable.
///This is a most likely a transient condition and
///may be corrected by retrying with a backoff.
const String UNAVAILABLE = 'unavailable';

///Operation is not implemented or not supported/enabled.
const String UNIMPLEMENTED = 'unimplemented';

////////////////// FirebaseAuthException.Code//////////////////////////
const String BUCKET_NOT_FOUND = 'bucket-not-found';

const String INVALID_CHECKSUM = 'invalid-checksum';

const String NOT_AUTHENTICATED = 'not-authenticated';

const String NOT_AUTHORIZED = 'not-authorized';

const String OBJECT_NOT_FOUND = 'object-not-found';

const String PROJECT_NOT_FOUND = 'project-not-found';

const String QUOTA_EXCEEDED = 'quota-exceeded';

const String RETRY_LIMIT_EXCEEDED = 'retry-limit-exceeded';
