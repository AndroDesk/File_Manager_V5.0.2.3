.class final Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;
.super Ljava/lang/Object;
.source "MissingNativeComponent.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingNativeSessionFileProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAppFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBinaryImagesFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadataFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinidumpFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOsFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
