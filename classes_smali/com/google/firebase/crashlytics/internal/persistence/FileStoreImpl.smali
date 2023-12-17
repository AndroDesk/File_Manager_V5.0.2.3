.class public Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;
.super Ljava/lang/Object;
.source "FileStoreImpl.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/persistence/FileStore;


# static fields
.field public static final FILES_PATH:Ljava/lang/String; = ".com.google.firebase.crashlytics"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public getFilesDir()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, ".com.google.firebase.crashlytics"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->prepare(Ljava/io/File;)Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getFilesDirPath()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, ".com.google.firebase.crashlytics"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public isExternalStorageAvailable()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_17

    .line 13
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "External Storage is not mounted and/or writable\nHave you declared android.permission.WRITE_EXTERNAL_STORAGE in the manifest?"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_17
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public prepare(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_19

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_19

    .line 16
    :cond_f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "Couldn\'t create file"

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    :goto_19
    return-object p1

    .line 27
    :cond_1a
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Null File"

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 36
    :goto_23
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method
