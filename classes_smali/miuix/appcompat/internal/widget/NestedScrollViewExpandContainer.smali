.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpandContainer;
.super Landroidx/core/widget/NestedScrollView;
.source "NestedScrollViewExpandContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public measureChild(Landroid/view/View;II)V
    .registers 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 4
    invoke-virtual {v0, p3}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setParentHeightMeasureSpec(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;->measureChild(Landroid/view/View;II)V

    .line 13
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 4
    invoke-virtual {v0, p4}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setParentHeightMeasureSpec(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 10
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 13
    return-void
.end method
