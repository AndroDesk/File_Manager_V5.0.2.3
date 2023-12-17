.class public final Ly/m;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field public A:F

.field public B:Z

.field public a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public d:Ly/o;

.field public e:Ly/o;

.field public f:Ly/l;

.field public g:Ly/l;

.field public h:[Lu/b;

.field public i:Lu/a;

.field public j:F

.field public k:[I

.field public l:[D

.field public m:[D

.field public n:[Ljava/lang/String;

.field public o:[I

.field public p:[F

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/o;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/d;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/d;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/b;",
            ">;"
        }
    .end annotation
.end field

.field public v:[Ly/k;

.field public w:I

.field public x:I

.field public y:Landroid/view/View;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/m;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Ly/m;->c:I

    new-instance v2, Ly/o;

    invoke-direct {v2}, Ly/o;-><init>()V

    iput-object v2, p0, Ly/m;->d:Ly/o;

    new-instance v2, Ly/o;

    invoke-direct {v2}, Ly/o;-><init>()V

    iput-object v2, p0, Ly/m;->e:Ly/o;

    new-instance v2, Ly/l;

    invoke-direct {v2}, Ly/l;-><init>()V

    iput-object v2, p0, Ly/m;->f:Ly/l;

    new-instance v2, Ly/l;

    invoke-direct {v2}, Ly/l;-><init>()V

    iput-object v2, p0, Ly/m;->g:Ly/l;

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Ly/m;->j:F

    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Ly/m;->p:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ly/m;->q:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ly/m;->r:Ljava/util/ArrayList;

    iput v1, p0, Ly/m;->w:I

    iput v1, p0, Ly/m;->x:I

    const/4 v2, 0x0

    iput-object v2, p0, Ly/m;->y:Landroid/view/View;

    iput v1, p0, Ly/m;->z:I

    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Ly/m;->A:F

    iput-boolean v0, p0, Ly/m;->B:Z

    iput-object p1, p0, Ly/m;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v0, :cond_62

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_62
    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p2, :cond_9

    aput v2, p2, v1

    goto :goto_26

    :cond_9
    iget v3, p0, Ly/m;->j:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_26

    cmpg-float v4, p1, v0

    if-gez v4, :cond_17

    move p1, v0

    :cond_17
    cmpl-float v4, p1, v0

    if-lez v4, :cond_26

    float-to-double v4, p1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_26

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_26
    :goto_26
    iget-object v3, p0, Ly/m;->d:Ly/o;

    iget-object v3, v3, Ly/o;->a:Lu/c;

    const/high16 v4, 0x7fc00000  # Float.NaN

    iget-object v5, p0, Ly/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly/o;

    iget-object v7, v6, Ly/o;->a:Lu/c;

    if-eqz v7, :cond_32

    iget v8, v6, Ly/o;->b:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4b

    move-object v3, v7

    move v0, v8

    goto :goto_32

    :cond_4b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_32

    iget v4, v6, Ly/o;->b:F

    goto :goto_32

    :cond_54
    if-eqz v3, :cond_72

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v2, v4

    :goto_5e
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Lu/c;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    if-eqz p2, :cond_72

    invoke-virtual {v3, v4, v5}, Lu/c;->b(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p2, v1

    :cond_72
    return p1
.end method

.method public final b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Ly/m;->a(F[F)F

    move-result v2

    iget v3, v0, Ly/m;->z:I

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, -0x1

    if-eq v3, v5, :cond_38

    int-to-float v3, v3

    div-float v3, v4, v3

    div-float v5, v2, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v6, v0, Ly/m;->A:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_2c

    iget v6, v0, Ly/m;->A:F

    add-float/2addr v2, v6

    rem-float/2addr v2, v4

    :cond_2c
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    cmpl-double v2, v8, v10

    if-lez v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    mul-float/2addr v4, v3

    add-float v2, v4, v5

    :cond_38
    move v8, v2

    iget-object v2, v0, Ly/m;->t:Ljava/util/HashMap;

    if-eqz v2, :cond_55

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx/c;

    invoke-virtual {v3, v8, v7}, Lx/c;->d(FLandroid/view/View;)V

    goto :goto_45

    :cond_55
    iget-object v2, v0, Ly/m;->s:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v1

    move v12, v9

    :goto_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/d;

    instance-of v2, v1, Lx/d$d;

    if-eqz v2, :cond_78

    move-object v11, v1

    check-cast v11, Lx/d$d;

    goto :goto_64

    :cond_78
    move v2, v8

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lx/d;->e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_64

    :cond_85
    move-object v11, v1

    move v12, v9

    :cond_87
    iget-object v1, v0, Ly/m;->h:[Lu/b;

    if-eqz v1, :cond_2fe

    aget-object v1, v1, v9

    float-to-double v13, v8

    iget-object v2, v0, Ly/m;->l:[D

    invoke-virtual {v1, v13, v14, v2}, Lu/b;->c(D[D)V

    iget-object v1, v0, Ly/m;->h:[Lu/b;

    aget-object v1, v1, v9

    iget-object v2, v0, Ly/m;->m:[D

    invoke-virtual {v1, v13, v14, v2}, Lu/b;->e(D[D)V

    iget-object v1, v0, Ly/m;->i:Lu/a;

    if-eqz v1, :cond_af

    iget-object v2, v0, Ly/m;->l:[D

    array-length v3, v2

    if-lez v3, :cond_af

    invoke-virtual {v1, v13, v14, v2}, Lu/a;->c(D[D)V

    iget-object v1, v0, Ly/m;->i:Lu/a;

    iget-object v2, v0, Ly/m;->m:[D

    invoke-virtual {v1, v13, v14, v2}, Lu/a;->e(D[D)V

    :cond_af
    iget-boolean v1, v0, Ly/m;->B:Z

    if-nez v1, :cond_1cd

    iget-object v1, v0, Ly/m;->d:Ly/o;

    iget-object v2, v0, Ly/m;->k:[I

    iget-object v3, v0, Ly/m;->l:[D

    iget-object v4, v0, Ly/m;->m:[D

    iget-boolean v5, v0, Ly/m;->b:Z

    iget v6, v1, Ly/o;->d:F

    iget v9, v1, Ly/o;->e:F

    iget v10, v1, Ly/o;->f:F

    iget v15, v1, Ly/o;->g:F

    move/from16 p1, v6

    array-length v6, v2

    if-eqz v6, :cond_e6

    iget-object v6, v1, Ly/o;->l:[D

    array-length v6, v6

    move/from16 v16, v9

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget v9, v2, v9

    if-gt v6, v9, :cond_e8

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    new-array v9, v6, [D

    iput-object v9, v1, Ly/o;->l:[D

    new-array v6, v6, [D

    iput-object v6, v1, Ly/o;->m:[D

    goto :goto_e8

    :cond_e6
    move/from16 v16, v9

    :cond_e8
    :goto_e8
    iget-object v6, v1, Ly/o;->l:[D

    move/from16 v17, v10

    const-wide/high16 v9, 0x7ff8000000000000L  # Double.NaN

    invoke-static {v6, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v6, 0x0

    :goto_f2
    array-length v9, v2

    if-ge v6, v9, :cond_106

    iget-object v9, v1, Ly/o;->l:[D

    aget v10, v2, v6

    aget-wide v18, v3, v6

    aput-wide v18, v9, v10

    iget-object v9, v1, Ly/o;->m:[D

    aget-wide v18, v4, v6

    aput-wide v18, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_f2

    :cond_106
    const/high16 v2, 0x7fc00000  # Float.NaN

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v20, v13

    move/from16 v18, v15

    move v15, v10

    move v10, v9

    move/from16 v9, p1

    :goto_115
    iget-object v13, v1, Ly/o;->l:[D

    array-length v14, v13

    if-ge v3, v14, :cond_165

    aget-wide v22, v13, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_123

    goto :goto_162

    :cond_123
    iget-object v13, v1, Ly/o;->l:[D

    aget-wide v22, v13, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    const-wide/16 v22, 0x0

    if-eqz v13, :cond_130

    goto :goto_136

    :cond_130
    iget-object v13, v1, Ly/o;->l:[D

    aget-wide v24, v13, v3

    add-double v22, v24, v22

    :goto_136
    move-wide/from16 v13, v22

    double-to-float v13, v13

    iget-object v14, v1, Ly/o;->m:[D

    move/from16 v19, v13

    aget-wide v13, v14, v3

    double-to-float v13, v13

    const/4 v14, 0x1

    if-eq v3, v14, :cond_15f

    const/4 v14, 0x2

    if-eq v3, v14, :cond_15b

    const/4 v14, 0x3

    if-eq v3, v14, :cond_157

    const/4 v14, 0x4

    if-eq v3, v14, :cond_153

    const/4 v13, 0x5

    if-eq v3, v13, :cond_150

    goto :goto_162

    :cond_150
    move/from16 v2, v19

    goto :goto_162

    :cond_153
    move v10, v13

    move/from16 v18, v19

    goto :goto_162

    :cond_157
    move v4, v13

    move/from16 v17, v19

    goto :goto_162

    :cond_15b
    move v15, v13

    move/from16 v16, v19

    goto :goto_162

    :cond_15f
    move v6, v13

    move/from16 v9, v19

    :goto_162
    add-int/lit8 v3, v3, 0x1

    goto :goto_115

    :cond_165
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_187

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v4, v1

    add-float/2addr v4, v6

    div-float/2addr v10, v1

    add-float/2addr v10, v15

    const/4 v1, 0x0

    float-to-double v13, v1

    float-to-double v1, v2

    move-object/from16 p1, v11

    float-to-double v10, v10

    float-to-double v3, v4

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    add-double/2addr v3, v1

    add-double/2addr v3, v13

    double-to-float v1, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_189

    :cond_187
    move-object/from16 p1, v11

    :goto_189
    instance-of v1, v7, Ly/c;

    if-eqz v1, :cond_194

    move-object v1, v7

    check-cast v1, Ly/c;

    invoke-interface {v1}, Ly/c;->a()V

    goto :goto_1c9

    :cond_194
    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v9, v1

    float-to-int v2, v9

    add-float v1, v16, v1

    float-to-int v3, v1

    add-float v9, v9, v17

    float-to-int v4, v9

    add-float v1, v1, v18

    float-to-int v1, v1

    sub-int v6, v4, v2

    sub-int v9, v1, v3

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v6, v10, :cond_1b4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v9, v10, :cond_1b2

    goto :goto_1b4

    :cond_1b2
    const/4 v10, 0x0

    goto :goto_1b5

    :cond_1b4
    :goto_1b4
    const/4 v10, 0x1

    :goto_1b5
    if-nez v10, :cond_1b9

    if-eqz v5, :cond_1c6

    :cond_1b9
    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v6, v5}, Landroid/view/View;->measure(II)V

    :cond_1c6
    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1c9
    const/4 v1, 0x0

    iput-boolean v1, v0, Ly/m;->b:Z

    goto :goto_1d1

    :cond_1cd
    move-object/from16 p1, v11

    move-wide/from16 v20, v13

    :goto_1d1
    iget v1, v0, Ly/m;->x:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_232

    iget-object v1, v0, Ly/m;->y:Landroid/view/View;

    if-nez v1, :cond_1e8

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v0, Ly/m;->x:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ly/m;->y:Landroid/view/View;

    :cond_1e8
    iget-object v1, v0, Ly/m;->y:Landroid/view/View;

    if-eqz v1, :cond_232

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Ly/m;->y:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Ly/m;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Ly/m;->y:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_232

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_232

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_232
    iget-object v1, v0, Ly/m;->t:Ljava/util/HashMap;

    if-eqz v1, :cond_26d

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23e
    :goto_23e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/j;

    instance-of v3, v2, Lx/c$d;

    if-eqz v3, :cond_23e

    iget-object v3, v0, Ly/m;->m:[D

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_23e

    check-cast v2, Lx/c$d;

    const/4 v4, 0x0

    aget-wide v9, v3, v4

    aget-wide v4, v3, v5

    invoke-virtual {v2, v8}, Lu/j;->a(F)F

    move-result v2

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_23e

    :cond_26d
    if-eqz p1, :cond_297

    iget-object v1, v0, Ly/m;->m:[D

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    const/4 v2, 0x1

    aget-wide v13, v1, v2

    move-object/from16 v1, p1

    move v2, v8

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    move-result v1

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v11, p1

    iget-boolean v1, v11, Lu/l;->h:Z

    or-int/2addr v1, v12

    move v12, v1

    :cond_297
    const/4 v1, 0x1

    :goto_298
    iget-object v2, v0, Ly/m;->h:[Lu/b;

    array-length v3, v2

    if-ge v1, v3, :cond_2be

    aget-object v2, v2, v1

    iget-object v3, v0, Ly/m;->p:[F

    move-wide/from16 v4, v20

    invoke-virtual {v2, v4, v5, v3}, Lu/b;->d(D[F)V

    iget-object v2, v0, Ly/m;->d:Ly/o;

    iget-object v2, v2, Ly/o;->k:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Ly/m;->n:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Ly/m;->p:[F

    invoke-static {v2, v7, v3}, Lx/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_298

    :cond_2be
    iget-object v1, v0, Ly/m;->f:Ly/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_2d0

    iget-object v1, v0, Ly/m;->f:Ly/l;

    iget v1, v1, Ly/l;->b:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2ec

    :cond_2d0
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_2de

    iget-object v1, v0, Ly/m;->g:Ly/l;

    iget v1, v1, Ly/l;->b:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2ec

    :cond_2de
    iget-object v1, v0, Ly/m;->g:Ly/l;

    iget v1, v1, Ly/l;->b:I

    iget-object v2, v0, Ly/m;->f:Ly/l;

    iget v2, v2, Ly/l;->b:I

    if-eq v1, v2, :cond_2ec

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2ec
    :goto_2ec
    iget-object v1, v0, Ly/m;->v:[Ly/k;

    if-eqz v1, :cond_34f

    const/4 v1, 0x0

    :goto_2f1
    iget-object v2, v0, Ly/m;->v:[Ly/k;

    array-length v3, v2

    if-ge v1, v3, :cond_34f

    aget-object v2, v2, v1

    invoke-virtual {v2, v8, v7}, Ly/k;->g(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f1

    :cond_2fe
    iget-object v1, v0, Ly/m;->d:Ly/o;

    iget v2, v1, Ly/o;->d:F

    iget-object v3, v0, Ly/m;->e:Ly/o;

    iget v4, v3, Ly/o;->d:F

    invoke-static {v4, v2, v8, v2}, Lf0/e;->a(FFFF)F

    move-result v2

    iget v4, v1, Ly/o;->e:F

    iget v5, v3, Ly/o;->e:F

    invoke-static {v5, v4, v8, v4}, Lf0/e;->a(FFFF)F

    move-result v4

    iget v5, v1, Ly/o;->f:F

    iget v6, v3, Ly/o;->f:F

    invoke-static {v6, v5, v8, v5}, Lf0/e;->a(FFFF)F

    move-result v9

    iget v1, v1, Ly/o;->g:F

    iget v3, v3, Ly/o;->g:F

    invoke-static {v3, v1, v8, v1}, Lf0/e;->a(FFFF)F

    move-result v10

    const/high16 v11, 0x3f000000  # 0.5f

    add-float/2addr v2, v11

    float-to-int v13, v2

    add-float/2addr v4, v11

    float-to-int v11, v4

    add-float/2addr v2, v9

    float-to-int v2, v2

    add-float/2addr v4, v10

    float-to-int v4, v4

    sub-int v9, v2, v13

    sub-int v10, v4, v11

    cmpl-float v5, v6, v5

    if-nez v5, :cond_33c

    cmpl-float v1, v3, v1

    if-nez v1, :cond_33c

    iget-boolean v1, v0, Ly/m;->b:Z

    if-eqz v1, :cond_34c

    :cond_33c
    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ly/m;->b:Z

    :cond_34c
    invoke-virtual {v7, v13, v11, v2, v4}, Landroid/view/View;->layout(IIII)V

    :cond_34f
    iget-object v1, v0, Ly/m;->u:Ljava/util/HashMap;

    if-eqz v1, :cond_38b

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/b;

    instance-of v3, v2, Lx/b$d;

    if-eqz v3, :cond_387

    check-cast v2, Lx/b$d;

    iget-object v3, v0, Ly/m;->m:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v6, 0x1

    aget-wide v9, v3, v6

    invoke-virtual {v2, v8}, Lu/e;->a(F)F

    move-result v2

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_35b

    :cond_387
    invoke-virtual {v2, v8, v7}, Lx/b;->d(FLandroid/view/View;)V

    goto :goto_35b

    :cond_38b
    return v12
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, " start: x: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly/m;->d:Ly/o;

    iget v1, v1, Ly/o;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly/m;->d:Ly/o;

    iget v2, v2, Ly/o;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly/m;->e:Ly/o;

    iget v2, v2, Ly/o;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly/m;->e:Ly/o;

    iget v1, v1, Ly/o;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
