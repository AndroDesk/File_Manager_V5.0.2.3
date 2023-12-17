.class public final Landroidx/viewpager2/widget/b;
.super Ljava/lang/Object;
.source "OriginalAnimateLayoutChangeDetector.java"


# static fields
.field public static final b:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public a:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7
    sput-object v0, Landroidx/viewpager2/widget/b;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2a

    .line 6
    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_15

    .line 15
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v0

    .line 26
    move v3, v1

    .line 27
    :goto_1a
    if-ge v3, v0, :cond_2a

    .line 29
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Landroidx/viewpager2/widget/b;->a(Landroid/view/View;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_27

    .line 39
    return v2

    .line 40
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    return v1
.end method
