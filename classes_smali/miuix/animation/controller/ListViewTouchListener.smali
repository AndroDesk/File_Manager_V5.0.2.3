.class public Lmiuix/animation/controller/ListViewTouchListener;
.super Ljava/lang/Object;
.source "ListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 18
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 21
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 23
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 39
    return-void
.end method

.method private getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result p2

    .line 10
    float-to-int p2, p2

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    if-ge v2, v1, :cond_33

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 27
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 32
    move-result v5

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 36
    move-result v6

    .line 37
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 40
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_30

    .line 48
    return-object v3

    .line 49
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_f

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method private notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/ListViewTouchListener;->getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_36

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/View;

    .line 33
    if-nez p3, :cond_26

    .line 35
    if-ne v2, p1, :cond_26

    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v3, 0x0

    .line 40
    :goto_27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/View$OnTouchListener;

    .line 46
    if-eqz v3, :cond_31

    .line 48
    move-object v3, p2

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v3, 0x0

    .line 51
    :goto_32
    invoke-interface {v1, v2, v3}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 54
    goto :goto_e

    .line 55
    :cond_36
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_30

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_12

    .line 11
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 14
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 16
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 18
    goto :goto_3c

    .line 19
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 25
    sub-float/2addr v0, v2

    .line 26
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 28
    int-to-float v2, v2

    .line 29
    cmpl-float v0, v0, v2

    .line 31
    if-gtz v0, :cond_2e

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 36
    move-result v0

    .line 37
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 39
    sub-float/2addr v0, v2

    .line 40
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 42
    int-to-float v2, v2

    .line 43
    cmpl-float v0, v0, v2

    .line 45
    if-lez v0, :cond_3c

    .line 47
    :cond_2e
    const/4 v0, 0x1

    .line 48
    goto :goto_3d

    .line 49
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 61
    :cond_3c
    :goto_3c
    move v0, v1

    .line 62
    :goto_3d
    check-cast p1, Landroid/widget/AbsListView;

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/controller/ListViewTouchListener;->notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V

    .line 67
    return v1
.end method

.method public putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
