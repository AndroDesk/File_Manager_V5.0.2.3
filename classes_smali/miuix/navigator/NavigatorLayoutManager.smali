.class Lmiuix/navigator/NavigatorLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "NavigatorLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 8
    move-result v0

    .line 9
    sub-int/2addr p1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 13
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    const/4 v0, 0x1

    .line 16
    aput p1, p2, v0

    .line 18
    const/4 v0, 0x0

    .line 19
    aput p1, p2, v0

    .line 21
    return-void
.end method
