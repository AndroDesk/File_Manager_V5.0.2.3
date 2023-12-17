.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/a$a;,
        Landroidx/core/widget/a$b;
    }
.end annotation


# static fields
.field public static final q:I


# instance fields
.field public final a:Landroidx/core/widget/a$a;

.field public final b:Landroid/view/animation/AccelerateInterpolator;

.field public final c:Landroid/view/View;

.field public d:Landroidx/core/widget/a$b;

.field public e:[F

.field public f:[F

.field public g:I

.field public h:I

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 4
    move-result v0

    .line 5
    sput v0, Landroidx/core/widget/a;->q:I

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/core/widget/a$a;

    .line 6
    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 13
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 16
    iput-object v1, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [F

    .line 21
    fill-array-data v2, :array_8c

    .line 24
    iput-object v2, p0, Landroidx/core/widget/a;->e:[F

    .line 26
    new-array v2, v1, [F

    .line 28
    fill-array-data v2, :array_94

    .line 31
    iput-object v2, p0, Landroidx/core/widget/a;->f:[F

    .line 33
    new-array v2, v1, [F

    .line 35
    fill-array-data v2, :array_9c

    .line 38
    iput-object v2, p0, Landroidx/core/widget/a;->i:[F

    .line 40
    new-array v2, v1, [F

    .line 42
    fill-array-data v2, :array_a4

    .line 45
    iput-object v2, p0, Landroidx/core/widget/a;->j:[F

    .line 47
    new-array v1, v1, [F

    .line 49
    fill-array-data v1, :array_ac

    .line 52
    iput-object v1, p0, Landroidx/core/widget/a;->k:[F

    .line 54
    iput-object p1, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    move-result-object p1

    .line 64
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 66
    const v1, 0x44c4e000  # 1575.0f

    .line 69
    mul-float/2addr v1, p1

    .line 70
    const/high16 v2, 0x3f000000  # 0.5f

    .line 72
    add-float/2addr v1, v2

    .line 73
    float-to-int v1, v1

    .line 74
    const v3, 0x439d8000  # 315.0f

    .line 77
    mul-float/2addr p1, v3

    .line 78
    add-float/2addr p1, v2

    .line 79
    float-to-int p1, p1

    .line 80
    int-to-float v1, v1

    .line 81
    iget-object v2, p0, Landroidx/core/widget/a;->k:[F

    .line 83
    const/high16 v3, 0x447a0000  # 1000.0f

    .line 85
    div-float/2addr v1, v3

    .line 86
    const/4 v4, 0x0

    .line 87
    aput v1, v2, v4

    .line 89
    const/4 v5, 0x1

    .line 90
    aput v1, v2, v5

    .line 92
    int-to-float p1, p1

    .line 93
    iget-object v1, p0, Landroidx/core/widget/a;->j:[F

    .line 95
    div-float/2addr p1, v3

    .line 96
    aput p1, v1, v4

    .line 98
    aput p1, v1, v5

    .line 100
    iput v5, p0, Landroidx/core/widget/a;->g:I

    .line 102
    iget-object p1, p0, Landroidx/core/widget/a;->f:[F

    .line 104
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 107
    aput v1, p1, v4

    .line 109
    aput v1, p1, v5

    .line 111
    iget-object p1, p0, Landroidx/core/widget/a;->e:[F

    .line 113
    const v1, 0x3e4ccccd  # 0.2f

    .line 116
    aput v1, p1, v4

    .line 118
    aput v1, p1, v5

    .line 120
    iget-object p1, p0, Landroidx/core/widget/a;->i:[F

    .line 122
    const v1, 0x3a83126f  # 0.001f

    .line 125
    aput v1, p1, v4

    .line 127
    aput v1, p1, v5

    .line 129
    sget p1, Landroidx/core/widget/a;->q:I

    .line 131
    iput p1, p0, Landroidx/core/widget/a;->h:I

    .line 133
    const/16 p1, 0x1f4

    .line 135
    iput p1, v0, Landroidx/core/widget/a$a;->a:I

    .line 137
    iput p1, v0, Landroidx/core/widget/a$a;->b:I

    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 149
    :array_94
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data

    .line 157
    :array_9c
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 165
    :array_a4
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 173
    :array_ac
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method


# virtual methods
.method public final a(FFFI)F
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->e:[F

    .line 3
    aget v0, v0, p4

    .line 5
    iget-object v1, p0, Landroidx/core/widget/a;->f:[F

    .line 7
    aget v1, v1, p4

    .line 9
    mul-float/2addr v0, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Landroidx/core/widget/a;->b(FFF)F

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/a;->c(FF)F

    .line 18
    move-result v1

    .line 19
    sub-float/2addr p2, p1

    .line 20
    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/a;->c(FF)F

    .line 23
    move-result p1

    .line 24
    sub-float/2addr p1, v1

    .line 25
    cmpg-float p2, p1, v2

    .line 27
    if-gez p2, :cond_25

    .line 29
    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 31
    neg-float p1, p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 35
    move-result p1

    .line 36
    neg-float p1, p1

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    cmpl-float p2, p1, v2

    .line 40
    if-lez p2, :cond_38

    .line 42
    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 47
    move-result p1

    .line 48
    :goto_2f
    const/high16 p2, -0x40800000  # -1.0f

    .line 50
    const/high16 v0, 0x3f800000  # 1.0f

    .line 52
    invoke-static {p1, p2, v0}, Landroidx/core/widget/a;->b(FFF)F

    .line 55
    move-result p1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move p1, v2

    .line 58
    :goto_39
    cmpl-float p2, p1, v2

    .line 60
    if-nez p2, :cond_3e

    .line 62
    return v2

    .line 63
    :cond_3e
    iget-object v0, p0, Landroidx/core/widget/a;->i:[F

    .line 65
    aget v0, v0, p4

    .line 67
    iget-object v1, p0, Landroidx/core/widget/a;->j:[F

    .line 69
    aget v1, v1, p4

    .line 71
    iget-object v2, p0, Landroidx/core/widget/a;->k:[F

    .line 73
    aget p4, v2, p4

    .line 75
    mul-float/2addr v0, p3

    .line 76
    if-lez p2, :cond_53

    .line 78
    mul-float/2addr p1, v0

    .line 79
    invoke-static {p1, v1, p4}, Landroidx/core/widget/a;->b(FFF)F

    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :cond_53
    neg-float p1, p1

    .line 85
    mul-float/2addr p1, v0

    .line 86
    invoke-static {p1, v1, p4}, Landroidx/core/widget/a;->b(FFF)F

    .line 89
    move-result p1

    .line 90
    neg-float p1, p1

    .line 91
    return p1
.end method

.method public final c(FF)F
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 4
    if-nez v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Landroidx/core/widget/a;->g:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_18

    .line 12
    if-eq v1, v2, :cond_18

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_11

    .line 17
    goto :goto_2c

    .line 18
    :cond_11
    cmpg-float v1, p1, v0

    .line 20
    if-gez v1, :cond_2c

    .line 22
    neg-float p2, p2

    .line 23
    div-float/2addr p1, p2

    .line 24
    return p1

    .line 25
    :cond_18
    cmpg-float v3, p1, p2

    .line 27
    if-gez v3, :cond_2c

    .line 29
    cmpl-float v3, p1, v0

    .line 31
    const/high16 v4, 0x3f800000  # 1.0f

    .line 33
    if-ltz v3, :cond_25

    .line 35
    div-float/2addr p1, p2

    .line 36
    sub-float/2addr v4, p1

    .line 37
    return v4

    .line 38
    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/a;->o:Z

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    if-ne v1, v2, :cond_2c

    .line 44
    return v4

    .line 45
    :cond_2c
    :goto_2c
    return v0
.end method

.method public final d()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->m:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    iput-boolean v1, p0, Landroidx/core/widget/a;->o:Z

    .line 8
    goto :goto_2a

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, v0, Landroidx/core/widget/a$a;->e:J

    .line 20
    sub-long v4, v2, v4

    .line 22
    long-to-int v4, v4

    .line 23
    iget v5, v0, Landroidx/core/widget/a$a;->b:I

    .line 25
    if-le v4, v5, :cond_1c

    .line 27
    move v1, v5

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    if-gez v4, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v1, v4

    .line 33
    :goto_20
    iput v1, v0, Landroidx/core/widget/a$a;->i:I

    .line 35
    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/a$a;->a(J)F

    .line 38
    move-result v1

    .line 39
    iput v1, v0, Landroidx/core/widget/a$a;->h:F

    .line 41
    iput-wide v2, v0, Landroidx/core/widget/a$a;->g:J

    .line 43
    :goto_2a
    return-void
.end method

.method public final e()Z
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 3
    iget v1, v0, Landroidx/core/widget/a$a;->d:F

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, Landroidx/core/widget/a$a;->c:F

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result v2

    .line 17
    div-float/2addr v0, v2

    .line 18
    float-to-int v0, v0

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_53

    .line 23
    move-object v4, p0

    .line 24
    check-cast v4, Landroidx/core/widget/f;

    .line 26
    iget-object v4, v4, Landroidx/core/widget/f;->r:Landroid/widget/ListView;

    .line 28
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_23

    .line 34
    :cond_21
    :goto_21
    move v1, v3

    .line 35
    goto :goto_51

    .line 36
    :cond_23
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    move-result v6

    .line 40
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 43
    move-result v7

    .line 44
    add-int v8, v7, v6

    .line 46
    if-lez v1, :cond_41

    .line 48
    if-lt v8, v5, :cond_50

    .line 50
    sub-int/2addr v6, v2

    .line 51
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 58
    move-result v1

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 62
    move-result v4

    .line 63
    if-gt v1, v4, :cond_50

    .line 65
    goto :goto_21

    .line 66
    :cond_41
    if-gez v1, :cond_21

    .line 68
    if-gtz v7, :cond_50

    .line 70
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 77
    move-result v1

    .line 78
    if-ltz v1, :cond_50

    .line 80
    goto :goto_21

    .line 81
    :cond_50
    move v1, v2

    .line 82
    :goto_51
    if-nez v1, :cond_54

    .line 84
    :cond_53
    move v2, v3

    .line 85
    :cond_54
    return v2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    if-eq v0, v2, :cond_16

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_1e

    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_16

    .line 22
    goto :goto_7f

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroidx/core/widget/a;->d()V

    .line 26
    goto :goto_7f

    .line 27
    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/a;->n:Z

    .line 29
    iput-boolean v1, p0, Landroidx/core/widget/a;->l:Z

    .line 31
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    iget-object v4, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v4

    .line 46
    int-to-float v4, v4

    .line 47
    invoke-virtual {p0, v0, v3, v4, v1}, Landroidx/core/widget/a;->a(FFFI)F

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    iget-object v3, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    invoke-virtual {p0, p2, p1, v3, v2}, Landroidx/core/widget/a;->a(FFFI)F

    .line 70
    move-result p1

    .line 71
    iget-object p2, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 73
    iput v0, p2, Landroidx/core/widget/a$a;->c:F

    .line 75
    iput p1, p2, Landroidx/core/widget/a$a;->d:F

    .line 77
    iget-boolean p1, p0, Landroidx/core/widget/a;->o:Z

    .line 79
    if-nez p1, :cond_7f

    .line 81
    invoke-virtual {p0}, Landroidx/core/widget/a;->e()Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7f

    .line 87
    iget-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    .line 89
    if-nez p1, :cond_61

    .line 91
    new-instance p1, Landroidx/core/widget/a$b;

    .line 93
    invoke-direct {p1, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    .line 96
    iput-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    .line 98
    :cond_61
    iput-boolean v2, p0, Landroidx/core/widget/a;->o:Z

    .line 100
    iput-boolean v2, p0, Landroidx/core/widget/a;->m:Z

    .line 102
    iget-boolean p1, p0, Landroidx/core/widget/a;->l:Z

    .line 104
    if-nez p1, :cond_78

    .line 106
    iget p1, p0, Landroidx/core/widget/a;->h:I

    .line 108
    if-lez p1, :cond_78

    .line 110
    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 112
    iget-object v0, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    .line 114
    int-to-long v3, p1

    .line 115
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 117
    invoke-static {p2, v0, v3, v4}, Lm0/g0$d;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 120
    goto :goto_7d

    .line 121
    :cond_78
    iget-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    .line 123
    invoke-virtual {p1}, Landroidx/core/widget/a$b;->run()V

    .line 126
    :goto_7d
    iput-boolean v2, p0, Landroidx/core/widget/a;->l:Z

    .line 128
    :cond_7f
    :goto_7f
    return v1
.end method
