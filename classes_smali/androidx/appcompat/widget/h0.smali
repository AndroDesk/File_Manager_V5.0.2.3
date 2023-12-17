.class public abstract Landroidx/appcompat/widget/h0;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/h0$b;,
        Landroidx/appcompat/widget/h0$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:I

.field public final d:Landroid/view/View;

.field public e:Landroidx/appcompat/widget/h0$a;

.field public f:Landroidx/appcompat/widget/h0$b;

.field public g:Z

.field public h:I

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->i:[I

    iput-object p1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/appcompat/widget/h0;->a:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/h0;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/h0;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public abstract b()Landroidx/appcompat/view/menu/q;
.end method

.method public abstract c()Z
.end method

.method public d()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Landroidx/appcompat/view/menu/q;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    iget-boolean p1, p0, Landroidx/appcompat/widget/h0;->g:Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6f

    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Landroidx/appcompat/view/menu/q;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-interface {v4}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_5f

    :cond_16
    invoke-interface {v4}, Landroidx/appcompat/view/menu/q;->c()Landroidx/appcompat/widget/f0;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_5f

    :cond_23
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/widget/h0;->i:[I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v6, v2

    int-to-float v3, v3

    aget v6, v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Landroidx/appcompat/widget/h0;->i:[I

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v3, v2

    neg-int v6, v6

    int-to-float v6, v6

    aget v3, v3, v1

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v5, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v3, p0, Landroidx/appcompat/widget/h0;->h:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/f0;->b(Landroid/view/MotionEvent;I)Z

    move-result v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, v1, :cond_58

    if-eq p2, v0, :cond_58

    move p2, v1

    goto :goto_59

    :cond_58
    move p2, v2

    :goto_59
    if-eqz v3, :cond_5f

    if-eqz p2, :cond_5f

    move p2, v1

    goto :goto_60

    :cond_5f
    :goto_5f
    move p2, v2

    :goto_60
    if-nez p2, :cond_6c

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->d()Z

    move-result p2

    if-nez p2, :cond_69

    goto :goto_6c

    :cond_69
    move p2, v2

    goto/16 :goto_125

    :cond_6c
    :goto_6c
    move p2, v1

    goto/16 :goto_125

    :cond_6f
    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_79

    goto/16 :goto_102

    :cond_79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_d6

    if-eq v4, v1, :cond_d2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_88

    if-eq v4, v0, :cond_d2

    goto/16 :goto_102

    :cond_88
    iget v0, p0, Landroidx/appcompat/widget/h0;->h:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_102

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget v0, p0, Landroidx/appcompat/widget/h0;->a:F

    neg-float v5, v0

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_c3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_c3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpg-float p2, p2, v4

    if-gez p2, :cond_c3

    move p2, v1

    goto :goto_c4

    :cond_c3
    move p2, v2

    :goto_c4
    if-nez p2, :cond_102

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move p2, v1

    goto :goto_103

    :cond_d2
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    goto :goto_102

    :cond_d6
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/h0;->h:I

    iget-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    if-nez p2, :cond_e7

    new-instance p2, Landroidx/appcompat/widget/h0$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/h0$a;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    :cond_e7
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    iget v0, p0, Landroidx/appcompat/widget/h0;->b:I

    int-to-long v4, v0

    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    if-nez p2, :cond_fa

    new-instance p2, Landroidx/appcompat/widget/h0$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/h0$b;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    :cond_fa
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    iget v0, p0, Landroidx/appcompat/widget/h0;->c:I

    int-to-long v4, v0

    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_102
    :goto_102
    move p2, v2

    :goto_103
    if-eqz p2, :cond_10d

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->c()Z

    move-result p2

    if-eqz p2, :cond_10d

    move p2, v1

    goto :goto_10e

    :cond_10d
    move p2, v2

    :goto_10e
    if-eqz p2, :cond_125

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_125
    :goto_125
    iput-boolean p2, p0, Landroidx/appcompat/widget/h0;->g:Z

    if-nez p2, :cond_12d

    if-eqz p1, :cond_12c

    goto :goto_12d

    :cond_12c
    move v1, v2

    :cond_12d
    :goto_12d
    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->g:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/widget/h0;->h:I

    iget-object p1, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method
