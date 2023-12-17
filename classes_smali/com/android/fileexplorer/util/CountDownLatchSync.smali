.class public Lcom/android/fileexplorer/util/CountDownLatchSync;
.super Ljava/lang/Object;
.source "CountDownLatchSync.java"


# instance fields
.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    return-void
.end method

.method private checkValid()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private countDown()V
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/util/CountDownLatchSync;->mCount:I

    :cond_8
    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/util/CountDownLatchSync;->countDown()V

    invoke-direct {p0}, Lcom/android/fileexplorer/util/CountDownLatchSync;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method
