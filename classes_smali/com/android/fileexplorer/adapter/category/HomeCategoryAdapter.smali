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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;Landroid/view/View$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

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

    iget-boolean p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsExpanding:Z

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f8ccccd  # 1.1f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method private saveCategoryOrder()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_26

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->viewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {v1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/fileexplorer/adapter/category/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, v0}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getDragFlags()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isItemMoved()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->onBindViewHolder(Lcom/android/fileexplorer/model/category/FileCategoryItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/model/category/FileCategoryItem;I)V
    .registers 5

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

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Z)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    return-object v0
.end method

.method public onMove(II)V
    .registers 6

    if-ge p1, p2, :cond_e

    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_1b

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_3

    :cond_e
    move v0, p1

    :goto_f
    if-le v0, p2, :cond_1b

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1b
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->saveCategoryOrder()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

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

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setExpanding(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsExpanding:Z

    return-void
.end method

.method public setItemMove(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mIsItemMoved:Z

    return-void
.end method

.method public setItemTouchHelper(Landroidx/recyclerview/widget/f;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    return-void
.end method
