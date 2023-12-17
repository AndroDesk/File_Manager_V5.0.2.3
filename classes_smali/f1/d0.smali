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

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 3
    const-string v1, "android:visibility:parent"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lf1/d0;->sTransitionProperties:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lf1/n;-><init>()V

    const/4 v0, 0x3

    .line 2
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

    .line 3
    invoke-direct {p0, p1, p2}, Lf1/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lf1/d0;->mMode:I

    .line 5
    sget-object v0, Lf1/m;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1d

    .line 8
    invoke-virtual {p0, p2}, Lf1/d0;->setMode(I)V

    :cond_1d
    return-void
.end method

.method private captureValues(Lf1/t;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android:visibility:visibility"

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 20
    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android:visibility:parent"

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [I

    .line 34
    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 41
    const-string v1, "android:visibility:screenLocation"

    .line 43
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;
    .registers 10

    .line 1
    new-instance v0, Lf1/d0$c;

    .line 3
    invoke-direct {v0}, Lf1/d0$c;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lf1/d0$c;->a:Z

    .line 9
    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    .line 11
    const-string v2, "android:visibility:parent"

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    const-string v5, "android:visibility:visibility"

    .line 17
    if-eqz p1, :cond_33

    .line 19
    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_33

    .line 27
    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v6

    .line 39
    iput v6, v0, Lf1/d0$c;->c:I

    .line 41
    iget-object v6, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 43
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/view/ViewGroup;

    .line 49
    iput-object v6, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    .line 51
    goto :goto_37

    .line 52
    :cond_33
    iput v4, v0, Lf1/d0$c;->c:I

    .line 54
    iput-object v3, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    .line 56
    :goto_37
    if-eqz p2, :cond_5a

    .line 58
    iget-object v6, p2, Lf1/t;->a:Ljava/util/HashMap;

    .line 60
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_5a

    .line 66
    iget-object v3, p2, Lf1/t;->a:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v3

    .line 78
    iput v3, v0, Lf1/d0$c;->d:I

    .line 80
    iget-object v3, p2, Lf1/t;->a:Ljava/util/HashMap;

    .line 82
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/view/ViewGroup;

    .line 88
    iput-object v2, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    .line 90
    goto :goto_5e

    .line 91
    :cond_5a
    iput v4, v0, Lf1/d0$c;->d:I

    .line 93
    iput-object v3, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    .line 95
    :goto_5e
    const/4 v2, 0x1

    .line 96
    if-eqz p1, :cond_92

    .line 98
    if-eqz p2, :cond_92

    .line 100
    iget p1, v0, Lf1/d0$c;->c:I

    .line 102
    iget p2, v0, Lf1/d0$c;->d:I

    .line 104
    if-ne p1, p2, :cond_70

    .line 106
    iget-object v3, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    .line 108
    iget-object v4, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    .line 110
    if-ne v3, v4, :cond_70

    .line 112
    return-object v0

    .line 113
    :cond_70
    if-eq p1, p2, :cond_80

    .line 115
    if-nez p1, :cond_79

    .line 117
    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    .line 119
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 121
    goto :goto_a7

    .line 122
    :cond_79
    if-nez p2, :cond_a7

    .line 124
    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    .line 126
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 128
    goto :goto_a7

    .line 129
    :cond_80
    iget-object p1, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    .line 131
    if-nez p1, :cond_89

    .line 133
    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    .line 135
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 137
    goto :goto_a7

    .line 138
    :cond_89
    iget-object p1, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    .line 140
    if-nez p1, :cond_a7

    .line 142
    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    .line 144
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 146
    goto :goto_a7

    .line 147
    :cond_92
    if-nez p1, :cond_9d

    .line 149
    iget p1, v0, Lf1/d0$c;->d:I

    .line 151
    if-nez p1, :cond_9d

    .line 153
    iput-boolean v2, v0, Lf1/d0$c;->b:Z

    .line 155
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 157
    goto :goto_a7

    .line 158
    :cond_9d
    if-nez p2, :cond_a7

    .line 160
    iget p1, v0, Lf1/d0$c;->c:I

    .line 162
    if-nez p1, :cond_a7

    .line 164
    iput-boolean v1, v0, Lf1/d0$c;->b:Z

    .line 166
    iput-boolean v2, v0, Lf1/d0$c;->a:Z

    .line 168
    :cond_a7
    :goto_a7
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf1/d0;->captureValues(Lf1/t;)V

    .line 4
    return-void
.end method

.method public captureStartValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf1/d0;->captureValues(Lf1/t;)V

    .line 4
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 12

    .line 1
    invoke-direct {p0, p2, p3}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lf1/d0$c;->a:Z

    .line 7
    if-eqz v1, :cond_2e

    .line 9
    iget-object v1, v0, Lf1/d0$c;->e:Landroid/view/ViewGroup;

    .line 11
    if-nez v1, :cond_10

    .line 13
    iget-object v1, v0, Lf1/d0$c;->f:Landroid/view/ViewGroup;

    .line 15
    if-eqz v1, :cond_2e

    .line 17
    :cond_10
    iget-boolean v1, v0, Lf1/d0$c;->b:Z

    .line 19
    if-eqz v1, :cond_21

    .line 21
    iget v5, v0, Lf1/d0$c;->c:I

    .line 23
    iget v7, v0, Lf1/d0$c;->d:I

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v6, p3

    .line 29
    invoke-virtual/range {v2 .. v7}, Lf1/d0;->onAppear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    iget v3, v0, Lf1/d0$c;->c:I

    .line 36
    iget v5, v0, Lf1/d0$c;->d:I

    .line 38
    move-object v0, p0

    .line 39
    move-object v1, p1

    .line 40
    move-object v2, p2

    .line 41
    move-object v4, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2e
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public getMode()I
    .registers 2

    .line 1
    iget v0, p0, Lf1/d0;->mMode:I

    .line 3
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lf1/d0;->sTransitionProperties:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isTransitionRequired(Lf1/t;Lf1/t;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_6

    .line 4
    if-nez p2, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    if-eqz p1, :cond_1b

    .line 9
    if-eqz p2, :cond_1b

    .line 11
    iget-object v1, p2, Lf1/t;->a:Ljava/util/HashMap;

    .line 13
    const-string v2, "android:visibility:visibility"

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    iget-object v3, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eq v1, v2, :cond_1b

    .line 27
    return v0

    .line 28
    :cond_1b
    invoke-direct {p0, p1, p2}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    .line 31
    move-result-object p1

    .line 32
    iget-boolean p2, p1, Lf1/d0$c;->a:Z

    .line 34
    if-eqz p2, :cond_2c

    .line 36
    iget p2, p1, Lf1/d0$c;->c:I

    .line 38
    if-eqz p2, :cond_2b

    .line 40
    iget p1, p1, Lf1/d0$c;->d:I

    .line 42
    if-nez p1, :cond_2c

    .line 44
    :cond_2b
    const/4 v0, 0x1

    .line 45
    :cond_2c
    return v0
.end method

.method public isVisible(Lf1/t;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 7
    const-string v2, "android:visibility:visibility"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v1

    .line 19
    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 21
    const-string v2, "android:visibility:parent"

    .line 23
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/View;

    .line 29
    if-nez v1, :cond_21

    .line 31
    if-eqz p1, :cond_21

    .line 33
    const/4 v0, 0x1

    .line 34
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

    .line 1
    iget p3, p0, Lf1/d0;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2d

    if-nez p4, :cond_a

    goto :goto_2d

    :cond_a
    if-nez p2, :cond_26

    .line 2
    iget-object p3, p4, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 3
    invoke-virtual {p0, p3, p5}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p3, p5}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object p3

    .line 5
    invoke-direct {p0, v1, p3}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object p3

    .line 6
    iget-boolean p3, p3, Lf1/d0$c;->a:Z

    if-eqz p3, :cond_26

    return-object v0

    .line 7
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

    .line 1
    iget v5, v0, Lf1/d0;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_12

    return-object v7

    :cond_12
    if-nez v2, :cond_15

    return-object v7

    .line 2
    :cond_15
    iget-object v5, v2, Lf1/t;->b:Landroid/view/View;

    if-eqz v3, :cond_1c

    .line 3
    iget-object v8, v3, Lf1/t;->b:Landroid/view/View;

    goto :goto_1d

    :cond_1c
    move-object v8, v7

    .line 4
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

    .line 5
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

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_56

    move-object/from16 v19, v8

    move/from16 v20, v9

    goto/16 :goto_1c2

    .line 7
    :cond_56
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Landroid/view/View;

    if-eqz v13, :cond_1c7

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 9
    invoke-virtual {v0, v13, v11}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v14

    .line 10
    invoke-virtual {v0, v13, v11}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v15

    .line 11
    invoke-direct {v0, v14, v15}, Lf1/d0;->getVisibilityChangeInfo(Lf1/t;Lf1/t;)Lf1/d0$c;

    move-result-object v14

    .line 12
    iget-boolean v14, v14, Lf1/d0$c;->a:Z

    if-nez v14, :cond_1a5

    .line 13
    sget-boolean v10, Lf1/s;->a:Z

    .line 14
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 16
    sget-object v13, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v13, v5, v10}, Lf1/z;->i0(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 17
    invoke-virtual {v13, v1, v10}, Lf1/z;->j0(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 18
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/4 v7, 0x0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 19
    invoke-virtual {v10, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 20
    iget v7, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 21
    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 22
    iget v15, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 23
    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 24
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v12, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    sget-boolean v11, Lf1/s;->a:Z

    if-eqz v11, :cond_df

    .line 27
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v11

    const/16 v16, 0x1

    xor-int/lit8 v11, v11, 0x1

    if-nez v1, :cond_da

    goto :goto_e0

    .line 28
    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v17

    goto :goto_e2

    :cond_df
    const/4 v11, 0x0

    :goto_e0
    const/16 v17, 0x0

    .line 29
    :goto_e2
    sget-boolean v18, Lf1/s;->b:Z

    if-eqz v18, :cond_10d

    if-eqz v11, :cond_10d

    if-nez v17, :cond_f1

    move-object/from16 v19, v8

    move/from16 v20, v9

    const/4 v0, 0x0

    goto/16 :goto_188

    .line 30
    :cond_f1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    check-cast v8, Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v17

    move-object/from16 v20, v8

    .line 32
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

    .line 33
    :goto_111
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v17

    move/from16 v20, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 34
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

    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v9

    mul-float/2addr v2, v0

    .line 36
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 37
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 38
    iget v9, v13, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v10, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    invoke-virtual {v10, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 40
    sget-boolean v0, Lf1/s;->c:Z

    if-eqz v0, :cond_167

    .line 41
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 42
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 46
    invoke-static {v0}, Landroidx/appcompat/widget/y;->f(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17a

    .line 47
    :cond_167
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 50
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_17a

    :cond_179
    const/4 v0, 0x0

    :goto_17a
    if-eqz v18, :cond_188

    if-eqz v11, :cond_188

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 52
    invoke-virtual {v8, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_188
    :goto_188
    if-eqz v0, :cond_18d

    .line 53
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_18d
    sub-int v0, v15, v7

    const/high16 v2, 0x40000000  # 2.0f

    .line 54
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v6, v14

    .line 55
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 56
    invoke-virtual {v12, v0, v2}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-virtual {v12, v7, v14, v15, v6}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    move-object v10, v12

    goto :goto_1cb

    :cond_1a5
    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 58
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v0

    .line 59
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1c4

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c4

    .line 60
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

    .line 61
    iget-object v3, v2, Lf1/t;->a:Ljava/util/HashMap;

    const-string v4, "android:visibility:screenLocation"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    .line 62
    aget v6, v3, v4

    const/4 v7, 0x1

    .line 63
    aget v3, v3, v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 64
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v8, v4

    sub-int/2addr v6, v4

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {v10, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v4, v8, v7

    sub-int/2addr v3, v4

    .line 66
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_207
    move-object/from16 v3, p4

    .line 69
    invoke-virtual {v0, v1, v10, v2, v3}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v11, :cond_226

    if-nez v2, :cond_219

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v10}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_226

    :cond_219
    move/from16 v3, v20

    .line 72
    invoke-virtual {v5, v3, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 73
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

    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 75
    sget-object v5, Lf1/w;->a:Lf1/b0;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lf1/b0;->a0(ILandroid/view/View;)V

    .line 76
    invoke-virtual {v0, v1, v8, v2, v3}, Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_24e

    .line 77
    new-instance v2, Lf1/d0$b;

    move/from16 v3, p5

    invoke-direct {v2, v8, v3}, Lf1/d0$b;-><init>(Landroid/view/View;I)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 80
    invoke-virtual {v0, v2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    goto :goto_251

    .line 81
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

    .line 1
    and-int/lit8 v0, p1, -0x4

    .line 3
    if-nez v0, :cond_7

    .line 5
    iput p1, p0, Lf1/d0;->mMode:I

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method
