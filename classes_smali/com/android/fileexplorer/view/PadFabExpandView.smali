.class public Lcom/android/fileexplorer/view/PadFabExpandView;
.super Landroid/widget/LinearLayout;
.source "PadFabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;,
        Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;,
        Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;,
        Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;,
        Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final POS_SORT_BY_DATE:I = 0x2

.field private static final POS_SORT_BY_NAME:I = 0x0

.field private static final POS_SORT_BY_SIZE:I = 0x1

.field private static final POS_SORT_BY_TYPE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;

.field private mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/view/PadFabExpandView;

    const-string v0, "PadFabExpandView"

    sput-object v0, Lcom/android/fileexplorer/view/PadFabExpandView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PadFabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/PadFabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d01cb

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f080153

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadFabExpandView;->initRecycleView()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/view/PadFabExpandView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/PadFabExpandView;)Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;

    return-object p0
.end method

.method private getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/PadFabExpandView$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    return v0

    :cond_17
    return v1

    :cond_18
    const/4 p1, 0x0

    return p1

    :cond_1a
    return v0
.end method

.method private initRecycleView()V
    .registers 3

    const v0, 0x7f032ead

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;-><init>(Lcom/android/fileexplorer/view/PadFabExpandView;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mAdapter:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public initData(Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_52

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-eqz p1, :cond_24

    iget v5, p1, Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;->pos:I

    iget-boolean p1, p1, Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;->isUp:Z

    goto :goto_26

    :cond_24
    const/4 p1, 0x1

    move v5, v4

    :goto_26
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_29
    if-ge v7, v6, :cond_51

    aget-object v9, v0, v7

    new-instance v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    invoke-direct {v10}, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;-><init>()V

    iput-object v9, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    if-ne v8, v5, :cond_3d

    iput-boolean p1, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    xor-int/lit8 v9, p1, 0x1

    iput-boolean v9, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    goto :goto_41

    :cond_3d
    iput-boolean v4, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    iput-boolean v4, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    :goto_41
    aget v9, v2, v8

    iput v9, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->upId:I

    aget v9, v1, v8

    iput v9, v10, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->downId:I

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_51
    return-object v3

    :array_52
    .array-data 4
        0x7f0a03b4
        0x7f0a03b6
        0x7f0a03af
        0x7f0a03ba
    .end array-data

    :array_5e
    .array-data 4
        0x7f0a03b5
        0x7f0a03b7
        0x7f0a03b0
        0x7f0a03bb
    .end array-data
.end method

.method public selectMethod(IZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    if-ne v2, p1, :cond_1f

    xor-int/lit8 v4, p2, 0x1

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    goto :goto_23

    :cond_1f
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    iput-boolean v1, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mAdapter:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PadFabExpandView;->getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/PadFabExpandView;->selectMethod(IZ)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mAdapter:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;

    return-void
.end method
