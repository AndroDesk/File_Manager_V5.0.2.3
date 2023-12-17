.class public interface abstract Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;
.super Ljava/lang/Object;
.source "HomeFileContract.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract openDir(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract openFile(ILcom/android/fileexplorer/model/FileInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startFileExplorer(Ljava/lang/String;I)V
.end method

.method public abstract updateCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateStorageVolumes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;)V"
        }
    .end annotation
.end method
