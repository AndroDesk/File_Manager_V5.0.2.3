.class public interface abstract Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$Presenter;
.super Ljava/lang/Object;
.source "FileContract.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
.end method

.method public abstract onShowVolumePopup()V
.end method

.method public abstract onUserVisible()V
.end method

.method public abstract onVolumeSelect(I)V
.end method
