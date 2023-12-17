.class public interface abstract Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
.super Ljava/lang/Object;
.source "BaseFileContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract dismissToastView()V
.end method

.method public abstract finishPullRefresh()V
.end method

.method public abstract initUI(Lcom/android/fileexplorer/model/StorageInfo;ILjava/lang/String;)V
.end method

.method public abstract showDisconnectStorage()V
.end method

.method public abstract showEmpty(ZI)V
.end method

.method public abstract showInvalidStorage()V
.end method

.method public abstract showToast(I)V
.end method

.method public abstract switchViewMode(I)V
.end method

.method public abstract updateFiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation
.end method
