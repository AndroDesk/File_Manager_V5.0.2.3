.class public Lcom/google/firebase/FirebaseError;
.super Ljava/lang/Object;
.source "FirebaseError.java"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_APP_NOT_AUTHORIZED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_CREDENTIAL_ALREADY_IN_USE:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_CUSTOM_TOKEN_MISMATCH:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_EMAIL_ALREADY_IN_USE:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INTERNAL_ERROR:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_API_KEY:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_CREDENTIAL:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_CUSTOM_TOKEN:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_EMAIL:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_USER_TOKEN:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_NETWORK_REQUEST_FAILED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_NO_SIGNED_IN_USER:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_NO_SUCH_PROVIDER:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_OPERATION_NOT_ALLOWED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_PROVIDER_ALREADY_LINKED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_REQUIRES_RECENT_LOGIN:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_TOO_MANY_REQUESTS:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_USER_DISABLED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_USER_MISMATCH:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_USER_NOT_FOUND:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_USER_TOKEN_EXPIRED:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_WEAK_PASSWORD:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ERROR_WRONG_PASSWORD:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x96fe2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL:I

    const v0, 0x96f12

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_APP_NOT_AUTHORIZED:I

    const v0, 0x96f17

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_CREDENTIAL_ALREADY_IN_USE:I

    const v0, 0x96ffc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_CUSTOM_TOKEN_MISMATCH:I

    const v0, 0x96ff9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_EMAIL_ALREADY_IN_USE:I

    const v0, 0x969cd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INTERNAL_ERROR:I

    const v0, 0x96fe9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INVALID_API_KEY:I

    const v0, 0x96ffa

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INVALID_CREDENTIAL:I

    const v0, 0x96ffe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INVALID_CUSTOM_TOKEN:I

    const v0, 0x96fe6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INVALID_EMAIL:I

    const v0, 0x96fef

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_INVALID_USER_TOKEN:I

    const v0, 0x96fea

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_NETWORK_REQUEST_FAILED:I

    const v0, 0x969c1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_NO_SIGNED_IN_USER:I

    const v0, 0x96fee

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_NO_SUCH_PROVIDER:I

    const v0, 0x96ff8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_OPERATION_NOT_ALLOWED:I

    const v0, 0x96fe1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_PROVIDER_ALREADY_LINKED:I

    const v0, 0x96fe0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_REQUIRES_RECENT_LOGIN:I

    const v0, 0x96fe4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_TOO_MANY_REQUESTS:I

    const v0, 0x96ffb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_USER_DISABLED:I

    const v0, 0x96f16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_USER_MISMATCH:I

    const v0, 0x96fe5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_USER_NOT_FOUND:I

    const v0, 0x96feb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_USER_TOKEN_EXPIRED:I

    const v0, 0x96f14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_WEAK_PASSWORD:I

    const v0, 0x96fe7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/FirebaseError;->ERROR_WRONG_PASSWORD:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/firebase/FirebaseError;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/FirebaseError;->errorCode:I

    return v0
.end method
