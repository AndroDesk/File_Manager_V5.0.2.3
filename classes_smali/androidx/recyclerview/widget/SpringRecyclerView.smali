.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/s;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SpringRecyclerView$a;,
        Landroidx/recyclerview/widget/SpringRecyclerView$b;,
        Landroidx/recyclerview/widget/SpringRecyclerView$d;,
        Landroidx/recyclerview/widget/SpringRecyclerView$c;
    }
.end annotation


# static fields
.field private static final NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

.field private static final NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$k;

.field private static final TAG:Ljava/lang/String; = "SpringRecyclerView"

.field private static final VIEW_FLINGER:Ljava/lang/reflect/Field;


# instance fields
.field private mHorizontalOverScrolling:Z

.field private mManagedScrollState:I

.field private mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

.field private mSpringHelper:Lmiuix/spring/view/SpringHelper;

.field private mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$d;

.field private mVerticalOverScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const-string v1, "mViewFlinger"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_2a

    .line 15
    :try_start_e
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    const-string v2, "mScrollingChildHelper"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_1b} :catch_23

    .line 28
    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$b;

    .line 30
    invoke-direct {v0}, Landroidx/recyclerview/widget/SpringRecyclerView$b;-><init>()V

    .line 33
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 35
    return-void

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v1

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lb1/a;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 5
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 6
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$c;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$c;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 7
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$d;

    invoke-direct {p2, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$d;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceViewFlinger(Landroidx/recyclerview/widget/s$a;)V

    .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceNestedScrollingHelper(Lm0/r;)V

    .line 11
    sget-object p2, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$k;)V

    .line 12
    sget-boolean p2, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_38

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_38
    return-void
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Landroidx/recyclerview/widget/SpringRecyclerView;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 3
    return-object p0
.end method

.method private replaceNestedScrollingHelper(Lm0/r;)V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-void

    .line 7
    :catch_6
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method

.method private replaceViewFlinger(Landroidx/recyclerview/widget/s$a;)V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-void

    .line 7
    :catch_6
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method

.method private springAvailable()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_f

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 9
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    .line 12
    move-result v1

    .line 13
    if-nez v0, :cond_15

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 21
    goto :goto_26

    .line 22
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    move-result v2

    .line 26
    neg-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    neg-int v1, v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 39
    :goto_26
    return-void
.end method

.method public bridge synthetic getSpringEnabled()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/s;->getSpringEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isOverScrolling()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public bridge synthetic onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onScrollStateChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_21

    .line 16
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 18
    if-nez p1, :cond_17

    .line 20
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 22
    if-eqz p1, :cond_21

    .line 24
    :cond_17
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/s$a;->d()V

    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 32
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 34
    :cond_21
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s;->setOverScrollMode(I)V

    .line 4
    return-void
.end method

.method setScrollState(I)V
    .registers 12

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_46

    .line 6
    if-nez p1, :cond_46

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 10
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 16
    invoke-virtual {v2}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    .line 19
    move-result v2

    .line 20
    if-nez v0, :cond_17

    .line 22
    if-eqz v2, :cond_46

    .line 24
    :cond_17
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 26
    if-eqz v0, :cond_20

    .line 28
    iget-object v3, p1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 30
    invoke-static {v3, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 33
    :cond_20
    if-eqz v2, :cond_27

    .line 35
    iget-object v3, p1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 37
    invoke-static {v3, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 40
    :cond_27
    iget-object v1, p1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 46
    const/4 v1, 0x0

    .line 47
    iput v1, p1, Landroidx/recyclerview/widget/s$a;->i:I

    .line 49
    iput v1, p1, Landroidx/recyclerview/widget/s$a;->h:I

    .line 51
    iget-object v1, p1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 53
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    .line 56
    iget-object v3, p1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    neg-int v7, v0

    .line 61
    neg-int v9, v2

    .line 62
    move v6, v7

    .line 63
    move v8, v9

    .line 64
    invoke-virtual/range {v3 .. v9}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/s$a;->b()V

    .line 70
    return-void

    .line 71
    :cond_46
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 74
    return-void
.end method

.method public bridge synthetic setSpringEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s;->setSpringEnabled(Z)V

    .line 4
    return-void
.end method
