.class public Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.super Lg1/c;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;,
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$c;
    }
.end annotation


# instance fields
.field public b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

.field public c:Landroid/content/Context;

.field public final d:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lg1/c;-><init>()V

    .line 3
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;

    .line 4
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->c:Landroid/content/Context;

    .line 5
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    invoke-direct {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;)V

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1}, Lg0/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 18
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 20
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29
    :cond_1c
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$a;->a(Landroid/graphics/drawable/Drawable;)I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    or-int/lit8 v0, v0, 0x0

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$c;

    .line 7
    iget-object v1, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$c;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, Lg0/a$b;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 3
    :cond_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_12
    if-eq v0, v2, :cond_d2

    .line 5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_1d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d2

    :cond_1d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_cc

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "animated-vector"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_68

    .line 8
    sget-object v0, Lg1/a;->e:[I

    .line 9
    invoke-static {p1, p4, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_64

    .line 11
    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 12
    invoke-static {p1, v3, p4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v5, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 13
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$h;

    iget-object v6, v5, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 15
    iput-boolean v4, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->f:Z

    .line 16
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$a;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v3, :cond_60

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    :cond_60
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iput-object v5, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 20
    :cond_64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_cc

    :cond_68
    const-string v3, "target"

    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 22
    sget-object v0, Lg1/a;->f:[I

    .line 23
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_c9

    .line 26
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->c:Landroid/content/Context;

    if-eqz v5, :cond_be

    .line 27
    invoke-static {v5, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 28
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 29
    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 30
    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    invoke-virtual {v5, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 32
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iget-object v6, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->c:Ljava/util/ArrayList;

    if-nez v6, :cond_af

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->c:Ljava/util/ArrayList;

    .line 34
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    new-instance v6, Landroidx/collection/a;

    invoke-direct {v6}, Landroidx/collection/a;-><init>()V

    iput-object v6, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->d:Landroidx/collection/a;

    .line 35
    :cond_af
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->d:Landroidx/collection/a;

    invoke-virtual {v5, v4, v3}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c9

    .line 37
    :cond_be
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context can\'t be null when inflating animators"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_c9
    :goto_c9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    :cond_cc
    :goto_cc
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_12

    .line 41
    :cond_d2
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 42
    iget-object p2, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_df

    .line 43
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 44
    :cond_df
    iget-object p2, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 14
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_7
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 16
    return-void
.end method

.method public final onLevelChange(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final onStateChange([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0, p1}, Lg1/c;->setState([I)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    .line 16
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAutoMirrored(Z)V

    .line 16
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 16
    return-void
.end method

.method public final setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a;->c(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->a:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 14
    invoke-virtual {v0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    .line 17
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final start()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 13
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 24
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 26
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    return-void
.end method

.method public final stop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;

    .line 13
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$b;->b:Landroid/animation/AnimatorSet;

    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 18
    return-void
.end method
