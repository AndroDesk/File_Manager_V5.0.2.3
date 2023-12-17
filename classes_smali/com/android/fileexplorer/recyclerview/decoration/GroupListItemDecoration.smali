.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "GroupListItemDecoration.java"


# instance fields
.field public left:I

.field public right:I

.field public spanCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const v0, 0x7f0701e7

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;->spanCount:I

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;->left:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;->right:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 13
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;->left:I

    .line 15
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 17
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;->right:I

    .line 19
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 21
    return-void
.end method
