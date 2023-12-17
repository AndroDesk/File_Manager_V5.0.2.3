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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;-><init>(Lcom/android/fileexplorer/service/MediaStoreChangeObserver;)V

    iput-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isStoreChangeNotDeal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mCurrentObserverUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    iget-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isUserVisible:Z

    if-nez p1, :cond_18

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    return-void

    :cond_18
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mCurrentObserverUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->mRunnableGetAllFilesListAsync:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setStoreChangeNotDeal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal:Z

    return-void
.end method

.method public setUserVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isUserVisible:Z

    return-void
.end method
