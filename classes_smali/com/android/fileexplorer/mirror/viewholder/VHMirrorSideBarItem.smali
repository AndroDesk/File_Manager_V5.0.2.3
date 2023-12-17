.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorSideBarItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHMirrorSideBarItem"


# instance fields
.field private mIsHover:Z


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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFolder()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;IZZ)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;IZZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p3, p2, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;

    if-eqz p3, :cond_12

    check-cast p2, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V

    return-void

    :cond_12
    instance-of p3, p2, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;

    if-eqz p3, :cond_1b

    check-cast p2, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;IZZ)V

    return-void
.end method

.method public processHover(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->processHover(IZ)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;->mIsHover:Z

    if-eq p2, p1, :cond_1f

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->setHover(Z)V

    :cond_12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->setHover(Z)V

    :cond_1d
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;->mIsHover:Z

    :cond_1f
    return-void
.end method
