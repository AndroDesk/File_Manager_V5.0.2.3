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
.field private static final ADDED_HEADER_COUNT:I = 0x1

.field private static final ANIM_TIME:J = 0x154L

.field private static final HEADER_COUNT:I = 0x2

.field private static final SPACE_TIME:J = 0x64L

.field public static final VIEW_TYPE_ADDED_FILE_CATEGORY:I = 0x1

.field public static final VIEW_TYPE_COLUMN:I = 0x0

.field public static final VIEW_TYPE_NOT_ADDED_FILE_CATEGORY:I = 0x2

.field public static final mostAddedNum:I = 0x4


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

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 14
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

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mStartTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mStartTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Landroidx/recyclerview/widget/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    .line 3
    return-object p0
.end method

.method private addMirrorView(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/widget/ImageView;
    .registers 10

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->destroyDrawingCache()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 8
    new-instance v1, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p3, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 32
    const/4 v4, 0x2

    .line 33
    new-array v5, v4, [I

    .line 35
    invoke-virtual {p3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 38
    new-array p3, v4, [I

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    move-result v4

    .line 49
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v2

    .line 53
    invoke-direct {p2, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    aget v2, v5, v3

    .line 58
    aget v4, v5, v0

    .line 60
    aget p3, p3, v0

    .line 62
    sub-int/2addr v4, p3

    .line 63
    invoke-virtual {p2, v2, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-object v1
.end method

.method public static synthetic b(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->lambda$setItemOnClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V

    return-void
.end method

.method private getAddedCategoryCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getCategoryByPosition(I)Lcom/android/fileexplorer/model/category/FileCategoryEntity;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    if-gt p1, v0, :cond_1b

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 27
    return-object p1

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr p1, v1

    .line 37
    add-int/lit8 p1, p1, -0x2

    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 45
    return-object p1
.end method

.method private getNotAddedCategoryCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getTranslateAnimator(FF)Landroid/view/animation/TranslateAnimation;
    .registers 13

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, v9

    .line 10
    move v4, p1

    .line 11
    move v8, p2

    .line 12
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 15
    const-wide/16 p1, 0x154

    .line 17
    invoke-virtual {v9, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {v9, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 24
    return-object v9
.end method

.method private synthetic lambda$setItemOnClickListener$0(Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_1f

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_17

    .line 20
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->moveToNotAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V

    .line 23
    goto :goto_39

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 26
    if-eqz p1, :cond_39

    .line 28
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 31
    goto :goto_39

    .line 32
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_39

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_32

    .line 47
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->moveToAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V

    .line 50
    goto :goto_39

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 53
    if-eqz p1, :cond_39

    .line 55
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method private synthetic lambda$setItemOnLongClickListener$1(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z
    .registers 6

    .line 1
    iget-object p4, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p4

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p4, :cond_e

    .line 10
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 15
    :cond_e
    if-ne p2, v0, :cond_15

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    .line 19
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    :cond_15
    return v0
.end method

.method private moveToAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v0, v1, :cond_28

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f110296

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    new-array v0, v2, [Ljava/lang/Object;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    aput-object v1, v0, v2

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 40
    return-void

    .line 41
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->processItemRemoveAdd(Lcom/android/fileexplorer/model/category/BaseItem;)I

    .line 44
    move-result p1

    .line 45
    const/4 v0, -0x1

    .line 46
    if-ne p1, v0, :cond_30

    .line 48
    return-void

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 55
    sub-int/2addr v0, v2

    .line 56
    add-int/2addr v0, v2

    .line 57
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    .line 63
    return-void
.end method

.method private moveToNotAdded(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-gt v0, v2, :cond_27

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f110208

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    new-array v0, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 39
    return-void

    .line 40
    :cond_27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 43
    move-result p1

    .line 44
    add-int/lit8 v0, p1, -0x1

    .line 46
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    move-result v3

    .line 52
    sub-int/2addr v3, v2

    .line 53
    if-le v0, v3, :cond_37

    .line 55
    return-void

    .line 56
    :cond_37
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 66
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v0

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 82
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 85
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    .line 88
    return-void
.end method

.method private processItemRemoveAdd(Lcom/android/fileexplorer/model/category/BaseItem;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    sub-int v0, p1, v0

    .line 13
    add-int/lit8 v0, v0, -0x2

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 23
    if-le v0, v1, :cond_1a

    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 37
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return p1
.end method

.method private setItemOnClickListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    .line 1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p0, p2}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    return-void
.end method

.method private setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 6

    .line 1
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/adapter/category/b;

    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/category/b;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 11
    return-void
.end method

.method private setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a00c6

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;

    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    return-void
.end method

.method private startAnimation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FF)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->addMirrorView(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/widget/ImageView;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    sub-float/2addr p3, v1

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    sub-float/2addr p4, v1

    .line 23
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getTranslateAnimator(FF)Landroid/view/animation/TranslateAnimation;

    .line 26
    move-result-object p3

    .line 27
    const/4 p4, 0x4

    .line 28
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    new-instance p4, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;

    .line 36
    invoke-direct {p4, p0, v0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;-><init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 39
    invoke-virtual {p3, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public endEditMode(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_21

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f0a0158

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/widget/ImageView;

    .line 25
    if-eqz v2, :cond_1e

    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_9

    .line 34
    :cond_21
    return-void
.end method

.method public getItemCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mNotAddedDatas:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    add-int/lit8 v1, v1, 0x2

    .line 16
    return v1
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 1
    if-eqz p1, :cond_18

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    if-ne p1, v0, :cond_d

    .line 13
    goto :goto_18

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    if-gt p1, v0, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    const/4 p1, 0x2

    .line 24
    return p1

    .line 25
    :cond_18
    :goto_18
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public notifyHeadersChange()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 16
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->onBindViewHolder(Lcom/android/fileexplorer/model/category/BaseItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/model/category/BaseItem;I)V
    .registers 6

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    goto :goto_37

    .line 3
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getCategoryByPosition(I)Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/fileexplorer/model/category/BaseItem;->bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;ZI)V

    goto :goto_37

    .line 4
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

    .line 5
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

    .line 1
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

    .line 2
    :cond_a
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->setType(I)V

    if-ne p2, v1, :cond_16

    .line 4
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V

    .line 5
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnClickListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/model/category/BaseItem;)V

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnLongClickListener(Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    return-object v0

    .line 8
    :cond_21
    invoke-static {p1}, Lcom/android/fileexplorer/model/category/ColumnItem;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/model/category/ColumnItem;

    move-result-object p1

    return-object p1
.end method

.method public onMove(II)V
    .registers 6

    .line 1
    if-ge p1, p2, :cond_11

    .line 3
    add-int/lit8 v0, p1, -0x1

    .line 5
    :goto_4
    add-int/lit8 v1, p2, -0x1

    .line 7
    if-ge v0, v1, :cond_21

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 11
    add-int/lit8 v2, v0, 0x1

    .line 13
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 16
    move v0, v2

    .line 17
    goto :goto_4

    .line 18
    :cond_11
    add-int/lit8 v0, p1, -0x1

    .line 20
    :goto_13
    add-int/lit8 v1, p2, -0x1

    .line 22
    if-le v0, v1, :cond_21

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mAddedDatas:Ljava/util/List;

    .line 26
    add-int/lit8 v2, v0, -0x1

    .line 28
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_13

    .line 34
    :cond_21
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 37
    return-void
.end method

.method public setItemTouchHelper(Landroidx/recyclerview/widget/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mTouchHelper:Landroidx/recyclerview/widget/f;

    .line 3
    return-void
.end method

.method public setOnEditModeChangeCallBack(Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mEditModeChangeCallback:Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;

    .line 3
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_21

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    const v4, 0x7f0a0158

    .line 20
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/widget/ImageView;

    .line 26
    if-eqz v3, :cond_1e

    .line 28
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_a

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mEditModeChangeCallback:Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;

    .line 36
    if-eqz p1, :cond_2c

    .line 38
    if-eqz p2, :cond_2c

    .line 40
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->mInEditMode:Ljava/lang/Boolean;

    .line 42
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;->onModeChange(Ljava/lang/Boolean;)V

    .line 45
    :cond_2c
    return-void
.end method
