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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;-><init>(ILjava/util/List;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    sget-boolean v1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCountExcludeAd()I

    move-result v1

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v1

    :goto_15
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    return-void
.end method

.method public checkChild(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    if-eqz v0, :cond_23

    if-eqz p2, :cond_19

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    goto :goto_1e

    :cond_19
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_23
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p2

    if-ne p1, p2, :cond_2e

    iput v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    goto :goto_38

    :cond_2e
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    if-nez p1, :cond_35

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    goto :goto_38

    :cond_35
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    :goto_38
    return-void
.end method

.method public clearSelections()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    return-void
.end method

.method public getCheckedItemCount()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedStatus()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckStatus:I

    return v0
.end method

.method public isChildChecked(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mCheckedChildren:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->mDefault:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method
