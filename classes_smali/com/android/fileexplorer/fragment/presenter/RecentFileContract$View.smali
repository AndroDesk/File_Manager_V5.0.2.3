.class public interface abstract Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;
.super Ljava/lang/Object;
.source "RecentFileContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/presenter/RecentFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
.end method

.method public abstract displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V
.end method

.method public abstract finishPullRefresh(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract switchViewMode()V
.end method

.method public abstract updateFiles(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;Z)V"
        }
    .end annotation
.end method
