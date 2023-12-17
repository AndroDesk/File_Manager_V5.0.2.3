.class public abstract Lu/l;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# instance fields
.field public a:Lu/b;

.field public b:I

.field public c:[I

.field public d:[[F

.field public e:I

.field public f:Ljava/lang/String;

.field public g:[F

.field public h:Z

.field public i:J

.field public j:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu/l;->b:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lu/l;->c:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lu/l;->d:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lu/l;->g:[F

    iput-boolean v0, p0, Lu/l;->h:Z

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lu/l;->j:F

    return-void

    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method


# virtual methods
.method public final a(F)F
    .registers 6

    iget v0, p0, Lu/l;->b:I

    const v1, 0x40c90fdb

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, 0x3f800000  # 1.0f

    packed-switch v0, :pswitch_data_3e

    mul-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_14  #0x6
    const/high16 v0, 0x40800000  # 4.0f

    mul-float/2addr p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v3, p1

    mul-float/2addr p1, p1

    :goto_20
    sub-float/2addr v3, p1

    return v3

    :pswitch_22  #0x5
    mul-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2a  #0x4
    mul-float/2addr p1, v2

    add-float/2addr p1, v3

    rem-float/2addr p1, v2

    goto :goto_20

    :pswitch_2e  #0x3
    mul-float/2addr p1, v2

    add-float/2addr p1, v3

    rem-float/2addr p1, v2

    sub-float/2addr p1, v3

    return p1

    :pswitch_33  #0x2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_20

    :pswitch_38  #0x1
    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_33  #00000002
        :pswitch_2e  #00000003
        :pswitch_2a  #00000004
        :pswitch_22  #00000005
        :pswitch_14  #00000006
    .end packed-switch
.end method

.method public b(IIFFF)V
    .registers 8

    iget-object v0, p0, Lu/l;->c:[I

    iget v1, p0, Lu/l;->e:I

    aput p1, v0, v1

    iget-object p1, p0, Lu/l;->d:[[F

    aget-object p1, p1, v1

    const/4 v0, 0x0

    aput p3, p1, v0

    const/4 p3, 0x1

    aput p4, p1, p3

    const/4 p4, 0x2

    aput p5, p1, p4

    iget p1, p0, Lu/l;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lu/l;->b:I

    iget p1, p0, Lu/l;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lu/l;->e:I

    return-void
.end method

.method public c(I)V
    .registers 16

    iget v0, p0, Lu/l;->e:I

    if-nez v0, :cond_19

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error no points added to "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v1, p0, Lu/l;->c:[I

    iget-object v2, p0, Lu/l;->d:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    array-length v4, v1

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v5, v4, v3

    const/4 v0, 0x2

    move v6, v0

    :cond_2b
    :goto_2b
    if-lez v6, :cond_79

    add-int/lit8 v6, v6, -0x1

    aget v7, v4, v6

    add-int/lit8 v6, v6, -0x1

    aget v8, v4, v6

    if-ge v7, v8, :cond_2b

    aget v9, v1, v8

    move v10, v7

    move v11, v10

    :goto_3b
    if-ge v10, v8, :cond_54

    aget v12, v1, v10

    if-gt v12, v9, :cond_51

    aget v13, v1, v11

    aput v12, v1, v11

    aput v13, v1, v10

    aget-object v12, v2, v11

    aget-object v13, v2, v10

    aput-object v13, v2, v11

    aput-object v12, v2, v10

    add-int/lit8 v11, v11, 0x1

    :cond_51
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    :cond_54
    aget v9, v1, v11

    aget v10, v1, v8

    aput v10, v1, v11

    aput v9, v1, v8

    aget-object v9, v2, v11

    aget-object v10, v2, v8

    aput-object v10, v2, v11

    aput-object v9, v2, v8

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v11, -0x1

    aput v10, v4, v6

    add-int/lit8 v6, v9, 0x1

    aput v7, v4, v9

    add-int/lit8 v7, v6, 0x1

    aput v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v4, v7

    goto :goto_2b

    :cond_79
    move v1, v3

    move v2, v5

    :goto_7b
    iget-object v4, p0, Lu/l;->c:[I

    array-length v6, v4

    if-ge v1, v6, :cond_8d

    aget v6, v4, v1

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    if-eq v6, v4, :cond_8a

    add-int/lit8 v2, v2, 0x1

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_8d
    if-nez v2, :cond_90

    move v2, v3

    :cond_90
    new-array v1, v2, [D

    const/4 v4, 0x3

    new-array v6, v0, [I

    aput v4, v6, v3

    aput v2, v6, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v4, v5

    move v6, v4

    :goto_a3
    iget v7, p0, Lu/l;->e:I

    if-ge v4, v7, :cond_db

    if-lez v4, :cond_b4

    iget-object v7, p0, Lu/l;->c:[I

    aget v8, v7, v4

    add-int/lit8 v9, v4, -0x1

    aget v7, v7, v9

    if-ne v8, v7, :cond_b4

    goto :goto_d8

    :cond_b4
    iget-object v7, p0, Lu/l;->c:[I

    aget v7, v7, v4

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL  # 0.01

    mul-double/2addr v7, v9

    aput-wide v7, v1, v6

    aget-object v7, v2, v6

    iget-object v8, p0, Lu/l;->d:[[F

    aget-object v8, v8, v4

    aget v9, v8, v5

    float-to-double v9, v9

    aput-wide v9, v7, v5

    aget v9, v8, v3

    float-to-double v9, v9

    aput-wide v9, v7, v3

    aget v8, v8, v0

    float-to-double v8, v8

    aput-wide v8, v7, v0

    add-int/lit8 v6, v6, 0x1

    :goto_d8
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_db
    invoke-static {p1, v1, v2}, Lu/b;->a(I[D[[D)Lu/b;

    move-result-object p1

    iput-object p1, p0, Lu/l;->a:Lu/b;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lu/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lu/l;->e:I

    if-ge v2, v3, :cond_37

    const-string v3, "["

    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lu/l;->c:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lu/l;->d:[[F

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_37
    return-object v0
.end method
