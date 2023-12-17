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

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    const-string v0, "FabExpandView"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/FabExpandView;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0061

    .line 6
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabExpandView;->initViewType()V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabExpandView;->initRecycleView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/FabExpandView;[Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->unSelect([Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/FabExpandView;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->toggleSelect(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/FabExpandView;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private initRecycleView()V
    .registers 3

    .line 1
    const v0, 0x7f0a033b

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 27
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 36
    new-instance v0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;-><init>(Lcom/android/fileexplorer/view/FabExpandView;)V

    .line 41
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 45
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    return-void
.end method

.method private initViewType()V
    .registers 3

    .line 1
    const v0, 0x7f0a049e

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 12
    const v0, 0x7f0a0492

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0a048f

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    .line 34
    new-instance v0, Lcom/android/fileexplorer/view/FabExpandView$1;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabExpandView$1;-><init>(Lcom/android/fileexplorer/view/FabExpandView;)V

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private toggleSelect(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 10
    return-void
.end method

.method private varargs unSelect([Landroid/view/View;)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_d

    .line 6
    aget-object v3, p1, v2

    .line 8
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 13
    goto :goto_3

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public getDesiredSize()[I
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4a

    .line 6
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredHeight:I

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result v2

    .line 33
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result v2

    .line 41
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mRecycleView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    move-result v2

    .line 60
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    move-result v2

    .line 68
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 72
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :cond_4a
    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [I

    .line 78
    iget v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredWidth:I

    .line 80
    aput v2, v0, v1

    .line 82
    const/4 v1, 0x1

    .line 83
    iget v2, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDesiredHeight:I

    .line 85
    aput v2, v0, v1

    .line 87
    return-object v0
.end method

.method public getSelectItemId()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v1, :cond_1a

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->getSelectId()I

    .line 23
    move-result v1

    .line 24
    if-eq v1, v2, :cond_6

    .line 26
    return v1

    .line 27
    :cond_1a
    return v2
.end method

.method public getSelectViewTypeId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    const v0, 0x7f0a0492

    .line 12
    return v0

    .line 13
    :cond_c
    const v0, 0x7f0a048f

    .line 16
    return v0
.end method

.method public hideViewType()V
    .registers 3

    .line 1
    const v0, 0x7f0a049e

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeContainer:Landroid/widget/FrameLayout;

    .line 12
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    const v0, 0x7f0a013e

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mDivider:Landroid/view/View;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void
.end method

.method public selectMethod(IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_26

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    .line 21
    if-ne v2, p1, :cond_1f

    .line 23
    xor-int/lit8 v4, p2, 0x1

    .line 25
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 27
    xor-int/lit8 v4, v4, 0x1

    .line 29
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 34
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 36
    :goto_23
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_8

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public selectViewType(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_f

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    goto :goto_19

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeGrid:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mViewTypeList:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 26
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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mItems:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mAdapter:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    .line 3
    return-void
.end method
