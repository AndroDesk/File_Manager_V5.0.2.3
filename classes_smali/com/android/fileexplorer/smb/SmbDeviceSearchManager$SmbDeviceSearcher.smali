.class Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;
.super Ljava/lang/Object;
.source "SmbDeviceSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmbDeviceSearcher"
.end annotation


# instance fields
.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsSearching:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$1;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Ljava/util/List;Ljava/util/List;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->notifySearchResult(Ljava/util/List;Ljava/util/List;Z)V

    .line 4
    return-void
.end method

.method private init()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "FileViewHandler"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    new-instance v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;-><init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private notifySearchResult(Ljava/util/List;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    .line 6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 11
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_1a

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;

    .line 23
    invoke-interface {p3, p1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;->onSearchDone(Ljava/util/List;)V

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 14
    :cond_d
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized quitSearch()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 9
    :cond_8
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_e

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 15
    :cond_e
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/util/NetworkUtils;->isWifiNetwork()Z

    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    .line 6
    if-nez v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

    .line 12
    if-nez v0, :cond_10

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->init()V

    .line 17
    :cond_10
    if-eqz p1, :cond_21

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    .line 29
    iget-boolean v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->notifySearchResult(Ljava/util/List;Ljava/util/List;Z)V

    .line 34
    :cond_21
    iget-boolean p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    .line 36
    if-nez p1, :cond_32

    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;

    .line 45
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;-><init>(Landroid/os/Handler;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_34

    .line 51
    :cond_32
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public declared-synchronized unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)Z
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 13
    if-gtz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    monitor-exit p0

    .line 19
    return p1

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method
