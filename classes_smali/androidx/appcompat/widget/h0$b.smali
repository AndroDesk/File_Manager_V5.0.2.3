.class public final Landroidx/appcompat/widget/h0$b;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/h0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/h0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$b;->a:Landroidx/appcompat/widget/h0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0$b;->a:Landroidx/appcompat/widget/h0;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/h0;->a()V

    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_38

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_14

    .line 20
    goto :goto_38

    .line 21
    :cond_14
    invoke-virtual {v0}, Landroidx/appcompat/widget/h0;->c()Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1b

    .line 27
    goto :goto_38

    .line 28
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    move-result-wide v6

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    move-wide v4, v6

    .line 45
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 55
    iput-boolean v3, v0, Landroidx/appcompat/widget/h0;->g:Z

    .line 57
    :cond_38
    :goto_38
    return-void
.end method
