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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/DocSnapshotManager;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    return-object v0

    :cond_7
    const-class v0, Lcom/android/fileexplorer/model/DocSnapshotManager;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    if-nez v1, :cond_15

    new-instance v1, Lcom/android/fileexplorer/model/DocSnapshotManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/DocSnapshotManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lcom/android/fileexplorer/model/DocSnapshotManager;->mSnapshotManager:Lcom/android/fileexplorer/model/DocSnapshotManager;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public release(Lcom/bumptech/glide/Glide;)V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/DocSnapshotManager$1;-><init>(Lcom/android/fileexplorer/model/DocSnapshotManager;Lcom/bumptech/glide/Glide;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapshot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocSnapshotManager"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2d

    const/4 p1, 0x0

    return-object p1

    :cond_2d
    const/4 v3, 0x1

    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lx1/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lx1/b;

    invoke-direct {v3}, Lx1/b;-><init>()V

    invoke-virtual {v3, v2}, Lx1/b;->setFileUri(Landroid/net/Uri;)Lx1/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lx1/b;->setInputPathStr(Ljava/lang/String;)Lx1/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lx1/b;->setMimeType(Ljava/lang/String;)Lx1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lx1/b;->setResolution(Ljava/lang/String;)Lx1/b;

    move-result-object p1

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lx1/a;->c(Lx1/b;)Lcom/bumptech/glide/load/Key;

    move-result-object p1

    return-object p1
.end method
