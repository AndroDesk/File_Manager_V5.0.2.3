.class public final Lf1/b;
.super Lf1/n;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/b$i;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Lf1/b$b;

.field public static final c:Lf1/b$c;

.field public static final d:Lf1/b$d;

.field public static final e:Lf1/b$e;

.field public static final f:Lf1/b$f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf1/b;->a:[Ljava/lang/String;

    new-instance v0, Lf1/b$a;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$a;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lf1/b$b;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lf1/b;->b:Lf1/b$b;

    new-instance v0, Lf1/b$c;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$c;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lf1/b;->c:Lf1/b$c;

    new-instance v0, Lf1/b$d;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$d;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lf1/b;->d:Lf1/b$d;

    new-instance v0, Lf1/b$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$e;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lf1/b;->e:Lf1/b$e;

    new-instance v0, Lf1/b$f;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lf1/b$f;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lf1/b;->f:Lf1/b$f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/n;-><init>()V

    return-void
.end method

.method public static a(Lf1/t;)V
    .registers 7

    iget-object v0, p0, Lf1/t;->b:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_3f

    :cond_16
    iget-object v1, p0, Lf1/t;->a:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf1/t;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v1, "android:changeBounds:parent"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return-void
.end method


# virtual methods
.method public final captureEndValues(Lf1/t;)V
    .registers 2

    invoke-static {p1}, Lf1/b;->a(Lf1/t;)V

    return-void
.end method

.method public final captureStartValues(Lf1/t;)V
    .registers 2

    invoke-static {p1}, Lf1/b;->a(Lf1/t;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_142

    if-nez v1, :cond_a

    goto/16 :goto_142

    :cond_a
    iget-object v3, v0, Lf1/t;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lf1/t;->a:Ljava/util/HashMap;

    const-string v5, "android:changeBounds:parent"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_13e

    if-nez v4, :cond_22

    goto/16 :goto_13e

    :cond_22
    iget-object v3, v1, Lf1/t;->b:Landroid/view/View;

    iget-object v4, v0, Lf1/t;->a:Ljava/util/HashMap;

    const-string v5, "android:changeBounds:bounds"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v6, v1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v10, v6

    sub-int v13, v4, v8

    sub-int v14, v11, v7

    sub-int v15, v5, v9

    iget-object v0, v0, Lf1/t;->a:Ljava/util/HashMap;

    const-string v2, "android:changeBounds:clip"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v12, :cond_65

    if-nez v13, :cond_69

    :cond_65
    if-eqz v14, :cond_7a

    if-eqz v15, :cond_7a

    :cond_69
    if-ne v6, v7, :cond_71

    if-eq v8, v9, :cond_6e

    goto :goto_71

    :cond_6e
    const/16 v16, 0x0

    goto :goto_73

    :cond_71
    :goto_71
    move/from16 v16, v2

    :goto_73
    if-ne v10, v11, :cond_77

    if-eq v4, v5, :cond_7c

    :cond_77
    add-int/lit8 v16, v16, 0x1

    goto :goto_7c

    :cond_7a
    const/16 v16, 0x0

    :cond_7c
    :goto_7c
    if-eqz v0, :cond_84

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_88

    :cond_84
    if-nez v0, :cond_8a

    if-eqz v1, :cond_8a

    :cond_88
    add-int/lit8 v16, v16, 0x1

    :cond_8a
    move/from16 v0, v16

    if-lez v0, :cond_13a

    invoke-static {v3, v6, v8, v10, v4}, Lf1/w;->a(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ef

    if-ne v12, v14, :cond_ac

    if-ne v13, v15, :cond_ac

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v4, v8

    int-to-float v5, v7

    int-to-float v6, v9

    invoke-virtual {v0, v1, v4, v5, v6}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lf1/b;->f:Lf1/b$f;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_11b

    :cond_ac
    new-instance v0, Lf1/b$i;

    invoke-direct {v0, v3}, Lf1/b$i;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v12

    int-to-float v6, v6

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v12, v6, v8, v7, v9}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Lf1/b;->b:Lf1/b$b;

    const/4 v8, 0x0

    invoke-static {v0, v7, v8, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v7

    int-to-float v9, v10

    int-to-float v4, v4

    int-to-float v10, v11

    int-to-float v5, v5

    invoke-virtual {v7, v9, v4, v10, v5}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Lf1/b;->c:Lf1/b$c;

    invoke-static {v0, v5, v8, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lf1/b$g;

    invoke-direct {v1, v0}, Lf1/b$g;-><init>(Lf1/b$i;)V

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v5

    goto :goto_11b

    :cond_ef
    if-ne v6, v7, :cond_108

    if-eq v8, v9, :cond_f4

    goto :goto_108

    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v0

    int-to-float v1, v10

    int-to-float v4, v4

    int-to-float v6, v11

    int-to-float v5, v5

    invoke-virtual {v0, v1, v4, v6, v5}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lf1/b;->d:Lf1/b$d;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_11b

    :cond_108
    :goto_108
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v5, v8

    int-to-float v6, v7

    int-to-float v7, v9

    invoke-virtual {v0, v1, v5, v6, v7}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lf1/b;->e:Lf1/b$e;

    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_11b
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_137

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    new-instance v2, Lf1/b$h;

    invoke-direct {v2, v1}, Lf1/b$h;-><init>(Landroid/view/ViewGroup;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    goto :goto_139

    :cond_137
    move-object/from16 v1, p0

    :goto_139
    return-object v0

    :cond_13a
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0

    :cond_13e
    :goto_13e
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0

    :cond_142
    :goto_142
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lf1/b;->a:[Ljava/lang/String;

    return-object v0
.end method
