.class interface abstract Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;
.super Ljava/lang/Object;
.source "NativeSessionFile.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
.end method

.method public abstract getReportsEndpointFilename()Ljava/lang/String;
.end method

.method public abstract getStream()Ljava/io/InputStream;
.end method
