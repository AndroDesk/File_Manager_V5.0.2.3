.class public final Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_d

    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v2, v1

    .line 15
    :goto_e
    const/4 v3, 0x1

    .line 16
    if-eqz p2, :cond_13

    .line 18
    move v0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    sub-int/2addr v0, v3

    .line 21
    :goto_14
    new-instance v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;

    .line 23
    invoke-direct {v4, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 26
    const/4 p2, 0x2

    .line 27
    new-array p2, p2, [I

    .line 29
    aput v2, p2, v1

    .line 31
    aput v0, p2, v3

    .line 33
    const-string v0, "currentIndex"

    .line 35
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1, v3}, Lk/a;->a(Landroid/animation/ObjectAnimator;Z)V

    .line 42
    iget p2, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    .line 44
    int-to-long v0, p2

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->b:Z

    .line 53
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->a:Landroid/animation/ObjectAnimator;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->b:Z

    .line 3
    return v0
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->a:Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 6
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->a:Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;->a:Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    return-void
.end method
