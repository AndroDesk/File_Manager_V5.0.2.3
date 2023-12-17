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
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/l;->b:I

    .line 7
    const/16 v1, 0xa

    .line 9
    new-array v1, v1, [I

    .line 11
    iput-object v1, p0, Lu/l;->c:[I

    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [I

    .line 16
    fill-array-data v1, :array_28

    .line 19
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 21
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [[F

    .line 27
    iput-object v1, p0, Lu/l;->d:[[F

    .line 29
    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [F

    .line 32
    iput-object v1, p0, Lu/l;->g:[F

    .line 34
    iput-boolean v0, p0, Lu/l;->h:Z

    .line 36
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 38
    iput v0, p0, Lu/l;->j:F

    .line 40
    return-void

    .line 41
    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method


# virtual methods
.method public final a(F)F
    .registers 6

    .line 1
    iget v0, p0, Lu/l;->b:I

    .line 3
    const v1, 0x40c90fdb

    .line 6
    const/high16 v2, 0x40000000  # 2.0f

    .line 8
    const/high16 v3, 0x3f800000  # 1.0f

    .line 10
    packed-switch v0, :pswitch_data_3e

    .line 13
    mul-float/2addr p1, v1

    .line 14
    float-to-double v0, p1

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 18
    move-result-wide v0

    .line 19
    double-to-float p1, v0

    .line 20
    return p1

    .line 21
    :pswitch_14  #0x6
    const/high16 v0, 0x40800000  # 4.0f

    .line 23
    mul-float/2addr p1, v0

    .line 24
    rem-float/2addr p1, v0

    .line 25
    sub-float/2addr p1, v2

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result p1

    .line 30
    sub-float p1, v3, p1

    .line 32
    mul-float/2addr p1, p1

    .line 33
    :goto_20
    sub-float/2addr v3, p1

    .line 34
    return v3

    .line 35
    :pswitch_22  #0x5
    mul-float/2addr p1, v1

    .line 36
    float-to-double v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 40
    move-result-wide v0

    .line 41
    double-to-float p1, v0

    .line 42
    return p1

    .line 43
    :pswitch_2a  #0x4
    mul-float/2addr p1, v2

    .line 44
    add-float/2addr p1, v3

    .line 45
    rem-float/2addr p1, v2

    .line 46
    goto :goto_20

    .line 47
    :pswitch_2e  #0x3
    mul-float/2addr p1, v2

    .line 48
    add-float/2addr p1, v3

    .line 49
    rem-float/2addr p1, v2

    .line 50
    sub-float/2addr p1, v3

    .line 51
    return p1

    .line 52
    :pswitch_33  #0x2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p1

    .line 56
    goto :goto_20

    .line 57
    :pswitch_38  #0x1
    mul-float/2addr p1, v1

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 61
    move-result p1

    .line 62
    return p1

    .line 63
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

    .line 1
    iget-object v0, p0, Lu/l;->c:[I

    .line 3
    iget v1, p0, Lu/l;->e:I

    .line 5
    aput p1, v0, v1

    .line 7
    iget-object p1, p0, Lu/l;->d:[[F

    .line 9
    aget-object p1, p1, v1

    .line 11
    const/4 v0, 0x0

    .line 12
    aput p3, p1, v0

    .line 14
    const/4 p3, 0x1

    .line 15
    aput p4, p1, p3

    .line 17
    const/4 p4, 0x2

    .line 18
    aput p5, p1, p4

    .line 20
    iget p1, p0, Lu/l;->b:I

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lu/l;->b:I

    .line 28
    iget p1, p0, Lu/l;->e:I

    .line 30
    add-int/2addr p1, p3

    .line 31
    iput p1, p0, Lu/l;->e:I

    .line 33
    return-void
.end method

.method public c(I)V
    .registers 16

    .line 1
    iget v0, p0, Lu/l;->e:I

    .line 3
    if-nez v0, :cond_19

    .line 5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    const-string v0, "Error no points added to "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lu/l;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_19
    iget-object v1, p0, Lu/l;->c:[I

    .line 28
    iget-object v2, p0, Lu/l;->d:[[F

    .line 30
    const/4 v3, 0x1

    .line 31
    sub-int/2addr v0, v3

    .line 32
    array-length v4, v1

    .line 33
    add-int/lit8 v4, v4, 0xa

    .line 35
    new-array v4, v4, [I

    .line 37
    const/4 v5, 0x0

    .line 38
    aput v0, v4, v5

    .line 40
    aput v5, v4, v3

    .line 42
    const/4 v0, 0x2

    .line 43
    move v6, v0

    .line 44
    :cond_2b
    :goto_2b
    if-lez v6, :cond_79

    .line 46
    add-int/lit8 v6, v6, -0x1

    .line 48
    aget v7, v4, v6

    .line 50
    add-int/lit8 v6, v6, -0x1

    .line 52
    aget v8, v4, v6

    .line 54
    if-ge v7, v8, :cond_2b

    .line 56
    aget v9, v1, v8

    .line 58
    move v10, v7

    .line 59
    move v11, v10

    .line 60
    :goto_3b
    if-ge v10, v8, :cond_54

    .line 62
    aget v12, v1, v10

    .line 64
    if-gt v12, v9, :cond_51

    .line 66
    aget v13, v1, v11

    .line 68
    aput v12, v1, v11

    .line 70
    aput v13, v1, v10

    .line 72
    aget-object v12, v2, v11

    .line 74
    aget-object v13, v2, v10

    .line 76
    aput-object v13, v2, v11

    .line 78
    aput-object v12, v2, v10

    .line 80
    add-int/lit8 v11, v11, 0x1

    .line 82
    :cond_51
    add-int/lit8 v10, v10, 0x1

    .line 84
    goto :goto_3b

    .line 85
    :cond_54
    aget v9, v1, v11

    .line 87
    aget v10, v1, v8

    .line 89
    aput v10, v1, v11

    .line 91
    aput v9, v1, v8

    .line 93
    aget-object v9, v2, v11

    .line 95
    aget-object v10, v2, v8

    .line 97
    aput-object v10, v2, v11

    .line 99
    aput-object v9, v2, v8

    .line 101
    add-int/lit8 v9, v6, 0x1

    .line 103
    add-int/lit8 v10, v11, -0x1

    .line 105
    aput v10, v4, v6

    .line 107
    add-int/lit8 v6, v9, 0x1

    .line 109
    aput v7, v4, v9

    .line 111
    add-int/lit8 v7, v6, 0x1

    .line 113
    aput v8, v4, v6

    .line 115
    add-int/lit8 v6, v7, 0x1

    .line 117
    add-int/lit8 v11, v11, 0x1

    .line 119
    aput v11, v4, v7

    .line 121
    goto :goto_2b

    .line 122
    :cond_79
    move v1, v3

    .line 123
    move v2, v5

    .line 124
    :goto_7b
    iget-object v4, p0, Lu/l;->c:[I

    .line 126
    array-length v6, v4

    .line 127
    if-ge v1, v6, :cond_8d

    .line 129
    aget v6, v4, v1

    .line 131
    add-int/lit8 v7, v1, -0x1

    .line 133
    aget v4, v4, v7

    .line 135
    if-eq v6, v4, :cond_8a

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 139
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    .line 141
    goto :goto_7b

    .line 142
    :cond_8d
    if-nez v2, :cond_90

    .line 144
    move v2, v3

    .line 145
    :cond_90
    new-array v1, v2, [D

    .line 147
    const/4 v4, 0x3

    .line 148
    new-array v6, v0, [I

    .line 150
    aput v4, v6, v3

    .line 152
    aput v2, v6, v5

    .line 154
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 156
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 159
    move-result-object v2

    .line 160
    check-cast v2, [[D

    .line 162
    move v4, v5

    .line 163
    move v6, v4

    .line 164
    :goto_a3
    iget v7, p0, Lu/l;->e:I

    .line 166
    if-ge v4, v7, :cond_db

    .line 168
    if-lez v4, :cond_b4

    .line 170
    iget-object v7, p0, Lu/l;->c:[I

    .line 172
    aget v8, v7, v4

    .line 174
    add-int/lit8 v9, v4, -0x1

    .line 176
    aget v7, v7, v9

    .line 178
    if-ne v8, v7, :cond_b4

    .line 180
    goto :goto_d8

    .line 181
    :cond_b4
    iget-object v7, p0, Lu/l;->c:[I

    .line 183
    aget v7, v7, v4

    .line 185
    int-to-double v7, v7

    .line 186
    const-wide v9, 0x3f847ae147ae147bL  # 0.01

    .line 191
    mul-double/2addr v7, v9

    .line 192
    aput-wide v7, v1, v6

    .line 194
    aget-object v7, v2, v6

    .line 196
    iget-object v8, p0, Lu/l;->d:[[F

    .line 198
    aget-object v8, v8, v4

    .line 200
    aget v9, v8, v5

    .line 202
    float-to-double v9, v9

    .line 203
    aput-wide v9, v7, v5

    .line 205
    aget v9, v8, v3

    .line 207
    float-to-double v9, v9

    .line 208
    aput-wide v9, v7, v3

    .line 210
    aget v8, v8, v0

    .line 212
    float-to-double v8, v8

    .line 213
    aput-wide v8, v7, v0

    .line 215
    add-int/lit8 v6, v6, 0x1

    .line 217
    :goto_d8
    add-int/lit8 v4, v4, 0x1

    .line 219
    goto :goto_a3

    .line 220
    :cond_db
    invoke-static {p1, v1, v2}, Lu/b;->a(I[D[[D)Lu/b;

    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lu/l;->a:Lu/b;

    .line 226
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lu/l;->f:Ljava/lang/String;

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
    iget v3, p0, Lu/l;->e:I

    .line 13
    if-ge v2, v3, :cond_37

    .line 15
    const-string v3, "["

    .line 17
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Lu/l;->c:[I

    .line 23
    aget v3, v3, v2

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " , "

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Lu/l;->d:[[F

    .line 35
    aget-object v3, v3, v2

    .line 37
    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "] "

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_a

    .line 56
    :cond_37
    return-object v0
.end method
