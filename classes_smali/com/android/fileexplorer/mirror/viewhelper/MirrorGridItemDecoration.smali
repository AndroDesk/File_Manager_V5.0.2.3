.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorGridItemDecoration.java"


# static fields
.field public static final SPAN_COUNT:I


# instance fields
.field private mIsBottom:Z

.field private mIsTop:Z

.field private mSpanCount:I

.field private marginEnd:I

.field private marginTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const v0, 0x7f07031f

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    const v0, 0x7f070320

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;IIZZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11

    const v0, 0x7f07031f

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    const v0, 0x7f070320

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;IIZZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZI)V
    .registers 7

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->marginEnd:I

    iput p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->marginTop:I

    iput-boolean p4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mIsBottom:Z

    iput-boolean p5, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mIsTop:Z

    iput p6, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mSpanCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZI)V
    .registers 13

    const v0, 0x7f07031f

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    const v0, 0x7f070320

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;IIZZI)V

    return-void
.end method

.method private fitDefaultRect(ILandroid/graphics/Rect;)V
    .registers 6

    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mSpanCount:I

    rem-int/2addr p1, v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mIsTop:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->marginTop:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_b
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->mIsBottom:Z

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->marginTop:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_13
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->marginEnd:I

    mul-int v2, p1, v1

    div-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v1

    div-int/2addr p1, v0

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;->fitDefaultRect(ILandroid/graphics/Rect;)V

    return-void
.end method
