.class public interface abstract Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$Presenter;
.super Ljava/lang/Object;
.source "BaseFileContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getCurrentPath()Ljava/lang/String;
.end method

.method public abstract getFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onItemClick(I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSortMethodChanged(IZ)V
.end method

.method public abstract onUpdateUI()V
.end method

.method public abstract onViewModeChanged(I)V
.end method
