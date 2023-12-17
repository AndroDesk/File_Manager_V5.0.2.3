.class public Lcom/android/fileexplorer/model/DocSnapshotManager;
.super Ljava/lang/Object;
.source "DocSnapshotManager.java"


# static fields
.field private static final MI:Ljava/lang/String; = "mi"

.field public static final MIRROR_NORMAL_DOC_SIZE:Ljava/lang/String; = "204X300"

.field public static final MIRROR_PPT_SIZE:Ljava/lang/String; = "242X134"

.field public static final NORMAL_DOC_SIZE:Ljava/lang/String; = "186X264"

.field public static final NORMAL_LIST_DOC_SIZE:Ljava/lang/String; = "108X150"

.field public static final PPT_SIZE:Ljava/lang/String; = "264X168"

.field private static final TAG:Ljava/lang/String; = "DocSnapshotManager"

.field private static volatile mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/DocSnapshotManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 7
    return-object v0

    .line 8
    :cond_7
    const-class v0, Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 13
    if-nez v1, :cond_15

    .line 15
    new-instance v1, Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 17
    invoke-direct {v1}, Lcom/android/fileexplorer/model/DocSnapshotManager;-><init>()V

    .line 20
    sput-object v1, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 22
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 23
    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 25
    return-object v0

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method


# virtual methods
.method public release(Lcom/bumptech/glide/Glide;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/DocSnapshotManager$1;-><init>(Lcom/android/fileexplorer/model/DocSnapshotManager;Lcom/bumptech/glide/Glide;)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public snapshot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_21

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "not exists"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "DocSnapshotManager"

    .line 31
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_2d

    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1

    .line 46
    :cond_2d
    const/4 v3, 0x1

    .line 47
    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    .line 49
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v0}, Lx1/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    new-instance v3, Lx1/b;

    .line 73
    invoke-direct {v3}, Lx1/b;-><init>()V

    .line 76
    invoke-virtual {v3, v2}, Lx1/b;->setFileUri(Landroid/net/Uri;)Lx1/b;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, p1}, Lx1/b;->setInputPathStr(Ljava/lang/String;)Lx1/b;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Lx1/b;->setMimeType(Ljava/lang/String;)Lx1/b;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Lx1/b;->setResolution(Ljava/lang/String;)Lx1/b;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, p1}, Lx1/a;->c(Lx1/b;)Lcom/bumptech/glide/load/Key;

    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method
