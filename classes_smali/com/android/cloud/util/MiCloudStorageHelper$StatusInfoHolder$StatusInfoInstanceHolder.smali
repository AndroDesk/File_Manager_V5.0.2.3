.class Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder$StatusInfoInstanceHolder;
.super Ljava/lang/Object;
.source "MiCloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusInfoInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;-><init>(Lcom/android/cloud/util/MiCloudStorageHelper$1;)V

    .line 7
    sput-object v0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder$StatusInfoInstanceHolder;->INSTANCE:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder$StatusInfoInstanceHolder;->INSTANCE:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 3
    return-object v0
.end method
