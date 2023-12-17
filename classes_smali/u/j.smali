.class public abstract Lu/j;
.super Ljava/lang/Object;
.source "SplineSet.java"


# instance fields
.field public a:Lu/b;

.field public b:[I

.field public c:[F

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lu/j;->b:[I

    new-array v0, v0, [F

    iput-object v0, p0, Lu/j;->c:[F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .registers 5

    iget-object v0, p0, Lu/j;->a:Lu/b;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lu/b;->b(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public b(FI)V
    .registers 6

    iget-object v0, p0, Lu/j;->b:[I

    array-length v1, v0

    iget v2, p0, Lu/j;->d:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1d

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lu/j;->b:[I

    iget-object v0, p0, Lu/j;->c:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lu/j;->c:[F

    :cond_1d
    iget-object v0, p0, Lu/j;->b:[I

    iget v1, p0, Lu/j;->d:I

    aput p2, v0, v1

    iget-object p2, p0, Lu/j;->c:[F

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu/j;->d:I

    return-void
.end method

.method public c(I)V
    .registers 16

    iget v0, p0, Lu/j;->d:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lu/j;->b:[I

    iget-object v2, p0, Lu/j;->c:[F

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

    :cond_17
    :goto_17
    if-lez v6, :cond_65

    add-int/lit8 v6, v6, -0x1

    aget v7, v4, v6

    add-int/lit8 v6, v6, -0x1

    aget v8, v4, v6

    if-ge v7, v8, :cond_17

    aget v9, v1, v8

    move v10, v7

    move v11, v10

    :goto_27
    if-ge v10, v8, :cond_40

    aget v12, v1, v10

    if-gt v12, v9, :cond_3d

    aget v13, v1, v11

    aput v12, v1, v11

    aput v13, v1, v10

    aget v12, v2, v11

    aget v13, v2, v10

    aput v13, v2, v11

    aput v12, v2, v10

    add-int/lit8 v11, v11, 0x1

    :cond_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_40
    aget v9, v1, v11

    aget v10, v1, v8

    aput v10, v1, v11

    aput v9, v1, v8

    aget v9, v2, v11

    aget v10, v2, v8

    aput v10, v2, v11

    aput v9, v2, v8

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

    goto :goto_17

    :cond_65
    move v1, v3

    move v2, v1

    :goto_67
    iget v4, p0, Lu/j;->d:I

    if-ge v1, v4, :cond_7a

    iget-object v4, p0, Lu/j;->b:[I

    add-int/lit8 v6, v1, -0x1

    aget v6, v4, v6

    aget v4, v4, v1

    if-eq v6, v4, :cond_77

    add-int/lit8 v2, v2, 0x1

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_7a
    new-array v1, v2, [D

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v2, v0, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v5

    move v3, v2

    :goto_8c
    iget v4, p0, Lu/j;->d:I

    if-ge v2, v4, :cond_b8

    if-lez v2, :cond_9d

    iget-object v4, p0, Lu/j;->b:[I

    aget v6, v4, v2

    add-int/lit8 v7, v2, -0x1

    aget v4, v4, v7

    if-ne v6, v4, :cond_9d

    goto :goto_b5

    :cond_9d
    iget-object v4, p0, Lu/j;->b:[I

    aget v4, v4, v2

    int-to-double v6, v4

    const-wide v8, 0x3f847ae147ae147bL  # 0.01

    mul-double/2addr v6, v8

    aput-wide v6, v1, v3

    aget-object v4, v0, v3

    iget-object v6, p0, Lu/j;->c:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    :cond_b8
    invoke-static {p1, v1, v0}, Lu/b;->a(I[D[[D)Lu/b;

    move-result-object p1

    iput-object p1, p0, Lu/j;->a:Lu/b;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lu/j;->e:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lu/j;->d:I

    if-ge v2, v3, :cond_38

    const-string v3, "["

    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lu/j;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lu/j;->c:[F

    aget v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_38
    return-object v0
.end method
