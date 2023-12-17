.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final GOOGLE:Ljava/lang/String; = "com.google"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final zzbs:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "com.google"

    .line 3
    const-string v1, "com.google.work"

    .line 5
    const-string v2, "cn.google"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->zzbs:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
