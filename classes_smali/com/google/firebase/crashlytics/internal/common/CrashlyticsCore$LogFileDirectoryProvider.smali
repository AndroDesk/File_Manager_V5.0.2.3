.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogFileDirectoryProvider"
.end annotation


# static fields
.field private static final LOG_FILES_DIR:Ljava/lang/String; = "log-files"


# instance fields
.field private final rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 6
    return-void
.end method


# virtual methods
.method public getLogFileDir()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 5
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "log-files"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_16

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_16
    return-object v0
.end method
