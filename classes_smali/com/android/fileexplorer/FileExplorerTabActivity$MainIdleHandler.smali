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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->with(Landroid/content/Context;)Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->preLoadLayout(Ljava/lang/ref/WeakReference;)V

    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method
