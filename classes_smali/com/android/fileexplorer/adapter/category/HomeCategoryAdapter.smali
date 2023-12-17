.class public Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeCategoryAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/ItemTouchAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/model/category/FileCategoryItem;",
        ">;",
        "Lcom/android/fileexplorer/fragment/ItemTouchAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mInEditMode:Ljava/lang/Boolean;

.field private mIsExpanding:Z

.field private mIsItemMoved:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mTouchHelper:Landroidx/recyclerview/widget/f;

.field private viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mContext:Landroid/content/Context;

    .line 17
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->lambda$setItemOnLongClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setItemOnLongClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z
    .registers 5

    .line 1
    iget-boolean p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsExpanding:Z

    .line 3
    if-nez p2, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    .line 9
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object p1

    .line 18
    const p2, 0x3f8ccccd  # 1.1f

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 28
    move-result-object p1

    .line 29
    const/high16 p2, 0x3f800000  # 1.0f

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, 0x12c

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method private saveCategoryOrder()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_29

    .line 15
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 23
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v3, v1, -0x1

    .line 32
    if-eq v2, v3, :cond_26

    .line 34
    const/16 v3, 0x2c

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_c

    .line 42
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 51
    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 57
    invoke-virtual {v1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method private setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    .line 1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    new-instance p2, Lcom/android/fileexplorer/adapter/category/a;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p2, p0, p3, v0}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$b0;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    return-void
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getDragFlags()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isItemMoved()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    .line 3
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->onBindViewHolder(Lcom/android/fileexplorer/model/category/FileCategoryItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/model/category/FileCategoryItem;I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Z)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    return-object v0
.end method

.method public onMove(II)V
    .registers 6

    .line 1
    if-ge p1, p2, :cond_e

    .line 3
    move v0, p1

    .line 4
    :goto_3
    if-ge v0, p2, :cond_1b

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 10
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 13
    move v0, v2

    .line 14
    goto :goto_3

    .line 15
    :cond_e
    move v0, p1

    .line 16
    :goto_f
    if-le v0, p2, :cond_1b

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 20
    add-int/lit8 v2, v0, -0x1

    .line 22
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_f

    .line 28
    :cond_1b
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->saveCategoryOrder()V

    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    .line 37
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 9
    :cond_8
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    return-void
.end method

.method public setExpanding(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsExpanding:Z

    .line 3
    return-void
.end method

.method public setItemMove(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    .line 3
    return-void
.end method

.method public setItemTouchHelper(Landroidx/recyclerview/widget/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    .line 3
    return-void
.end method
