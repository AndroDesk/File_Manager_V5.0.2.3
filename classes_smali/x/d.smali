.class public abstract Lx/d;
.super Lu/l;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/d$e;,
        Lx/d$b;,
        Lx/d$m;,
        Lx/d$l;,
        Lx/d$k;,
        Lx/d$j;,
        Lx/d$i;,
        Lx/d$d;,
        Lx/d$h;,
        Lx/d$g;,
        Lx/d$f;,
        Lx/d$a;,
        Lx/d$c;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Lu/l;->a:Lu/b;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Lu/l;->g:[F

    invoke-virtual {v5, v6, v7, v8}, Lu/b;->d(D[F)V

    iget-object v5, v0, Lu/l;->g:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_23

    iput-boolean v11, v0, Lu/l;->h:Z

    aget v1, v5, v10

    return v1

    :cond_23
    iget v5, v0, Lu/l;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v0, Lu/l;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/app/u;->b(Ljava/lang/String;Ljava/lang/Object;)F

    move-result v5

    iput v5, v0, Lu/l;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    iput v8, v0, Lu/l;->j:F

    :cond_3b
    iget-wide v12, v0, Lu/l;->i:J

    sub-long v12, v1, v12

    iget v5, v0, Lu/l;->j:F

    float-to-double v14, v5

    long-to-double v12, v12

    const-wide v16, 0x3e112e0be826d695L  # 1.0E-9

    mul-double v12, v12, v16

    move v5, v9

    float-to-double v8, v7

    mul-double/2addr v12, v8

    add-double/2addr v12, v14

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    rem-double/2addr v12, v7

    double-to-float v7, v12

    iput v7, v0, Lu/l;->j:F

    iget-object v8, v0, Lu/l;->f:Ljava/lang/String;

    iget-object v9, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_74

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-array v12, v6, [F

    aput v7, v12, v11

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_74
    iget-object v9, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    if-nez v9, :cond_85

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :cond_85
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9a

    new-array v12, v6, [F

    aput v7, v12, v11

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_9a
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-nez v3, :cond_a4

    new-array v3, v11, [F

    :cond_a4
    array-length v4, v3

    if-gtz v4, :cond_ab

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    :cond_ab
    aput v7, v3, v11

    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b0
    iput-wide v1, v0, Lu/l;->i:J

    iget-object v1, v0, Lu/l;->g:[F

    aget v1, v1, v11

    iget v2, v0, Lu/l;->j:F

    invoke-virtual {v0, v2}, Lu/l;->a(F)F

    move-result v2

    iget-object v3, v0, Lu/l;->g:[F

    aget v3, v3, v10

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_cb

    if-eqz v5, :cond_ca

    goto :goto_cb

    :cond_ca
    move v6, v11

    :cond_cb
    :goto_cb
    iput-boolean v6, v0, Lu/l;->h:Z

    return v2
.end method

.method public abstract e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
.end method
