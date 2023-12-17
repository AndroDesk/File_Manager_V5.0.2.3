.class public final Ly/o;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ly/o;",
        ">;"
    }
.end annotation


# static fields
.field public static n:[Ljava/lang/String;


# instance fields
.field public a:Lu/c;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public l:[D

.field public m:[D


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly/o;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Ly/o;->h:F

    const/4 v0, -0x1

    iput v0, p0, Ly/o;->i:I

    iput v0, p0, Ly/o;->j:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ly/o;->k:Ljava/util/LinkedHashMap;

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Ly/o;->l:[D

    new-array v0, v0, [D

    iput-object v0, p0, Ly/o;->m:[D

    return-void
.end method

.method public constructor <init>(IILy/h;Ly/o;Ly/o;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v4, 0x7fc00000  # Float.NaN

    iput v4, v0, Ly/o;->h:F

    const/4 v4, -0x1

    iput v4, v0, Ly/o;->i:I

    iput v4, v0, Ly/o;->j:I

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Ly/o;->k:Ljava/util/LinkedHashMap;

    const/16 v5, 0x12

    new-array v6, v5, [D

    iput-object v6, v0, Ly/o;->l:[D

    new-array v5, v5, [D

    iput-object v5, v0, Ly/o;->m:[D

    iget v5, v2, Ly/o;->j:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/high16 v8, 0x42c80000  # 100.0f

    if-eq v5, v4, :cond_103

    iget v4, v1, Ly/d;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v0, Ly/o;->b:F

    iget v5, v1, Ly/h;->h:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v4

    goto :goto_3f

    :cond_3d
    iget v5, v1, Ly/h;->h:F

    :goto_3f
    iget v8, v1, Ly/h;->i:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_49

    move v8, v4

    goto :goto_4b

    :cond_49
    iget v8, v1, Ly/h;->i:F

    :goto_4b
    iget v9, v3, Ly/o;->f:F

    iget v10, v2, Ly/o;->f:F

    sub-float/2addr v9, v10

    iget v11, v3, Ly/o;->g:F

    iget v12, v2, Ly/o;->g:F

    sub-float/2addr v11, v12

    iget v13, v0, Ly/o;->b:F

    iput v13, v0, Ly/o;->c:F

    mul-float/2addr v9, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v0, Ly/o;->f:F

    mul-float/2addr v11, v8

    add-float/2addr v11, v12

    float-to-int v9, v11

    int-to-float v9, v9

    iput v9, v0, Ly/o;->g:F

    iget v9, v1, Ly/h;->n:I

    if-eq v9, v7, :cond_c7

    if-eq v9, v6, :cond_97

    iget v5, v1, Ly/h;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_75

    move v5, v4

    goto :goto_77

    :cond_75
    iget v5, v1, Ly/h;->j:F

    :goto_77
    iget v6, v3, Ly/o;->d:F

    iget v7, v2, Ly/o;->d:F

    invoke-static {v6, v7, v5, v7}, Lf0/e;->a(FFFF)F

    move-result v5

    iput v5, v0, Ly/o;->d:F

    iget v5, v1, Ly/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_8c

    :cond_8a
    iget v4, v1, Ly/h;->k:F

    :goto_8c
    iget v3, v3, Ly/o;->e:F

    iget v5, v2, Ly/o;->e:F

    invoke-static {v3, v5, v4, v5}, Lf0/e;->a(FFFF)F

    move-result v3

    iput v3, v0, Ly/o;->e:F

    goto :goto_f2

    :cond_97
    iget v6, v1, Ly/h;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_a8

    iget v5, v3, Ly/o;->d:F

    iget v6, v2, Ly/o;->d:F

    invoke-static {v5, v6, v4, v6}, Lf0/e;->a(FFFF)F

    move-result v5

    goto :goto_af

    :cond_a8
    iget v6, v1, Ly/h;->j:F

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v6

    :goto_af
    iput v5, v0, Ly/o;->d:F

    iget v5, v1, Ly/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_c2

    iget v3, v3, Ly/o;->e:F

    iget v5, v2, Ly/o;->e:F

    invoke-static {v3, v5, v4, v5}, Lf0/e;->a(FFFF)F

    move-result v3

    goto :goto_c4

    :cond_c2
    iget v3, v1, Ly/h;->k:F

    :goto_c4
    iput v3, v0, Ly/o;->e:F

    goto :goto_f2

    :cond_c7
    iget v5, v1, Ly/h;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_d1

    move v5, v4

    goto :goto_d3

    :cond_d1
    iget v5, v1, Ly/h;->j:F

    :goto_d3
    iget v6, v3, Ly/o;->d:F

    iget v7, v2, Ly/o;->d:F

    invoke-static {v6, v7, v5, v7}, Lf0/e;->a(FFFF)F

    move-result v5

    iput v5, v0, Ly/o;->d:F

    iget v5, v1, Ly/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_e6

    goto :goto_e8

    :cond_e6
    iget v4, v1, Ly/h;->k:F

    :goto_e8
    iget v3, v3, Ly/o;->e:F

    iget v5, v2, Ly/o;->e:F

    invoke-static {v3, v5, v4, v5}, Lf0/e;->a(FFFF)F

    move-result v3

    iput v3, v0, Ly/o;->e:F

    :goto_f2
    iget v2, v2, Ly/o;->j:I

    iput v2, v0, Ly/o;->j:I

    iget-object v2, v1, Ly/h;->e:Ljava/lang/String;

    invoke-static {v2}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    move-result-object v2

    iput-object v2, v0, Ly/o;->a:Lu/c;

    iget v1, v1, Ly/h;->f:I

    iput v1, v0, Ly/o;->i:I

    return-void

    :cond_103
    iget v4, v1, Ly/h;->n:I

    const/high16 v5, 0x40000000  # 2.0f

    if-eq v4, v7, :cond_26a

    if-eq v4, v6, :cond_1c5

    iget v4, v1, Ly/d;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v0, Ly/o;->b:F

    iget v6, v1, Ly/h;->h:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_11b

    move v6, v4

    goto :goto_11d

    :cond_11b
    iget v6, v1, Ly/h;->h:F

    :goto_11d
    iget v7, v1, Ly/h;->i:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_127

    move v7, v4

    goto :goto_129

    :cond_127
    iget v7, v1, Ly/h;->i:F

    :goto_129
    iget v8, v3, Ly/o;->f:F

    iget v9, v2, Ly/o;->f:F

    sub-float v10, v8, v9

    iget v11, v3, Ly/o;->g:F

    iget v12, v2, Ly/o;->g:F

    sub-float v13, v11, v12

    iget v14, v0, Ly/o;->b:F

    iput v14, v0, Ly/o;->c:F

    iget v14, v2, Ly/o;->d:F

    div-float v15, v9, v5

    add-float/2addr v15, v14

    iget v1, v2, Ly/o;->e:F

    div-float v16, v12, v5

    add-float v16, v16, v1

    iget v2, v3, Ly/o;->d:F

    div-float/2addr v8, v5

    add-float/2addr v8, v2

    iget v2, v3, Ly/o;->e:F

    div-float/2addr v11, v5

    add-float/2addr v11, v2

    sub-float/2addr v8, v15

    sub-float v11, v11, v16

    mul-float v2, v8, v4

    add-float/2addr v2, v14

    mul-float/2addr v10, v6

    div-float v3, v10, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Ly/o;->d:F

    mul-float v2, v11, v4

    add-float/2addr v2, v1

    mul-float/2addr v13, v7

    div-float v1, v13, v5

    sub-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Ly/o;->e:F

    add-float/2addr v9, v10

    float-to-int v2, v9

    int-to-float v2, v2

    iput v2, v0, Ly/o;->f:F

    add-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v2, v2

    iput v2, v0, Ly/o;->g:F

    move-object/from16 v2, p3

    iget v5, v2, Ly/h;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_17b

    move v5, v4

    goto :goto_17d

    :cond_17b
    iget v5, v2, Ly/h;->j:F

    :goto_17d
    iget v6, v2, Ly/h;->m:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_187

    const/4 v6, 0x0

    goto :goto_189

    :cond_187
    iget v6, v2, Ly/h;->m:F

    :goto_189
    iget v7, v2, Ly/h;->k:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_192

    goto :goto_194

    :cond_192
    iget v4, v2, Ly/h;->k:F

    :goto_194
    iget v7, v2, Ly/h;->l:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_19e

    const/4 v7, 0x0

    goto :goto_1a0

    :cond_19e
    iget v7, v2, Ly/h;->l:F

    :goto_1a0
    move-object/from16 v9, p4

    iget v10, v9, Ly/o;->d:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    mul-float/2addr v7, v11

    add-float/2addr v7, v5

    sub-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    iput v3, v0, Ly/o;->d:F

    iget v3, v9, Ly/o;->e:F

    mul-float/2addr v8, v6

    add-float/2addr v8, v3

    mul-float/2addr v11, v4

    add-float/2addr v11, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Ly/o;->e:F

    iget-object v1, v2, Ly/h;->e:Ljava/lang/String;

    invoke-static {v1}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    move-result-object v1

    iput-object v1, v0, Ly/o;->a:Lu/c;

    iget v1, v2, Ly/h;->f:I

    iput v1, v0, Ly/o;->i:I

    return-void

    :cond_1c5
    move-object v9, v2

    move-object v2, v1

    iget v1, v2, Ly/d;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Ly/o;->b:F

    iget v4, v2, Ly/h;->h:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1d7

    move v4, v1

    goto :goto_1d9

    :cond_1d7
    iget v4, v2, Ly/h;->h:F

    :goto_1d9
    iget v6, v2, Ly/h;->i:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1e3

    move v6, v1

    goto :goto_1e5

    :cond_1e3
    iget v6, v2, Ly/h;->i:F

    :goto_1e5
    iget v7, v3, Ly/o;->f:F

    iget v8, v9, Ly/o;->f:F

    sub-float v10, v7, v8

    iget v11, v3, Ly/o;->g:F

    iget v12, v9, Ly/o;->g:F

    sub-float v13, v11, v12

    iget v14, v0, Ly/o;->b:F

    iput v14, v0, Ly/o;->c:F

    iget v14, v9, Ly/o;->d:F

    div-float v15, v8, v5

    add-float/2addr v15, v14

    iget v9, v9, Ly/o;->e:F

    div-float v16, v12, v5

    add-float v16, v16, v9

    iget v2, v3, Ly/o;->d:F

    div-float/2addr v7, v5

    add-float/2addr v7, v2

    iget v2, v3, Ly/o;->e:F

    div-float/2addr v11, v5

    add-float/2addr v11, v2

    sub-float/2addr v7, v15

    sub-float v11, v11, v16

    mul-float/2addr v7, v1

    add-float/2addr v7, v14

    mul-float/2addr v10, v4

    div-float v2, v10, v5

    sub-float/2addr v7, v2

    float-to-int v2, v7

    int-to-float v2, v2

    iput v2, v0, Ly/o;->d:F

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    mul-float/2addr v13, v6

    div-float v1, v13, v5

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Ly/o;->e:F

    add-float/2addr v8, v10

    float-to-int v1, v8

    int-to-float v1, v1

    iput v1, v0, Ly/o;->f:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    iput v1, v0, Ly/o;->g:F

    move-object/from16 v1, p3

    iget v2, v1, Ly/h;->j:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_242

    move/from16 v2, p1

    int-to-float v2, v2

    iget v3, v0, Ly/o;->f:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Ly/h;->j:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Ly/o;->d:F

    :cond_242
    iget v2, v1, Ly/h;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_259

    move/from16 v2, p2

    int-to-float v2, v2

    iget v3, v0, Ly/o;->g:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Ly/h;->k:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Ly/o;->e:F

    :cond_259
    iget v2, v0, Ly/o;->j:I

    iput v2, v0, Ly/o;->j:I

    iget-object v2, v1, Ly/h;->e:Ljava/lang/String;

    invoke-static {v2}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    move-result-object v2

    iput-object v2, v0, Ly/o;->a:Lu/c;

    iget v1, v1, Ly/h;->f:I

    iput v1, v0, Ly/o;->i:I

    return-void

    :cond_26a
    move-object v9, v2

    iget v2, v1, Ly/d;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v0, Ly/o;->b:F

    iget v4, v1, Ly/h;->h:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_27b

    move v4, v2

    goto :goto_27d

    :cond_27b
    iget v4, v1, Ly/h;->h:F

    :goto_27d
    iget v6, v1, Ly/h;->i:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_287

    move v6, v2

    goto :goto_289

    :cond_287
    iget v6, v1, Ly/h;->i:F

    :goto_289
    iget v7, v3, Ly/o;->f:F

    iget v8, v9, Ly/o;->f:F

    sub-float/2addr v7, v8

    iget v8, v3, Ly/o;->g:F

    iget v10, v9, Ly/o;->g:F

    sub-float/2addr v8, v10

    iget v10, v0, Ly/o;->b:F

    iput v10, v0, Ly/o;->c:F

    iget v10, v1, Ly/h;->j:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2a0

    goto :goto_2a2

    :cond_2a0
    iget v2, v1, Ly/h;->j:F

    :goto_2a2
    iget v10, v9, Ly/o;->d:F

    iget v11, v9, Ly/o;->f:F

    div-float v12, v11, v5

    add-float/2addr v12, v10

    iget v13, v9, Ly/o;->e:F

    iget v14, v9, Ly/o;->g:F

    div-float v15, v14, v5

    add-float/2addr v15, v13

    iget v9, v3, Ly/o;->d:F

    iget v1, v3, Ly/o;->f:F

    div-float/2addr v1, v5

    add-float/2addr v1, v9

    iget v9, v3, Ly/o;->e:F

    iget v3, v3, Ly/o;->g:F

    div-float/2addr v3, v5

    add-float/2addr v3, v9

    sub-float/2addr v1, v12

    sub-float/2addr v3, v15

    mul-float v9, v1, v2

    add-float/2addr v10, v9

    mul-float/2addr v7, v4

    div-float v4, v7, v5

    sub-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v0, Ly/o;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v13, v2

    mul-float/2addr v8, v6

    div-float v5, v8, v5

    sub-float/2addr v13, v5

    float-to-int v6, v13

    int-to-float v6, v6

    iput v6, v0, Ly/o;->e:F

    add-float/2addr v11, v7

    float-to-int v6, v11

    int-to-float v6, v6

    iput v6, v0, Ly/o;->f:F

    add-float/2addr v14, v8

    float-to-int v6, v14

    int-to-float v6, v6

    iput v6, v0, Ly/o;->g:F

    move-object/from16 v6, p3

    iget v7, v6, Ly/h;->k:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2e9

    const/4 v7, 0x0

    goto :goto_2eb

    :cond_2e9
    iget v7, v6, Ly/h;->k:F

    :goto_2eb
    neg-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v1, v7

    move-object/from16 v7, p4

    iget v8, v7, Ly/o;->d:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v4

    float-to-int v4, v8

    int-to-float v4, v4

    iget v7, v7, Ly/o;->e:F

    add-float/2addr v7, v2

    sub-float/2addr v7, v5

    float-to-int v2, v7

    int-to-float v2, v2

    add-float/2addr v4, v3

    iput v4, v0, Ly/o;->d:F

    add-float/2addr v2, v1

    iput v2, v0, Ly/o;->e:F

    iget v1, v0, Ly/o;->j:I

    iput v1, v0, Ly/o;->j:I

    iget-object v1, v6, Ly/h;->e:Ljava/lang/String;

    invoke-static {v1}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    move-result-object v1

    iput-object v1, v0, Ly/o;->a:Lu/c;

    iget v1, v6, Ly/h;->f:I

    iput v1, v0, Ly/o;->i:I

    return-void
.end method

.method public static a(FF)Z
    .registers 5

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    :cond_1e
    :goto_1e
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method


# virtual methods
.method public final b(D[I[D[FI)V
    .registers 15

    iget p1, p0, Ly/o;->d:F

    iget p2, p0, Ly/o;->e:F

    iget v0, p0, Ly/o;->f:F

    iget v1, p0, Ly/o;->g:F

    const/4 v2, 0x0

    :goto_9
    array-length v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_28

    aget-wide v6, p4, v2

    double-to-float v3, v6

    aget v6, p3, v2

    if-eq v6, v5, :cond_24

    if-eq v6, v4, :cond_22

    const/4 v4, 0x3

    if-eq v6, v4, :cond_20

    const/4 v4, 0x4

    if-eq v6, v4, :cond_1e

    goto :goto_25

    :cond_1e
    move v1, v3

    goto :goto_25

    :cond_20
    move v0, v3

    goto :goto_25

    :cond_22
    move p2, v3

    goto :goto_25

    :cond_24
    move p1, v3

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr v0, p3

    add-float/2addr v0, p1

    const/4 p1, 0x0

    add-float/2addr v0, p1

    aput v0, p5, p6

    add-int/2addr p6, v5

    div-float/2addr v1, p3

    add-float/2addr v1, p2

    add-float/2addr v1, p1

    aput v1, p5, p6

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ly/o;

    iget v0, p0, Ly/o;->c:F

    iget p1, p1, Ly/o;->c:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
