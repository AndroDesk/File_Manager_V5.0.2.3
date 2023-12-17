.class Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor",
        "PrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayViewGroup"
.end annotation


# static fields
.field public static invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field private disposed:Z

.field public drawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public hostView:Landroid/view/ViewGroup;

.field public requestingView:Landroid/view/View;

.field public viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    .line 3
    const-string v1, "invalidateChildInParentFast"

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    const/4 v3, 0x0

    .line 9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    aput-object v4, v2, v3

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v4, v2, v3

    .line 16
    const/4 v3, 0x2

    .line 17
    const-class v4, Landroid/graphics/Rect;

    .line 19
    aput-object v4, v2, v3

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 27
    :catch_1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/ViewOverlayApi14;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 7
    iput-object p2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 9
    iput-object p3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setRight(I)V

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    .line 25
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    iput-object p4, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;

    .line 30
    return-void
.end method

.method private assertNotDisposed()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposed:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private disposeIfEmpty()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposed:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_18
    return-void
.end method

.method private getOffset([I)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 4
    new-array v0, v0, [I

    .line 6
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    aget v3, v0, v2

    .line 19
    aget v4, v1, v2

    .line 21
    sub-int/2addr v3, v4

    .line 22
    aput v3, p1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    aget v0, v0, v2

    .line 27
    aget v1, v1, v2

    .line 29
    sub-int/2addr v0, v1

    .line 30
    aput v0, p1, v2

    .line 32
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 4
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_25
    return-void
.end method

.method public add(Landroid/view/View;)V
    .registers 7

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4e

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_42

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 13
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    iget-object v3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    .line 17
    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v3, 0x1

    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 19
    :cond_42
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_4e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 4
    new-array v0, v0, [I

    .line 6
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    aget v3, v0, v2

    .line 19
    aget v4, v1, v2

    .line 21
    sub-int/2addr v3, v4

    .line 22
    int-to-float v3, v3

    .line 23
    const/4 v4, 0x1

    .line 24
    aget v0, v0, v4

    .line 26
    aget v1, v1, v4

    .line 28
    sub-int/2addr v0, v1

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v1

    .line 41
    iget-object v3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v3

    .line 47
    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 53
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 58
    if-nez v0, :cond_3d

    .line 60
    move v0, v2

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v0

    .line 66
    :goto_41
    if-ge v2, v0, :cond_51

    .line 68
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_41

    .line 82
    :cond_51
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_2a

    .line 5
    const/4 v0, 0x0

    .line 6
    aget v1, p1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    aget v3, p1, v2

    .line 11
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 16
    if-eqz v1, :cond_27

    .line 18
    aput v0, p1, v0

    .line 20
    aput v0, p1, v2

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [I

    .line 25
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 28
    aget v0, v1, v0

    .line 30
    aget v1, v1, v2

    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 35
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_27
    invoke-virtual {p0, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_32

    .line 5
    sget-object v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    .line 7
    if-eqz v0, :cond_32

    .line 9
    const/4 v0, 0x2

    .line 10
    :try_start_9
    new-array v1, v0, [I

    .line 12
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 15
    sget-object v1, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    .line 17
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    aput-object p1, v3, v4

    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p2

    .line 34
    aput-object p2, v3, p1

    .line 36
    aput-object p3, v3, v0

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_28} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_28} :catch_29

    .line 41
    goto :goto_32

    .line 42
    :catch_29
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    goto :goto_32

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    :cond_32
    :goto_32
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    :cond_15
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 2

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_13

    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method
