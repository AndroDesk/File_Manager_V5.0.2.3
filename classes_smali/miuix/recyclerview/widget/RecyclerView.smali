.class public Lmiuix/recyclerview/widget/RecyclerView;
.super Landroidx/recyclerview/widget/SpringRecyclerView;
.source "RecyclerView.java"


# static fields
.field private static final MIN_FLING_VELOCITY:I = 0x12c


# instance fields
.field private final mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lb1/a;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-le p1, p2, :cond_19

    .line 6
    new-instance p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;-><init>(Lmiuix/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    goto :goto_1c

    :cond_19
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    :goto_1c
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1e

    .line 9
    if-lt v1, v2, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->touchEvent(Landroid/view/MotionEvent;)V

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public fling(II)Z
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x12c

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_a

    .line 10
    move p1, v2

    .line 11
    :cond_a
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 14
    move-result v0

    .line 15
    if-ge v0, v1, :cond_11

    .line 17
    move p2, v2

    .line 18
    :cond_11
    if-nez p1, :cond_16

    .line 20
    if-nez p2, :cond_16

    .line 22
    return v2

    .line 23
    :cond_16
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    iget-object p2, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    .line 6
    if-eqz p2, :cond_10

    .line 8
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v0, 0x1e

    .line 12
    if-lt p3, v0, :cond_10

    .line 14
    invoke-virtual {p2, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->onFocusChange(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onScrollStateChanged(I)V

    .line 4
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v2, 0x1e

    .line 12
    if-lt v1, v2, :cond_10

    .line 14
    invoke-virtual {v0, p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V

    .line 17
    :cond_10
    return-void
.end method

.method public onScrolled(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1e

    .line 9
    if-lt v1, v2, :cond_d

    .line 11
    invoke-virtual {v0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateSpeed(II)V

    .line 14
    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 17
    return-void
.end method
