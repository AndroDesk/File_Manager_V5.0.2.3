.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;
.super Ljava/lang/Object;
.source "CrashlyticsFileMarker.java"


# instance fields
.field private final fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

.field private final markerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 8
    return-void
.end method

.method private getMarkerFile()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 5
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public create()Z
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 8
    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_21

    .line 10
    :catch_9
    move-exception v0

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Error creating marker: "

    .line 17
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_21
    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public remove()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method
