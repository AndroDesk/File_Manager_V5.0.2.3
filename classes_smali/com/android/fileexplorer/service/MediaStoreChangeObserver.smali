.class public Lcom/android/fileexplorer/service/MediaStoreChangeObserver;
.super Landroid/database/ContentObserver;
.source "MediaStoreChangeObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaStoreChangeObserver"


# instance fields
.field private isStoreChangeNotDeal:Z

.field private isUserVisible:Z

.field private mCurrentObserverUri:Ljava/lang/String;

.field private mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;-><init>(Lcom/android/fileexplorer/service/MediaStoreChangeObserver;)V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    .line 11
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public isStoreChangeNotDeal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    .line 3
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mCurrentObserverUri:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isUserVisible:Z

    .line 19
    if-nez p1, :cond_18

    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    .line 24
    return-void

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    .line 28
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mCurrentObserverUri:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    .line 36
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    .line 41
    const-wide/16 v0, 0x1f4

    .line 43
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 46
    return-void
.end method

.method public setStoreChangeNotDeal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    .line 3
    return-void
.end method

.method public setUserVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isUserVisible:Z

    .line 3
    return-void
.end method
