.class public Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "CoordinatorLayoutChild.java"

# interfaces
.implements Lm0/p;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mChildHelper:Lm0/r;

.field public mParentHelper:Lm0/u;

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;

    .line 3
    const-string v0, "CoordinatorLayoutChild"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mParentScrollConsumed:[I

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mParentOffsetInWindow:[I

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 1
    new-instance v0, Lm0/r;

    .line 3
    invoke-direct {v0, p0}, Lm0/r;-><init>(Landroid/view/View;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_8
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 11
    const-string v2, "mNestedScrollingParentHelper"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lm0/u;

    .line 26
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mParentHelper:Lm0/u;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_22

    .line 29
    :catch_1c
    move-exception v1

    .line 30
    goto :goto_1f

    .line 31
    :catch_1e
    move-exception v1

    .line 32
    :goto_1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->setNestedScrollingEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lm0/r;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 15

    .line 1
    iget-object v6, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mParentScrollConsumed:[I

    .line 3
    const/4 v7, 0x0

    .line 4
    aget v0, p4, v7

    .line 6
    sub-int v1, p2, v0

    .line 8
    const/4 v8, 0x1

    .line 9
    aget v0, p4, v8

    .line 11
    sub-int v2, p3, v0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v0, p0

    .line 15
    move-object v3, v6

    .line 16
    move v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->dispatchNestedPreScroll(II[I[II)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_25

    .line 23
    aget p1, p4, v7

    .line 25
    aget p2, v6, v7

    .line 27
    add-int/2addr p1, p2

    .line 28
    aput p1, p4, v7

    .line 30
    aget p1, p4, v8

    .line 32
    aget p2, v6, v8

    .line 34
    add-int/2addr p1, p2

    .line 35
    aput p1, p4, v8

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 41
    :goto_28
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 16

    .line 1
    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mParentOffsetInWindow:[I

    .line 3
    move-object v0, p0

    .line 4
    move v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v6, p6

    .line 9
    move-object v7, p7

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->dispatchNestedScroll(IIII[II[I)V

    .line 13
    const/4 v0, 0x1

    .line 14
    aget v0, p7, v0

    .line 16
    sub-int v0, p5, v0

    .line 18
    if-gez p5, :cond_18

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 25
    :cond_18
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    move p1, p2

    goto :goto_9

    :cond_8
    move p1, v0

    .line 1
    :goto_9
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v1, p3}, Lm0/r;->startNestedScroll(I)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1a

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move p2, v0

    :cond_1b
    :goto_1b
    return p2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p3}, Lm0/r;->startNestedScroll(I)Z

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->stopNestedScroll(I)V

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 7
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->TAG:Ljava/lang/String;

    const-string v1, "stopNestedScroll: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v0}, Lm0/r;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4

    .line 3
    sget-object v0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->TAG:Ljava/lang/String;

    const-string v1, "stopNestedScroll: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/CoordinatorLayoutChild;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method
