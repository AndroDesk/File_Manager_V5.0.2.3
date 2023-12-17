.class public abstract Lcom/android/fileexplorer/adapter/recycle/listener/GroupClickListenerAdapter;
.super Ljava/lang/Object;
.source "GroupClickListenerAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckAllStatusChange(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 4

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 3

    return-void
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
