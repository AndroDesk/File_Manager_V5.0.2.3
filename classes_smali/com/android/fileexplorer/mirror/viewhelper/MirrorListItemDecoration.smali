.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorListItemDecoration.java"


# instance fields
.field private mIsTop:Z

.field private marginBottom:I

.field private marginTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const v0, 0x7f07032a

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const v0, 0x7f07032a

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    const v0, 0x7f07032b

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginTop:I

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->mIsTop:Z

    return-void
.end method

.method private fitDefaultRect(Landroid/graphics/Rect;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->mIsTop:Z

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    iget p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_a
    iget p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->marginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;->fitDefaultRect(Landroid/graphics/Rect;I)V

    return-void
.end method
