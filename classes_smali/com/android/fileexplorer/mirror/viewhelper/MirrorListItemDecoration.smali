.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorListItemDecoration.java"


# instance fields
.field private mIsTop:Z

.field private marginBottom:I

.field private marginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const v0, 0x7f07032a

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const v0, 0x7f07032a

    .line 4
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    const v0, 0x7f07032b

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginTop:I

    .line 6
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->mIsTop:Z

    return-void
.end method

.method private fitDefaultRect(Landroid/graphics/Rect;I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->mIsTop:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    if-nez p2, :cond_a

    .line 7
    iget p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginTop:I

    .line 9
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 11
    :cond_a
    iget p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    .line 13
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 7
    move-result p2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->fitDefaultRect(Landroid/graphics/Rect;I)V

    .line 11
    return-void
.end method
