.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;
.super Ljava/lang/Object;
.source "MiuiPullRecyclerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingTask"
.end annotation


# instance fields
.field private mRemovePrivate:Z

.field private mRemovePullLoad:Z

.field private mRemovePullRefresh:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullRefresh:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullLoad:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePrivate:Z

    .line 11
    return-void
.end method


# virtual methods
.method public isRemovePrivate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePrivate:Z

    .line 3
    return v0
.end method

.method public isRemovePullLoad()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullLoad:Z

    .line 3
    return v0
.end method

.method public isRemovePullRefresh()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullRefresh:Z

    .line 3
    return v0
.end method

.method public setRemovePrivate(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePrivate:Z

    .line 3
    return-void
.end method

.method public setRemovePullLoad(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullLoad:Z

    .line 3
    return-void
.end method

.method public setRemovePullRefresh(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;->mRemovePullRefresh:Z

    .line 3
    return-void
.end method
