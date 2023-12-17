.class public Lcom/android/fileexplorer/view/FabExpandView;
.super Landroid/widget/LinearLayout;
.source "FabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;,
        Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;,
        Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;,
        Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mDivider:Landroid/view/View;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

.field private mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mViewTypeContainer:Landroid/widget/FrameLayout;

.field private mViewTypeGrid:Landroid/widget/ImageView;

.field private mViewTypeList:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/view/FabExpandView;

    const-string v0, "FabExpandView"

    sput-object v0, Lcom/android/fileexplorer/view/FabExpandView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0061

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabExpandView;->initViewType()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabExpandView;->initRecycleView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/FabExpandView;[Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->unSelect([Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/FabExpandView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->toggleSelect(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/view/FabExpandView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    return-object p0
.end method

.method private initRecycleView()V
    .registers 3

    const v0, 0x7f032ead

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;-><init>(Lcom/android/fileexplorer/view/FabExpandView;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initViewType()V
    .registers 3

    const v0, 0x7f032908

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f032904

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    const v0, 0x7f032919

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/fileexplorer/view/FabExpandView$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabExpandView$1;-><init>(Lcom/android/fileexplorer/view/FabExpandView;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private toggleSelect(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private varargs unSelect([Landroid/view/View;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public getDesiredSize()[I
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_4a

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4a
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredHeight:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getSelectItemId()I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->getSelectId()I

    move-result v1

    if-eq v1, v2, :cond_6

    return v1

    :cond_1a
    return v2
.end method

.method public getSelectViewTypeId()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0a0492

    return v0

    :cond_c
    const v0, 0x7f0a048f

    return v0
.end method

.method public hideViewType()V
    .registers 3

    const v0, 0x7f032908

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032ca8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public selectMethod(IZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

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

    check-cast v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    if-ne v2, p1, :cond_1f

    xor-int/lit8 v4, p2, 0x1

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    goto :goto_23

    :cond_1f
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectViewType(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_19

    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_19
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    return-void
.end method
