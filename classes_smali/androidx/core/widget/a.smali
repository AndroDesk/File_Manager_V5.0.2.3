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

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/a;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/widget/a$a;

    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_8c

    iput-object v2, p0, Landroidx/core/widget/a;->e:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_94

    iput-object v2, p0, Landroidx/core/widget/a;->f:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_9c

    iput-object v2, p0, Landroidx/core/widget/a;->i:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_a4

    iput-object v2, p0, Landroidx/core/widget/a;->j:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_ac

    iput-object v1, p0, Landroidx/core/widget/a;->k:[F

    iput-object p1, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x44c4e000  # 1575.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const v3, 0x439d8000  # 315.0f

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/core/widget/a;->k:[F

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v1, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v5, 0x1

    aput v1, v2, v5

    int-to-float p1, p1

    iget-object v1, p0, Landroidx/core/widget/a;->j:[F

    div-float/2addr p1, v3

    aput p1, v1, v4

    aput p1, v1, v5

    iput v5, p0, Landroidx/core/widget/a;->g:I

    iget-object p1, p0, Landroidx/core/widget/a;->f:[F

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    aput v1, p1, v4

    aput v1, p1, v5

    iget-object p1, p0, Landroidx/core/widget/a;->e:[F

    const v1, 0x3e4ccccd  # 0.2f

    aput v1, p1, v4

    aput v1, p1, v5

    iget-object p1, p0, Landroidx/core/widget/a;->i:[F

    const v1, 0x3a83126f  # 0.001f

    aput v1, p1, v4

    aput v1, p1, v5

    sget p1, Landroidx/core/widget/a;->q:I

    iput p1, p0, Landroidx/core/widget/a;->h:I

    const/16 p1, 0x1f4

    iput p1, v0, Landroidx/core/widget/a$a;->a:I

    iput p1, v0, Landroidx/core/widget/a$a;->b:I

    return-void

    nop

    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data

    :array_9c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a4
    .array-data 4
        0x0
        0x0
    .end array-data

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

    iget-object v0, p0, Landroidx/core/widget/a;->e:[F

    aget v0, v0, p4

    iget-object v1, p0, Landroidx/core/widget/a;->f:[F

    aget v1, v1, p4

    mul-float/2addr v0, p2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/widget/a;->b(FFF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/a;->c(FF)F

    move-result v1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/a;->c(FF)F

    move-result p1

    sub-float/2addr p1, v1

    cmpg-float p2, p1, v2

    if-gez p2, :cond_25

    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    neg-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_2f

    :cond_25
    cmpl-float p2, p1, v2

    if-lez p2, :cond_38

    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_2f
    const/high16 p2, -0x40800000  # -1.0f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, p2, v0}, Landroidx/core/widget/a;->b(FFF)F

    move-result p1

    goto :goto_39

    :cond_38
    move p1, v2

    :goto_39
    cmpl-float p2, p1, v2

    if-nez p2, :cond_3e

    return v2

    :cond_3e
    iget-object v0, p0, Landroidx/core/widget/a;->i:[F

    aget v0, v0, p4

    iget-object v1, p0, Landroidx/core/widget/a;->j:[F

    aget v1, v1, p4

    iget-object v2, p0, Landroidx/core/widget/a;->k:[F

    aget p4, v2, p4

    mul-float/2addr v0, p3

    if-lez p2, :cond_53

    mul-float/2addr p1, v0

    invoke-static {p1, v1, p4}, Landroidx/core/widget/a;->b(FFF)F

    move-result p1

    return p1

    :cond_53
    neg-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1, v1, p4}, Landroidx/core/widget/a;->b(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public final c(FF)F
    .registers 8

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget v1, p0, Landroidx/core/widget/a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_2c

    :cond_11
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2c

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_18
    cmpg-float v3, p1, p2

    if-gez v3, :cond_2c

    cmpl-float v3, p1, v0

    const/high16 v4, 0x3f800000  # 1.0f

    if-ltz v3, :cond_25

    div-float/2addr p1, p2

    sub-float/2addr v4, p1

    return v4

    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/a;->o:Z

    if-eqz p1, :cond_2c

    if-ne v1, v2, :cond_2c

    return v4

    :cond_2c
    :goto_2c
    return v0
.end method

.method public final d()V
    .registers 7

    iget-boolean v0, p0, Landroidx/core/widget/a;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Landroidx/core/widget/a;->o:Z

    goto :goto_2a

    :cond_8
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/core/widget/a$a;->e:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    iget v5, v0, Landroidx/core/widget/a$a;->b:I

    if-le v4, v5, :cond_1c

    move v1, v5

    goto :goto_20

    :cond_1c
    if-gez v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v4

    :goto_20
    iput v1, v0, Landroidx/core/widget/a$a;->i:I

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/a$a;->a(J)F

    move-result v1

    iput v1, v0, Landroidx/core/widget/a$a;->h:F

    iput-wide v2, v0, Landroidx/core/widget/a$a;->g:J

    :goto_2a
    return-void
.end method

.method public final e()Z
    .registers 10

    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    iget v1, v0, Landroidx/core/widget/a$a;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroidx/core/widget/a$a;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    move-object v4, p0

    check-cast v4, Landroidx/core/widget/f;

    iget-object v4, v4, Landroidx/core/widget/f;->r:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    if-nez v5, :cond_23

    :cond_21
    :goto_21
    move v1, v3

    goto :goto_51

    :cond_23
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    add-int v8, v7, v6

    if-lez v1, :cond_41

    if-lt v8, v5, :cond_50

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gt v1, v4, :cond_50

    goto :goto_21

    :cond_41
    if-gez v1, :cond_21

    if-gtz v7, :cond_50

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_50

    goto :goto_21

    :cond_50
    move v1, v2

    :goto_51
    if-nez v1, :cond_54

    :cond_53
    move v2, v3

    :cond_54
    return v2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_7f

    :cond_16
    invoke-virtual {p0}, Landroidx/core/widget/a;->d()V

    goto :goto_7f

    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/a;->n:Z

    iput-boolean v1, p0, Landroidx/core/widget/a;->l:Z

    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Landroidx/core/widget/a;->a(FFFI)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, p2, p1, v3, v2}, Landroidx/core/widget/a;->a(FFFI)F

    move-result p1

    iget-object p2, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    iput v0, p2, Landroidx/core/widget/a$a;->c:F

    iput p1, p2, Landroidx/core/widget/a$a;->d:F

    iget-boolean p1, p0, Landroidx/core/widget/a;->o:Z

    if-nez p1, :cond_7f

    invoke-virtual {p0}, Landroidx/core/widget/a;->e()Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    if-nez p1, :cond_61

    new-instance p1, Landroidx/core/widget/a$b;

    invoke-direct {p1, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    iput-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    :cond_61
    iput-boolean v2, p0, Landroidx/core/widget/a;->o:Z

    iput-boolean v2, p0, Landroidx/core/widget/a;->m:Z

    iget-boolean p1, p0, Landroidx/core/widget/a;->l:Z

    if-nez p1, :cond_78

    iget p1, p0, Landroidx/core/widget/a;->h:I

    if-lez p1, :cond_78

    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/View;

    iget-object v0, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    int-to-long v3, p1

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2, v0, v3, v4}, Lm0/g0$d;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_7d

    :cond_78
    iget-object p1, p0, Landroidx/core/widget/a;->d:Landroidx/core/widget/a$b;

    invoke-virtual {p1}, Landroidx/core/widget/a$b;->run()V

    :goto_7d
    iput-boolean v2, p0, Landroidx/core/widget/a;->l:Z

    :cond_7f
    :goto_7f
    return v1
.end method
