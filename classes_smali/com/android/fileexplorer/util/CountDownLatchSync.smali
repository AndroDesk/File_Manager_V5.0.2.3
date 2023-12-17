.class public Lcom/android/fileexplorer/util/CountDownLatchSync;
.super Ljava/lang/Object;
.source "CountDownLatchSync.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    .line 6
    return-void
.end method

.method private checkValid()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    .line 3
    if-gtz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private countDown()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    .line 3
    if-lez v0, :cond_8

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    .line 9
    :cond_8
    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/CountDownLatchSync;->countDown()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/util/CountDownLatchSync;->checkValid()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_10
    return-void
.end method
