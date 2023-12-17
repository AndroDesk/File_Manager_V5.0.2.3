.class public Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoreCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/model/category/BaseItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADDED_HEADER_COUNT:I

.field private static final ANIM_TIME:J = 0x154L

.field private static final HEADER_COUNT:I

.field private static final SPACE_TIME:J = 0x64L

.field public static final VIEW_TYPE_ADDED_FILE_CATEGORY:I

.field public static final VIEW_TYPE_COLUMN:I

.field public static final VIEW_TYPE_NOT_ADDED_FILE_CATEGORY:I

.field public static final mostAddedNum:I


# instance fields
.field private mAddedDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditModeChangeCallback:Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;

.field private mInEditMode:Ljava/lang/Boolean;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mNotAddedDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mTouchHelper:Landroidx/recyclerview/widget/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->ADDED_HEADER_COUNT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->HEADER_COUNT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->VIEW_TYPE_ADDED_FILE_CATEGORY:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->VIEW_TYPE_COLUMN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->VIEW_TYPE_NOT_ADDED_FILE_CATEGORY:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mostAddedNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->lambda$setItemOnLongClickListener$1(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mStartTime:J

    return-wide p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Landroidx/recyclerview/widget/f;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    return-object p0
.end method

.method private addMirrorView(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/widget/ImageView;
    .registers 10

    invoke-virtual {p3}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    invoke-virtual {p3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array p3, v4, [I

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p2, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aget v2, v5, v3

    aget v4, v5, v0

    aget p3, p3, v0

    sub-int/2addr v4, p3

    invoke-virtual {p2, v2, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static synthetic b(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->lambda$setItemOnClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V

    return-void
.end method

.method private getAddedCategoryCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getCategoryByPosition(I)Lcom/android/fileexplorer/model/category/FileCategoryEntity;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    return-object p1
.end method

.method private getNotAddedCategoryCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTranslateAnimator(FF)Landroid/view/animation/TranslateAnimation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move v4, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 p1, 0x154

    invoke-virtual {v9, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v9, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v9
.end method

.method private synthetic lambda$setItemOnClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->moveToNotAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V

    goto :goto_39

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_39

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_39

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->moveToAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V

    goto :goto_39

    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_39

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private synthetic lambda$setItemOnLongClickListener$1(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z
    .registers 6

    iget-object p4, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_e

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_e
    if-ne p2, v0, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_15
    return v0
.end method

.method private moveToAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182f00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->processItemRemoveAdd(Lcom/android/fileexplorer/model/category/BaseItem;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_34

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    return-void
.end method

.method private moveToNotAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182f9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_3b

    return-void

    :cond_3b
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    return-void
.end method

.method private processItemRemoveAdd(Lcom/android/fileexplorer/model/category/BaseItem;)I
    .registers 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1a

    const/4 p1, -0x1

    return p1

    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method private setItemOnClickListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 6

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/adapter/category/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/category/b;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v1, 0x7f032d50

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private startAnimation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FF)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->addMirrorView(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getTranslateAnimator(FF)Landroid/view/animation/TranslateAnimation;

    move-result-object p3

    const/4 p4, 0x4

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p4, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;

    invoke-direct {p4, p0, v0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public endEditMode(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f032cce

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_22

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    return-void
.end method

.method public getItemCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getItemViewType(I)I
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_16

    return v1

    :cond_16
    const/4 p1, 0x2

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public notifyHeadersChange()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->onBindViewHolder(Lcom/android/fileexplorer/model/category/BaseItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/model/category/BaseItem;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    goto :goto_37

    :cond_d
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getCategoryByPosition(I)Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/fileexplorer/model/category/BaseItem;->bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;ZI)V

    goto :goto_37

    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getCategoryByPosition(I)Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, p2, v0, v1}, Lcom/android/fileexplorer/model/category/BaseItem;->bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;ZI)V

    goto :goto_37

    :cond_29
    if-nez p2, :cond_30

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getAddedCategoryCount()I

    move-result v0

    goto :goto_34

    :cond_30
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getNotAddedCategoryCount()I

    move-result v0

    :goto_34
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/model/category/BaseItem;->bindView(II)V

    :goto_37
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/BaseItem;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/category/BaseItem;
    .registers 6

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_a

    const/4 v2, 0x2

    if-eq p2, v2, :cond_a

    return-object v0

    :cond_a
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->setType(I)V

    if-ne p2, v1, :cond_16

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V

    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnClickListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/model/category/BaseItem;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    return-object v0

    :cond_21
    invoke-static {p1}, Lcom/android/fileexplorer/model/category/ColumnItem;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/model/category/ColumnItem;

    move-result-object p1

    return-object p1
.end method

.method public onMove(II)V
    .registers 6

    if-ge p1, p2, :cond_11

    add-int/lit8 v0, p1, -0x1

    :goto_4
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_4

    :cond_11
    add-int/lit8 v0, p1, -0x1

    :goto_13
    add-int/lit8 v1, p2, -0x1

    if-le v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_21
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public setItemTouchHelper(Landroidx/recyclerview/widget/f;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    return-void
.end method

.method public setOnEditModeChangeCallBack(Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mEditModeChangeCallback:Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;

    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_25

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f032cce

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_22

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mEditModeChangeCallback:Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;->onModeChange(Ljava/lang/Boolean;)V

    :cond_30
    return-void
.end method
