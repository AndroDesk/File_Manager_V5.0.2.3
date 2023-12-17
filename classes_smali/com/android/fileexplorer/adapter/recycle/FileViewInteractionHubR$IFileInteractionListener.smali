.class public interface abstract Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
.super Ljava/lang/Object;
.source "FileViewInteractionHubR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileInteractionListener"
.end annotation


# virtual methods
.method public abstract getItem(I)Lcom/android/fileexplorer/model/FileInfo;
.end method

.method public abstract getList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNavigationBar()Landroid/view/View;
.end method

.method public abstract getViewById(I)Landroid/view/View;
.end method

.method public abstract sortCurrentList()V
.end method
