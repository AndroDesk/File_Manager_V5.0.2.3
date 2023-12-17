.class public final Landroidx/recyclerview/widget/d$a;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/d;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/d;->A:I

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v1, v3, :cond_b

    .line 9
    if-eq v1, v2, :cond_10

    .line 11
    goto :goto_37

    .line 12
    :cond_b
    iget-object v1, v0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    :cond_10
    const/4 v1, 0x3

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/d;->A:I

    .line 20
    iget-object v1, v0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 22
    new-array v2, v2, [F

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/Float;

    .line 31
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v5

    .line 35
    aput v5, v2, v4

    .line 37
    const/4 v4, 0x0

    .line 38
    aput v4, v2, v3

    .line 40
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 43
    iget-object v1, v0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 45
    const/16 v2, 0x1f4

    .line 47
    int-to-long v2, v2

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    iget-object v0, v0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    :goto_37
    return-void
.end method
