.class public interface abstract Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
.super Ljava/lang/Object;
.source "NativeSessionFileProvider.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getAppFile()Ljava/io/File;
.end method

.method public abstract getBinaryImagesFile()Ljava/io/File;
.end method

.method public abstract getDeviceFile()Ljava/io/File;
.end method

.method public abstract getMetadataFile()Ljava/io/File;
.end method

.method public abstract getMinidumpFile()Ljava/io/File;
.end method

.method public abstract getOsFile()Ljava/io/File;
.end method

.method public abstract getSessionFile()Ljava/io/File;
.end method