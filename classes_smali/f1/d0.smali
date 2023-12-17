.class public abstract Lf1/d0;
.super Lf1/n;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/d0$b;,
        Lf1/d0$c;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field public static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf1/d0;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lf1/n;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lf1/d0;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lf1/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lf1/d0;->mMode:I

    sget-object v0, Lf1/m;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p2}, Lf1/d0;->setMode(I)V

    :cond_1d
    return-void
.end method

.method private captureValues(Lf1/t;)V
    .registers 5

    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lf1/t;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    const-string v1, "android:visibility:screenLocation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;
    .registers 10

    new-instance v0, Lf1/d0$c;

    invoke-direct {v0}, Lf1/d0$c;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf1/d0$c;->a:Z

    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_33

    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lf1/d0$c;->c:I

    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    goto :goto_37

    :cond_33
    iput v4, v0, Lf1/d0$c;->c:I

    iput-object v3, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    :goto_37
    if-eqz p2, :cond_5a

    iget-object v6, p2, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-object v3, p2, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lf1/d0$c;->d:I

    iget-object v3, p2, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    goto :goto_5e

    :cond_5a
    iput v4, v0, Lf1/d0$c;->d:I

    iput-object v3, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    :goto_5e
    const/4 v2, 0x1

    if-eqz p1, :cond_92

    if-eqz p2, :cond_92

    iget p1, v0, Lf1/d0$c;->c:I

    iget p2, v0, Lf1/d0$c;->d:I

    if-ne p1, p2, :cond_70

    iget-object v3, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    iget-object v4, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_70

    return-object v0

    :cond_70
    if-eq p1, p2, :cond_80

    if-nez p1, :cond_79

    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    goto :goto_a7

    :cond_79
    if-nez p2, :cond_a7

    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    goto :goto_a7

    :cond_80
    iget-object p1, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_89

    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    goto :goto_a7

    :cond_89
    iget-object p1, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_a7

    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    goto :goto_a7

    :cond_92
    if-nez p1, :cond_9d

    iget p1, v0, Lf1/d0$c;->d:I

    if-nez p1, :cond_9d

    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    goto :goto_a7

    :cond_9d
    if-nez p2, :cond_a7

    iget p1, v0, Lf1/d0$c;->c:I

    if-nez p1, :cond_a7

    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    :cond_a7
    :goto_a7
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Lf1/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lf1/d0;->captureValues(Lf1/t;)V

    return-void
.end method

.method public captureStartValues(Lf1/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lf1/d0;->captureValues(Lf1/t;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 12

    invoke-direct {p0, p2, p3}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object v0

    iget-boolean v1, v0, Lf1/d0$c;->a:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    :cond_10
    iget-boolean v1, v0, Lf1/d0$c;->b:Z

    if-eqz v1, :cond_21

    iget v5, v0, Lf1/d0$c;->c:I

    iget v7, v0, Lf1/d0$c;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lf1/d0;->onAppear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_21
    iget v3, v0, Lf1/d0$c;->c:I

    iget v5, v0, Lf1/d0$c;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lf1/d0;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lf1/d0;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Lf1/t;Lf1/t;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v1, p2, Lf1/t;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v0

    :cond_1b
    invoke-direct {p0, p1, p2}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object p1

    iget-boolean p2, p1, Lf1/d0$c;->a:Z

    if-eqz p2, :cond_2c

    iget p2, p1, Lf1/d0$c;->c:I

    if-eqz p2, :cond_2b

    iget p1, p1, Lf1/d0$c;->d:I

    if-nez p1, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public isVisible(Lf1/t;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:parent"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;
    .registers 8

    iget p3, p0, Lf1/d0;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2d

    if-nez p4, :cond_a

    goto :goto_2d

    :cond_a
    if-nez p2, :cond_26

    iget-object p3, p4, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v1

    invoke-virtual {p0, p3, p5}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object p3

    iget-boolean p3, p3, Lf1/d0$c;->a:Z

    if-eqz p3, :cond_26

    return-object v0

    :cond_26
    iget-object p3, p4, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Lf1/d0;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Lf1/d0;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_12

    return-object v7

    :cond_12
    if-nez v2, :cond_15

    return-object v7

    :cond_15
    iget-object v5, v2, Lf1/t;->b:Landroid/view/View;

    if-eqz v3, :cond_1c

    iget-object v8, v3, Lf1/t;->b:Landroid/view/View;

    goto :goto_1d

    :cond_1c
    move-object v8, v7

    :goto_1d
    sget v9, Lf1/k;->save_overlay_view:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v11, 0x1

    if-eqz v10, :cond_2d

    move-object v8, v7

    move/from16 v20, v9

    goto/16 :goto_1ce

    :cond_2d
    if-eqz v8, :cond_3f

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_36

    goto :goto_3f

    :cond_36
    const/4 v10, 0x4

    if-ne v4, v10, :cond_3a

    goto :goto_3c

    :cond_3a
    if-ne v5, v8, :cond_45

    :goto_3c
    move-object v10, v7

    const/4 v13, 0x0

    goto :goto_48

    :cond_3f
    :goto_3f
    if-eqz v8, :cond_45

    move-object v10, v8

    const/4 v13, 0x0

    move-object v8, v7

    goto :goto_48

    :cond_45
    move-object v8, v7

    move-object v10, v8

    move v13, v11

    :goto_48
    if-eqz v13, :cond_1c7

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_56

    move-object/from16 v19, v8

    move/from16 v20, v9

    goto/16 :goto_1c2

    :cond_56
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Landroid/view/View;

    if-eqz v13, :cond_1c7

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v0, v13, v11}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v14

    invoke-virtual {v0, v13, v11}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object v14

    iget-boolean v14, v14, Lf1/d0$c;->a:Z

    if-nez v14, :cond_1a5

    sget-boolean v10, Lf1/s;->a:Z

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sget-object v13, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v13, v5, v10}, Lf1/z;->i0(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual {v13, v1, v10}, Lf1/z;->j0(Landroid/view/View;Landroid/graphics/Matrix;)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/4 v7, 0x0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v10, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v7, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v12, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-boolean v11, Lf1/s;->a:Z

    if-eqz v11, :cond_df

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v11

    const/16 v16, 0x1

    xor-int/lit8 v11, v11, 0x1

    if-nez v1, :cond_da

    goto :goto_e0

    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v17

    goto :goto_e2

    :cond_df
    const/4 v11, 0x0

    :goto_e0
    const/16 v17, 0x0

    :goto_e2
    sget-boolean v18, Lf1/s;->b:Z

    if-eqz v18, :cond_10d

    if-eqz v11, :cond_10d

    if-nez v17, :cond_f1

    move-object/from16 v19, v8

    move/from16 v20, v9

    const/4 v0, 0x0

    goto/16 :goto_188

    :cond_f1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v17

    move-object/from16 v20, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v4, v17

    move-object/from16 v8, v20

    goto :goto_111

    :cond_10d
    move-object/from16 v19, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_111
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v17

    move/from16 v20, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v9, :cond_179

    if-lez v3, :cond_179

    const/high16 v17, 0x49800000  # 1048576.0f

    mul-int v2, v9, v3

    int-to-float v2, v2

    div-float v2, v17, v2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v9

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v9, v13, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v10, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v10, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-boolean v0, Lf1/s;->c:Z

    if-eqz v0, :cond_167

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroidx/appcompat/widget/y;->f(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17a

    :cond_167
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_17a

    :cond_179
    const/4 v0, 0x0

    :goto_17a
    if-eqz v18, :cond_188

    if-eqz v11, :cond_188

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v8, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_188
    :goto_188
    if-eqz v0, :cond_18d

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_18d
    sub-int v0, v15, v7

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v6, v14

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12, v7, v14, v15, v6}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    move-object v10, v12

    goto :goto_1cb

    :cond_1a5
    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1c4

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lf1/n;->mCanRemoveViews:Z

    if-eqz v2, :cond_1cb

    :goto_1c2
    move-object v10, v5

    goto :goto_1cb

    :cond_1c4
    move-object/from16 v0, p0

    goto :goto_1cb

    :cond_1c7
    move-object/from16 v19, v8

    move/from16 v20, v9

    :cond_1cb
    :goto_1cb
    move-object/from16 v8, v19

    const/4 v11, 0x0

    :goto_1ce
    if-eqz v10, :cond_227

    move-object/from16 v2, p2

    if-nez v11, :cond_207

    iget-object v3, v2, Lf1/t;->a:Ljava/util/HashMap;

    const-string v4, "android:visibility:screenLocation"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v7, 0x1

    aget v3, v3, v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v8, v4

    sub-int/2addr v6, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {v10, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v4, v8, v7

    sub-int/2addr v3, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_207
    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v10, v2, v3}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v11, :cond_226

    if-nez v2, :cond_219

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_226

    :cond_219
    move/from16 v3, v20

    invoke-virtual {v5, v3, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v3, Lf1/d0$a;

    invoke-direct {v3, v0, v1, v10, v5}, Lf1/d0$a;-><init>(Lf1/d0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    :cond_226
    :goto_226
    return-object v2

    :cond_227
    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v8, :cond_252

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    sget-object v5, Lf1/w;->a:Lf1/b0;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lf1/b0;->a0(ILandroid/view/View;)V

    invoke-virtual {v0, v1, v8, v2, v3}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_24e

    new-instance v2, Lf1/d0$b;

    move/from16 v3, p5

    invoke-direct {v2, v8, v3}, Lf1/d0$b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {v0, v2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    goto :goto_251

    :cond_24e
    invoke-virtual {v5, v4, v8}, Lf1/b0;->a0(ILandroid/view/View;)V

    :goto_251
    return-object v1

    :cond_252
    const/4 v1, 0x0

    return-object v1
.end method

.method public setMode(I)V
    .registers 3

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    iput p1, p0, Lf1/d0;->mMode:I

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
