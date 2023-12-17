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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Ljava/util/List;Ljava/util/List;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->notifySearchResult(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private init()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileViewHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;

    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;-><init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

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

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;->onSearchDone(Ljava/util/List;)V

    goto :goto_a

    :cond_1a
    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quitSearch()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/util/NetworkUtils;->isWifiNetwork()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->init()V

    :cond_10
    if-eqz p1, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mDevices:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->notifySearchResult(Ljava/util/List;Ljava/util/List;Z)V

    :cond_21
    iget-boolean p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    if-nez p1, :cond_32

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mIsSearching:Z

    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    if-gtz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method
