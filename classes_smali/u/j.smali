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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xa

    .line 6
    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lu/j;->b:[I

    .line 10
    new-array v0, v0, [F

    .line 12
    iput-object v0, p0, Lu/j;->c:[F

    .line 14
    return-void
.end method


# virtual methods
.method public final a(F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lu/j;->a:Lu/b;

    .line 3
    float-to-double v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Lu/b;->b(D)D

    .line 7
    move-result-wide v0

    .line 8
    double-to-float p1, v0

    .line 9
    return p1
.end method

.method public b(FI)V
    .registers 6

    .line 1
    iget-object v0, p0, Lu/j;->b:[I

    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lu/j;->d:I

    .line 6
    add-int/lit8 v2, v2, 0x1

    .line 8
    if-ge v1, v2, :cond_1d

    .line 10
    array-length v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 13
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lu/j;->b:[I

    .line 19
    iget-object v0, p0, Lu/j;->c:[F

    .line 21
    array-length v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x2

    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lu/j;->c:[F

    .line 30
    :cond_1d
    iget-object v0, p0, Lu/j;->b:[I

    .line 32
    iget v1, p0, Lu/j;->d:I

    .line 34
    aput p2, v0, v1

    .line 36
    iget-object p2, p0, Lu/j;->c:[F

    .line 38
    aput p1, p2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    iput v1, p0, Lu/j;->d:I

    .line 44
    return-void
.end method

.method public c(I)V
    .registers 16

    .line 1
    iget v0, p0, Lu/j;->d:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lu/j;->b:[I

    .line 8
    iget-object v2, p0, Lu/j;->c:[F

    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    array-length v4, v1

    .line 13
    add-int/lit8 v4, v4, 0xa

    .line 15
    new-array v4, v4, [I

    .line 17
    const/4 v5, 0x0

    .line 18
    aput v0, v4, v5

    .line 20
    aput v5, v4, v3

    .line 22
    const/4 v0, 0x2

    .line 23
    move v6, v0

    .line 24
    :cond_17
    :goto_17
    if-lez v6, :cond_65

    .line 26
    add-int/lit8 v6, v6, -0x1

    .line 28
    aget v7, v4, v6

    .line 30
    add-int/lit8 v6, v6, -0x1

    .line 32
    aget v8, v4, v6

    .line 34
    if-ge v7, v8, :cond_17

    .line 36
    aget v9, v1, v8

    .line 38
    move v10, v7

    .line 39
    move v11, v10

    .line 40
    :goto_27
    if-ge v10, v8, :cond_40

    .line 42
    aget v12, v1, v10

    .line 44
    if-gt v12, v9, :cond_3d

    .line 46
    aget v13, v1, v11

    .line 48
    aput v12, v1, v11

    .line 50
    aput v13, v1, v10

    .line 52
    aget v12, v2, v11

    .line 54
    aget v13, v2, v10

    .line 56
    aput v13, v2, v11

    .line 58
    aput v12, v2, v10

    .line 60
    add-int/lit8 v11, v11, 0x1

    .line 62
    :cond_3d
    add-int/lit8 v10, v10, 0x1

    .line 64
    goto :goto_27

    .line 65
    :cond_40
    aget v9, v1, v11

    .line 67
    aget v10, v1, v8

    .line 69
    aput v10, v1, v11

    .line 71
    aput v9, v1, v8

    .line 73
    aget v9, v2, v11

    .line 75
    aget v10, v2, v8

    .line 77
    aput v10, v2, v11

    .line 79
    aput v9, v2, v8

    .line 81
    add-int/lit8 v9, v6, 0x1

    .line 83
    add-int/lit8 v10, v11, -0x1

    .line 85
    aput v10, v4, v6

    .line 87
    add-int/lit8 v6, v9, 0x1

    .line 89
    aput v7, v4, v9

    .line 91
    add-int/lit8 v7, v6, 0x1

    .line 93
    aput v8, v4, v6

    .line 95
    add-int/lit8 v6, v7, 0x1

    .line 97
    add-int/lit8 v11, v11, 0x1

    .line 99
    aput v11, v4, v7

    .line 101
    goto :goto_17

    .line 102
    :cond_65
    move v1, v3

    .line 103
    move v2, v1

    .line 104
    :goto_67
    iget v4, p0, Lu/j;->d:I

    .line 106
    if-ge v1, v4, :cond_7a

    .line 108
    iget-object v4, p0, Lu/j;->b:[I

    .line 110
    add-int/lit8 v6, v1, -0x1

    .line 112
    aget v6, v4, v6

    .line 114
    aget v4, v4, v1

    .line 116
    if-eq v6, v4, :cond_77

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 120
    :cond_77
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_67

    .line 123
    :cond_7a
    new-array v1, v2, [D

    .line 125
    new-array v0, v0, [I

    .line 127
    aput v3, v0, v3

    .line 129
    aput v2, v0, v5

    .line 131
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 133
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, [[D

    .line 139
    move v2, v5

    .line 140
    move v3, v2

    .line 141
    :goto_8c
    iget v4, p0, Lu/j;->d:I

    .line 143
    if-ge v2, v4, :cond_b8

    .line 145
    if-lez v2, :cond_9d

    .line 147
    iget-object v4, p0, Lu/j;->b:[I

    .line 149
    aget v6, v4, v2

    .line 151
    add-int/lit8 v7, v2, -0x1

    .line 153
    aget v4, v4, v7

    .line 155
    if-ne v6, v4, :cond_9d

    .line 157
    goto :goto_b5

    .line 158
    :cond_9d
    iget-object v4, p0, Lu/j;->b:[I

    .line 160
    aget v4, v4, v2

    .line 162
    int-to-double v6, v4

    .line 163
    const-wide v8, 0x3f847ae147ae147bL  # 0.01

    .line 168
    mul-double/2addr v6, v8

    .line 169
    aput-wide v6, v1, v3

    .line 171
    aget-object v4, v0, v3

    .line 173
    iget-object v6, p0, Lu/j;->c:[F

    .line 175
    aget v6, v6, v2

    .line 177
    float-to-double v6, v6

    .line 178
    aput-wide v6, v4, v5

    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 182
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_8c

    .line 185
    :cond_b8
    invoke-static {p1, v1, v0}, Lu/b;->a(I[D[[D)Lu/b;

    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lu/j;->a:Lu/b;

    .line 191
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lu/j;->e:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 5
    const-string v2, "##.##"

    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    iget v3, p0, Lu/j;->d:I

    .line 13
    if-ge v2, v3, :cond_38

    .line 15
    const-string v3, "["

    .line 17
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Lu/j;->b:[I

    .line 23
    aget v3, v3, v2

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " , "

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Lu/j;->c:[F

    .line 35
    aget v3, v3, v2

    .line 37
    float-to-double v3, v3

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "] "

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_a

    .line 57
    :cond_38
    return-object v0
.end method
