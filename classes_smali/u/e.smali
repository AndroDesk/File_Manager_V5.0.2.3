.class public abstract Lu/e;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/e$a;,
        Lu/e$b;
    }
.end annotation


# instance fields
.field public a:Lu/e$a;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu/e;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lu/e;->d:Ljava/lang/String;

    iput v0, p0, Lu/e;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/e;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lu/e;->a:Lu/e$a;

    iget-object v3, v2, Lu/e$a;->g:Lu/b;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_14

    float-to-double v7, v1

    iget-object v9, v2, Lu/e$a;->h:[D

    invoke-virtual {v3, v7, v8, v9}, Lu/b;->c(D[D)V

    goto :goto_2b

    :cond_14
    iget-object v3, v2, Lu/e$a;->h:[D

    iget-object v7, v2, Lu/e$a;->e:[F

    aget v7, v7, v6

    float-to-double v7, v7

    aput-wide v7, v3, v6

    iget-object v7, v2, Lu/e$a;->f:[F

    aget v7, v7, v6

    float-to-double v7, v7

    aput-wide v7, v3, v5

    iget-object v7, v2, Lu/e$a;->b:[F

    aget v7, v7, v6

    float-to-double v7, v7

    aput-wide v7, v3, v4

    :goto_2b
    iget-object v3, v2, Lu/e$a;->h:[D

    aget-wide v6, v3, v6

    aget-wide v8, v3, v5

    iget-object v3, v2, Lu/e$a;->a:Lu/h;

    float-to-double v10, v1

    const-wide/16 v12, 0x0

    cmpg-double v1, v10, v12

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    if-gez v1, :cond_3e

    move-wide v10, v12

    goto :goto_43

    :cond_3e
    cmpl-double v1, v10, v14

    if-lez v1, :cond_43

    move-wide v10, v14

    :cond_43
    :goto_43
    iget-object v1, v3, Lu/h;->b:[D

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    if-lez v1, :cond_4f

    move-wide v12, v14

    goto :goto_81

    :cond_4f
    if-eqz v1, :cond_81

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v5, v3, Lu/h;->a:[F

    aget v12, v5, v1

    add-int/lit8 v13, v1, -0x1

    aget v5, v5, v13

    sub-float/2addr v12, v5

    float-to-double v14, v12

    iget-object v12, v3, Lu/h;->b:[D

    aget-wide v18, v12, v1

    aget-wide v20, v12, v13

    sub-double v18, v18, v20

    div-double v14, v14, v18

    iget-object v1, v3, Lu/h;->c:[D

    aget-wide v12, v1, v13

    float-to-double v4, v5

    mul-double v18, v14, v20

    sub-double v4, v4, v18

    sub-double v18, v10, v20

    mul-double v18, v18, v4

    add-double v18, v18, v12

    mul-double/2addr v10, v10

    mul-double v20, v20, v20

    sub-double v10, v10, v20

    mul-double/2addr v10, v14

    div-double v10, v10, v16

    add-double v12, v10, v18

    :cond_81
    :goto_81
    add-double/2addr v12, v8

    iget v4, v3, Lu/h;->e:I

    const-wide v10, 0x401921fb54442d18L  # 6.283185307179586

    const-wide/high16 v14, 0x4010000000000000L  # 4.0

    packed-switch v4, :pswitch_data_e6

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    goto :goto_dd

    :pswitch_94  #0x7
    iget-object v3, v3, Lu/h;->d:Lu/g;

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    rem-double/2addr v12, v4

    invoke-virtual {v3, v12, v13}, Lu/g;->b(D)D

    move-result-wide v3

    goto :goto_dd

    :pswitch_9e  #0x6
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v12, v14

    rem-double/2addr v12, v14

    sub-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double v14, v4, v8

    mul-double/2addr v14, v14

    goto :goto_d0

    :pswitch_ac  #0x5
    add-double/2addr v8, v12

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    goto :goto_dd

    :pswitch_b3  #0x4
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double v12, v12, v16

    add-double/2addr v12, v4

    rem-double v14, v12, v16

    goto :goto_d0

    :pswitch_bb  #0x3
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double v12, v12, v16

    add-double/2addr v12, v4

    rem-double v12, v12, v16

    sub-double v3, v12, v4

    goto :goto_dd

    :pswitch_c5  #0x2
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v12, v14

    add-double/2addr v12, v4

    rem-double/2addr v12, v14

    sub-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    :goto_d0
    sub-double v3, v4, v14

    goto :goto_dd

    :pswitch_d3  #0x1
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L  # 0.5

    rem-double/2addr v12, v4

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v3

    :goto_dd
    iget-object v2, v2, Lu/e$a;->h:[D

    const/4 v1, 0x2

    aget-wide v1, v2, v1

    mul-double/2addr v3, v1

    add-double/2addr v3, v6

    double-to-float v1, v3

    return v1

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d3  #00000001
        :pswitch_c5  #00000002
        :pswitch_bb  #00000003
        :pswitch_b3  #00000004
        :pswitch_ac  #00000005
        :pswitch_9e  #00000006
        :pswitch_94  #00000007
    .end packed-switch
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 2

    return-void
.end method

.method public final c()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v2, v0, Lu/e;->f:Ljava/util/ArrayList;

    new-instance v3, Lu/d;

    invoke-direct {v3}, Lu/d;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v2, v1, [D

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    const/4 v7, 0x0

    aput v1, v4, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-instance v8, Lu/e$a;

    iget v9, v0, Lu/e;->c:I

    iget-object v10, v0, Lu/e;->d:Ljava/lang/String;

    invoke-direct {v8, v9, v1, v10}, Lu/e$a;-><init>(IILjava/lang/String;)V

    iput-object v8, v0, Lu/e;->a:Lu/e$a;

    iget-object v1, v0, Lu/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v7

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lu/e$b;

    iget v10, v9, Lu/e$b;->d:F

    float-to-double v11, v10

    const-wide v13, 0x3f847ae147ae147bL  # 0.01

    mul-double/2addr v11, v13

    aput-wide v11, v2, v8

    aget-object v11, v4, v8

    iget v12, v9, Lu/e$b;->b:F

    float-to-double v13, v12

    aput-wide v13, v11, v7

    iget v13, v9, Lu/e$b;->c:F

    float-to-double v14, v13

    aput-wide v14, v11, v5

    iget v14, v9, Lu/e$b;->e:F

    float-to-double v6, v14

    aput-wide v6, v11, v3

    iget-object v6, v0, Lu/e;->a:Lu/e$a;

    iget v7, v9, Lu/e$b;->a:I

    iget-object v9, v6, Lu/e$a;->c:[D

    move-object/from16 v16, v4

    int-to-double v3, v7

    const-wide/high16 v17, 0x4059000000000000L  # 100.0

    div-double v3, v3, v17

    aput-wide v3, v9, v8

    iget-object v3, v6, Lu/e$a;->d:[F

    aput v10, v3, v8

    iget-object v3, v6, Lu/e$a;->e:[F

    aput v13, v3, v8

    iget-object v3, v6, Lu/e$a;->f:[F

    aput v14, v3, v8

    iget-object v3, v6, Lu/e$a;->b:[F

    aput v12, v3, v8

    add-int/2addr v8, v5

    move-object/from16 v4, v16

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    goto :goto_3b

    :cond_89
    move-object/from16 v16, v4

    iget-object v1, v0, Lu/e;->a:Lu/e$a;

    iget-object v3, v1, Lu/e$a;->c:[D

    array-length v3, v3

    const/4 v4, 0x2

    new-array v6, v4, [I

    const/4 v7, 0x3

    aput v7, v6, v5

    const/4 v7, 0x0

    aput v3, v6, v7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget-object v6, v1, Lu/e$a;->b:[F

    array-length v7, v6

    add-int/2addr v7, v4

    new-array v7, v7, [D

    iput-object v7, v1, Lu/e$a;->h:[D

    array-length v6, v6

    add-int/2addr v6, v4

    new-array v4, v6, [D

    iget-object v4, v1, Lu/e$a;->c:[D

    const/4 v6, 0x0

    aget-wide v7, v4, v6

    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    if-lez v4, :cond_c1

    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    iget-object v7, v1, Lu/e$a;->d:[F

    aget v7, v7, v6

    invoke-virtual {v4, v7, v9, v10}, Lu/h;->a(FD)V

    :cond_c1
    iget-object v4, v1, Lu/e$a;->c:[D

    array-length v6, v4

    sub-int/2addr v6, v5

    aget-wide v7, v4, v6

    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    cmpg-double v4, v7, v12

    if-gez v4, :cond_d6

    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    iget-object v7, v1, Lu/e$a;->d:[F

    aget v6, v7, v6

    invoke-virtual {v4, v6, v12, v13}, Lu/h;->a(FD)V

    :cond_d6
    const/4 v4, 0x0

    :goto_d7
    array-length v6, v3

    if-ge v4, v6, :cond_103

    aget-object v6, v3, v4

    iget-object v7, v1, Lu/e$a;->e:[F

    aget v7, v7, v4

    float-to-double v7, v7

    const/4 v12, 0x0

    aput-wide v7, v6, v12

    iget-object v7, v1, Lu/e$a;->f:[F

    aget v7, v7, v4

    float-to-double v7, v7

    aput-wide v7, v6, v5

    iget-object v7, v1, Lu/e$a;->b:[F

    aget v7, v7, v4

    float-to-double v7, v7

    const/4 v11, 0x2

    aput-wide v7, v6, v11

    iget-object v6, v1, Lu/e$a;->a:Lu/h;

    iget-object v7, v1, Lu/e$a;->c:[D

    aget-wide v12, v7, v4

    iget-object v7, v1, Lu/e$a;->d:[F

    aget v7, v7, v4

    invoke-virtual {v6, v7, v12, v13}, Lu/h;->a(FD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d7

    :cond_103
    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    move-wide v7, v9

    const/4 v6, 0x0

    :goto_107
    iget-object v11, v4, Lu/h;->a:[F

    array-length v12, v11

    if-ge v6, v12, :cond_113

    aget v11, v11, v6

    float-to-double v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_107

    :cond_113
    move v6, v5

    move-wide v11, v9

    :goto_115
    iget-object v13, v4, Lu/h;->a:[F

    array-length v14, v13

    const/high16 v15, 0x40000000  # 2.0f

    if-ge v6, v14, :cond_136

    add-int/lit8 v14, v6, -0x1

    aget v17, v13, v14

    aget v13, v13, v6

    add-float v17, v17, v13

    div-float v13, v17, v15

    iget-object v15, v4, Lu/h;->b:[D

    aget-wide v17, v15, v6

    aget-wide v14, v15, v14

    sub-double v17, v17, v14

    float-to-double v13, v13

    mul-double v17, v17, v13

    add-double v11, v17, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_115

    :cond_136
    const/4 v6, 0x0

    :goto_137
    iget-object v13, v4, Lu/h;->a:[F

    array-length v14, v13

    if-ge v6, v14, :cond_14b

    aget v14, v13, v6

    float-to-double v9, v14

    div-double v19, v7, v11

    mul-double v9, v9, v19

    double-to-float v9, v9

    aput v9, v13, v6

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v9, 0x0

    goto :goto_137

    :cond_14b
    iget-object v6, v4, Lu/h;->c:[D

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    aput-wide v7, v6, v9

    move v6, v5

    :goto_153
    iget-object v7, v4, Lu/h;->a:[F

    array-length v8, v7

    if-ge v6, v8, :cond_173

    add-int/lit8 v8, v6, -0x1

    aget v9, v7, v8

    aget v7, v7, v6

    add-float/2addr v9, v7

    div-float/2addr v9, v15

    iget-object v7, v4, Lu/h;->b:[D

    aget-wide v10, v7, v6

    aget-wide v12, v7, v8

    sub-double/2addr v10, v12

    iget-object v7, v4, Lu/h;->c:[D

    aget-wide v12, v7, v8

    float-to-double v8, v9

    mul-double/2addr v10, v8

    add-double/2addr v10, v12

    aput-wide v10, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_153

    :cond_173
    iget-object v4, v1, Lu/e$a;->c:[D

    array-length v6, v4

    if-le v6, v5, :cond_180

    const/4 v5, 0x0

    invoke-static {v5, v4, v3}, Lu/b;->a(I[D[[D)Lu/b;

    move-result-object v3

    iput-object v3, v1, Lu/e$a;->g:Lu/b;

    goto :goto_184

    :cond_180
    const/4 v5, 0x0

    const/4 v3, 0x0

    iput-object v3, v1, Lu/e$a;->g:Lu/b;

    :goto_184
    move-object/from16 v4, v16

    invoke-static {v5, v2, v4}, Lu/b;->a(I[D[[D)Lu/b;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lu/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/e$b;

    const-string v4, "["

    invoke-static {v0, v4}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lu/e$b;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lu/e$b;->b:F

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_3f
    return-object v0
.end method
