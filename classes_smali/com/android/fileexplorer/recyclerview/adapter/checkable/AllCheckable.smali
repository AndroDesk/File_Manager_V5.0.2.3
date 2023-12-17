.class public interface abstract Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;
.super Ljava/lang/Object;
.source "AllCheckable.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract checkAll()V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getCheckedItemCount()I
.end method

.method public abstract getCheckedItems()Ljava/util/List;
.end method

.method public abstract isAllItemsChecked()Z
.end method

.method public abstract isGroupAllItemsChecked(I)Z
.end method

.method public abstract toggleCheckAll()V
.end method

.method public abstract toggleGroupCheckAll(I)V
.end method
