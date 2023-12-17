.class public abstract Lcom/android/fileexplorer/fragment/category/SortableCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;
.source "SortableCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
        "TC;TG;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method
