.class Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainIdleHandler"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2a

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_23

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/content/Context;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->with(Landroid/content/Context;)Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->preLoadLayout(Ljava/lang/ref/WeakReference;)V

    .line 36
    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    return v0
.end method
