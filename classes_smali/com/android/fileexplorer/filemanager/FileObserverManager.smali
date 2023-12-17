.class public Lcom/android/fileexplorer/filemanager/FileObserverManager;
.super Ljava/lang/Object;
.source "FileObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:I = 0x3e8

.field private static final MASK:I = 0x380

.field private static final TAG:Ljava/lang/String; = "FileObserverManager"


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 21
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 23
    const-string v3, "/tencent/MicroMsg/Download"

    .line 25
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const/16 v4, 0x380

    .line 31
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 39
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 41
    const-string v3, "/tencent/QQfile_recv"

    .line 43
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    .line 50
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 55
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 57
    const-string v3, "/Download/WeiXin"

    .line 59
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isAndroidQAndLater()Z

    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_6a

    .line 75
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 77
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 79
    const-string v3, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    .line 81
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 93
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 95
    const-string v3, "/Android/data/com.tencent.mm/MicroMsg/Download"

    .line 97
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v2, v0, v4}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Runnable;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->scanObserverFolder(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method private static scanObserverFolder(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x3e8

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method


# virtual methods
.method public startWatching()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 19
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public stopWatching()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 19
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager;->observers:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method
