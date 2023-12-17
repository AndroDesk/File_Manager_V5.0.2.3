.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;
.super Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;
.source "VHMirrorFavItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem<",
        "Lcom/android/fileexplorer/model/FavoriteItem;",
        "TV;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFileInfo(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FavoriteItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;->getFileInfo(Lcom/android/fileexplorer/model/FavoriteItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getFileInfo(Lcom/android/fileexplorer/model/FavoriteItem;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_5
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->getFileInfo(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1
.end method
