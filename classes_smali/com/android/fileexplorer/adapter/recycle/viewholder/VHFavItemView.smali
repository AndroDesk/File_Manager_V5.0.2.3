.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;
.source "VHFavItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem<",
        "Lcom/android/fileexplorer/model/FavoriteItem;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method


# virtual methods
.method public getFileInfo(Lcom/android/fileexplorer/model/FavoriteItem;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_5
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FavoriteItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;->getFileInfo(Lcom/android/fileexplorer/model/FavoriteItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1
.end method
