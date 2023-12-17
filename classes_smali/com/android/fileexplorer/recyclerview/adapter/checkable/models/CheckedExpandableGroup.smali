.class public Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
.source "CheckedExpandableGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCheckStatus:I

.field private mCheckedChildren:Landroid/util/SparseBooleanArray;

.field private mCheckedItemCount:I

.field private mDefault:Z


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;-><init>(ILjava/util/List;)V

    .line 4
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 9
    sget-boolean v1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCountExcludeAd()I

    .line 16
    move-result v1

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 21
    move-result v1

    .line 22
    :goto_15
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 24
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    .line 26
    return-void
.end method

.method public checkChild(IZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, p2, :cond_e

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    if-eqz v0, :cond_23

    .line 18
    if-eqz p2, :cond_19

    .line 20
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 22
    add-int/2addr v0, v2

    .line 23
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 28
    sub-int/2addr v0, v2

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 31
    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 36
    :cond_23
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 41
    move-result p2

    .line 42
    if-ne p1, p2, :cond_2e

    .line 44
    iput v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 46
    goto :goto_38

    .line 47
    :cond_2e
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 49
    if-nez p1, :cond_35

    .line 51
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 57
    :goto_38
    return-void
.end method

.method public clearSelections()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    .line 13
    return-void
.end method

.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    .line 3
    return v0
.end method

.method public getCheckedStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    .line 3
    return v0
.end method

.method public isChildChecked(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method
