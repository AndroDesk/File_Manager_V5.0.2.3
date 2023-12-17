.class public final Lu/f;
.super Lu/b;
.source "LinearCurveFit.java"


# instance fields
.field public a:[D

.field public b:[[D

.field public c:[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lu/b;-><init>()V

    .line 4
    array-length v0, p1

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v1, p2, v0

    .line 8
    array-length v1, v1

    .line 9
    new-array v2, v1, [D

    .line 11
    iput-object v2, p0, Lu/f;->c:[D

    .line 13
    iput-object p1, p0, Lu/f;->a:[D

    .line 15
    iput-object p2, p0, Lu/f;->b:[[D

    .line 17
    const/4 v2, 0x2

    .line 18
    if-le v1, v2, :cond_28

    .line 20
    const-wide/16 v1, 0x0

    .line 22
    move v3, v0

    .line 23
    :goto_16
    array-length v4, p1

    .line 24
    if-ge v3, v4, :cond_28

    .line 26
    aget-object v4, p2, v3

    .line 28
    aget-wide v5, v4, v0

    .line 30
    if-lez v3, :cond_24

    .line 32
    sub-double v1, v5, v1

    .line 34
    invoke-static {v1, v2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    .line 37
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 39
    move-wide v1, v5

    .line 40
    goto :goto_16

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public final b(D)D
    .registers 12

    .line 1
    iget-object v0, p0, Lu/f;->a:[D

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    aget-wide v3, v0, v2

    .line 7
    cmpg-double v5, p1, v3

    .line 9
    if-gtz v5, :cond_16

    .line 11
    iget-object v0, p0, Lu/f;->b:[[D

    .line 13
    aget-object v0, v0, v2

    .line 15
    aget-wide v1, v0, v2

    .line 17
    sub-double/2addr p1, v3

    .line 18
    invoke-virtual {p0, v3, v4}, Lu/f;->f(D)D

    .line 21
    move-result-wide v3

    .line 22
    goto :goto_29

    .line 23
    :cond_16
    add-int/lit8 v1, v1, -0x1

    .line 25
    aget-wide v3, v0, v1

    .line 27
    cmpl-double v0, p1, v3

    .line 29
    if-ltz v0, :cond_2c

    .line 31
    iget-object v0, p0, Lu/f;->b:[[D

    .line 33
    aget-object v0, v0, v1

    .line 35
    aget-wide v1, v0, v2

    .line 37
    sub-double/2addr p1, v3

    .line 38
    invoke-virtual {p0, v3, v4}, Lu/f;->f(D)D

    .line 41
    move-result-wide v3

    .line 42
    :goto_29
    mul-double/2addr v3, p1

    .line 43
    add-double/2addr v3, v1

    .line 44
    return-wide v3

    .line 45
    :cond_2c
    move v0, v2

    .line 46
    :goto_2d
    if-ge v0, v1, :cond_5c

    .line 48
    iget-object v3, p0, Lu/f;->a:[D

    .line 50
    aget-wide v4, v3, v0

    .line 52
    cmpl-double v6, p1, v4

    .line 54
    if-nez v6, :cond_3e

    .line 56
    iget-object p1, p0, Lu/f;->b:[[D

    .line 58
    aget-object p1, p1, v0

    .line 60
    aget-wide v0, p1, v2

    .line 62
    return-wide v0

    .line 63
    :cond_3e
    add-int/lit8 v6, v0, 0x1

    .line 65
    aget-wide v7, v3, v6

    .line 67
    cmpg-double v3, p1, v7

    .line 69
    if-gez v3, :cond_5a

    .line 71
    sub-double/2addr v7, v4

    .line 72
    sub-double/2addr p1, v4

    .line 73
    div-double/2addr p1, v7

    .line 74
    iget-object v1, p0, Lu/f;->b:[[D

    .line 76
    aget-object v0, v1, v0

    .line 78
    aget-wide v3, v0, v2

    .line 80
    aget-object v0, v1, v6

    .line 82
    aget-wide v1, v0, v2

    .line 84
    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    .line 86
    sub-double/2addr v5, p1

    .line 87
    mul-double/2addr v5, v3

    .line 88
    mul-double/2addr v1, p1

    .line 89
    add-double/2addr v1, v5

    .line 90
    return-wide v1

    .line 91
    :cond_5a
    move v0, v6

    .line 92
    goto :goto_2d

    .line 93
    :cond_5c
    const-wide/16 p1, 0x0

    .line 95
    return-wide p1
.end method

.method public final c(D[D)V
    .registers 16

    .line 1
    iget-object v0, p0, Lu/f;->a:[D

    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lu/f;->b:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    aget-wide v4, v0, v3

    .line 12
    cmpg-double v6, p1, v4

    .line 14
    if-gtz v6, :cond_2f

    .line 16
    iget-object v0, p0, Lu/f;->c:[D

    .line 18
    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    .line 21
    move v0, v3

    .line 22
    :goto_15
    if-ge v0, v2, :cond_2e

    .line 24
    iget-object v1, p0, Lu/f;->b:[[D

    .line 26
    aget-object v1, v1, v3

    .line 28
    aget-wide v4, v1, v0

    .line 30
    iget-object v1, p0, Lu/f;->a:[D

    .line 32
    aget-wide v6, v1, v3

    .line 34
    sub-double v6, p1, v6

    .line 36
    iget-object v1, p0, Lu/f;->c:[D

    .line 38
    aget-wide v8, v1, v0

    .line 40
    mul-double/2addr v6, v8

    .line 41
    add-double/2addr v6, v4

    .line 42
    aput-wide v6, p3, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_15

    .line 47
    :cond_2e
    return-void

    .line 48
    :cond_2f
    add-int/lit8 v4, v1, -0x1

    .line 50
    aget-wide v5, v0, v4

    .line 52
    cmpl-double v0, p1, v5

    .line 54
    if-ltz v0, :cond_56

    .line 56
    iget-object v0, p0, Lu/f;->c:[D

    .line 58
    invoke-virtual {p0, v5, v6, v0}, Lu/f;->e(D[D)V

    .line 61
    :goto_3c
    if-ge v3, v2, :cond_55

    .line 63
    iget-object v0, p0, Lu/f;->b:[[D

    .line 65
    aget-object v0, v0, v4

    .line 67
    aget-wide v5, v0, v3

    .line 69
    iget-object v0, p0, Lu/f;->a:[D

    .line 71
    aget-wide v7, v0, v4

    .line 73
    sub-double v0, p1, v7

    .line 75
    iget-object v7, p0, Lu/f;->c:[D

    .line 77
    aget-wide v8, v7, v3

    .line 79
    mul-double/2addr v0, v8

    .line 80
    add-double/2addr v0, v5

    .line 81
    aput-wide v0, p3, v3

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_3c

    .line 86
    :cond_55
    return-void

    .line 87
    :cond_56
    move v0, v3

    .line 88
    :goto_57
    add-int/lit8 v4, v1, -0x1

    .line 90
    if-ge v0, v4, :cond_9a

    .line 92
    iget-object v4, p0, Lu/f;->a:[D

    .line 94
    aget-wide v5, v4, v0

    .line 96
    cmpl-double v4, p1, v5

    .line 98
    if-nez v4, :cond_71

    .line 100
    move v4, v3

    .line 101
    :goto_64
    if-ge v4, v2, :cond_71

    .line 103
    iget-object v5, p0, Lu/f;->b:[[D

    .line 105
    aget-object v5, v5, v0

    .line 107
    aget-wide v6, v5, v4

    .line 109
    aput-wide v6, p3, v4

    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_64

    .line 114
    :cond_71
    iget-object v4, p0, Lu/f;->a:[D

    .line 116
    add-int/lit8 v5, v0, 0x1

    .line 118
    aget-wide v6, v4, v5

    .line 120
    cmpg-double v8, p1, v6

    .line 122
    if-gez v8, :cond_98

    .line 124
    aget-wide v8, v4, v0

    .line 126
    sub-double/2addr v6, v8

    .line 127
    sub-double/2addr p1, v8

    .line 128
    div-double/2addr p1, v6

    .line 129
    :goto_80
    if-ge v3, v2, :cond_97

    .line 131
    iget-object v1, p0, Lu/f;->b:[[D

    .line 133
    aget-object v4, v1, v0

    .line 135
    aget-wide v6, v4, v3

    .line 137
    aget-object v1, v1, v5

    .line 139
    aget-wide v8, v1, v3

    .line 141
    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    .line 143
    sub-double/2addr v10, p1

    .line 144
    mul-double/2addr v10, v6

    .line 145
    mul-double/2addr v8, p1

    .line 146
    add-double/2addr v8, v10

    .line 147
    aput-wide v8, p3, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 151
    goto :goto_80

    .line 152
    :cond_97
    return-void

    .line 153
    :cond_98
    move v0, v5

    .line 154
    goto :goto_57

    .line 155
    :cond_9a
    return-void
.end method

.method public final d(D[F)V
    .registers 16

    .line 1
    iget-object v0, p0, Lu/f;->a:[D

    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lu/f;->b:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    aget-wide v4, v0, v3

    .line 12
    cmpg-double v6, p1, v4

    .line 14
    if-gtz v6, :cond_30

    .line 16
    iget-object v0, p0, Lu/f;->c:[D

    .line 18
    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    .line 21
    move v0, v3

    .line 22
    :goto_15
    if-ge v0, v2, :cond_2f

    .line 24
    iget-object v1, p0, Lu/f;->b:[[D

    .line 26
    aget-object v1, v1, v3

    .line 28
    aget-wide v4, v1, v0

    .line 30
    iget-object v1, p0, Lu/f;->a:[D

    .line 32
    aget-wide v6, v1, v3

    .line 34
    sub-double v6, p1, v6

    .line 36
    iget-object v1, p0, Lu/f;->c:[D

    .line 38
    aget-wide v8, v1, v0

    .line 40
    mul-double/2addr v6, v8

    .line 41
    add-double/2addr v6, v4

    .line 42
    double-to-float v1, v6

    .line 43
    aput v1, p3, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_15

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    add-int/lit8 v1, v1, -0x1

    .line 51
    aget-wide v4, v0, v1

    .line 53
    cmpl-double v0, p1, v4

    .line 55
    if-ltz v0, :cond_58

    .line 57
    iget-object v0, p0, Lu/f;->c:[D

    .line 59
    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    .line 62
    :goto_3d
    if-ge v3, v2, :cond_57

    .line 64
    iget-object v0, p0, Lu/f;->b:[[D

    .line 66
    aget-object v0, v0, v1

    .line 68
    aget-wide v4, v0, v3

    .line 70
    iget-object v0, p0, Lu/f;->a:[D

    .line 72
    aget-wide v6, v0, v1

    .line 74
    sub-double v6, p1, v6

    .line 76
    iget-object v0, p0, Lu/f;->c:[D

    .line 78
    aget-wide v8, v0, v3

    .line 80
    mul-double/2addr v6, v8

    .line 81
    add-double/2addr v6, v4

    .line 82
    double-to-float v0, v6

    .line 83
    aput v0, p3, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_3d

    .line 88
    :cond_57
    return-void

    .line 89
    :cond_58
    move v0, v3

    .line 90
    :goto_59
    if-ge v0, v1, :cond_9c

    .line 92
    iget-object v4, p0, Lu/f;->a:[D

    .line 94
    aget-wide v5, v4, v0

    .line 96
    cmpl-double v4, p1, v5

    .line 98
    if-nez v4, :cond_72

    .line 100
    move v4, v3

    .line 101
    :goto_64
    if-ge v4, v2, :cond_72

    .line 103
    iget-object v5, p0, Lu/f;->b:[[D

    .line 105
    aget-object v5, v5, v0

    .line 107
    aget-wide v6, v5, v4

    .line 109
    double-to-float v5, v6

    .line 110
    aput v5, p3, v4

    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 114
    goto :goto_64

    .line 115
    :cond_72
    iget-object v4, p0, Lu/f;->a:[D

    .line 117
    add-int/lit8 v5, v0, 0x1

    .line 119
    aget-wide v6, v4, v5

    .line 121
    cmpg-double v8, p1, v6

    .line 123
    if-gez v8, :cond_9a

    .line 125
    aget-wide v8, v4, v0

    .line 127
    sub-double/2addr v6, v8

    .line 128
    sub-double/2addr p1, v8

    .line 129
    div-double/2addr p1, v6

    .line 130
    :goto_81
    if-ge v3, v2, :cond_99

    .line 132
    iget-object v1, p0, Lu/f;->b:[[D

    .line 134
    aget-object v4, v1, v0

    .line 136
    aget-wide v6, v4, v3

    .line 138
    aget-object v1, v1, v5

    .line 140
    aget-wide v8, v1, v3

    .line 142
    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    .line 144
    sub-double/2addr v10, p1

    .line 145
    mul-double/2addr v10, v6

    .line 146
    mul-double/2addr v8, p1

    .line 147
    add-double/2addr v8, v10

    .line 148
    double-to-float v1, v8

    .line 149
    aput v1, p3, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 153
    goto :goto_81

    .line 154
    :cond_99
    return-void

    .line 155
    :cond_9a
    move v0, v5

    .line 156
    goto :goto_59

    .line 157
    :cond_9c
    return-void
.end method

.method public final e(D[D)V
    .registers 16

    .line 1
    iget-object v0, p0, Lu/f;->a:[D

    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lu/f;->b:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    aget-wide v4, v0, v3

    .line 12
    cmpg-double v6, p1, v4

    .line 14
    if-gtz v6, :cond_11

    .line 16
    :goto_f
    move-wide p1, v4

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    add-int/lit8 v4, v1, -0x1

    .line 20
    aget-wide v4, v0, v4

    .line 22
    cmpl-double v0, p1, v4

    .line 24
    if-ltz v0, :cond_1a

    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    :goto_1a
    move v0, v3

    .line 28
    :goto_1b
    add-int/lit8 v4, v1, -0x1

    .line 30
    if-ge v0, v4, :cond_41

    .line 32
    iget-object v4, p0, Lu/f;->a:[D

    .line 34
    add-int/lit8 v5, v0, 0x1

    .line 36
    aget-wide v6, v4, v5

    .line 38
    cmpg-double v8, p1, v6

    .line 40
    if-gtz v8, :cond_3f

    .line 42
    aget-wide p1, v4, v0

    .line 44
    sub-double/2addr v6, p1

    .line 45
    :goto_2c
    if-ge v3, v2, :cond_41

    .line 47
    iget-object p1, p0, Lu/f;->b:[[D

    .line 49
    aget-object p2, p1, v0

    .line 51
    aget-wide v8, p2, v3

    .line 53
    aget-object p1, p1, v5

    .line 55
    aget-wide v10, p1, v3

    .line 57
    sub-double/2addr v10, v8

    .line 58
    div-double/2addr v10, v6

    .line 59
    aput-wide v10, p3, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_2c

    .line 64
    :cond_3f
    move v0, v5

    .line 65
    goto :goto_1b

    .line 66
    :cond_41
    return-void
.end method

.method public final f(D)D
    .registers 11

    .line 1
    iget-object v0, p0, Lu/f;->a:[D

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    aget-wide v3, v0, v2

    .line 7
    cmpg-double v5, p1, v3

    .line 9
    if-gez v5, :cond_c

    .line 11
    :goto_a
    move-wide p1, v3

    .line 12
    goto :goto_15

    .line 13
    :cond_c
    add-int/lit8 v3, v1, -0x1

    .line 15
    aget-wide v3, v0, v3

    .line 17
    cmpl-double v0, p1, v3

    .line 19
    if-ltz v0, :cond_15

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    :goto_15
    move v0, v2

    .line 23
    :goto_16
    add-int/lit8 v3, v1, -0x1

    .line 25
    if-ge v0, v3, :cond_36

    .line 27
    iget-object v3, p0, Lu/f;->a:[D

    .line 29
    add-int/lit8 v4, v0, 0x1

    .line 31
    aget-wide v5, v3, v4

    .line 33
    cmpg-double v7, p1, v5

    .line 35
    if-gtz v7, :cond_34

    .line 37
    aget-wide p1, v3, v0

    .line 39
    sub-double/2addr v5, p1

    .line 40
    iget-object p1, p0, Lu/f;->b:[[D

    .line 42
    aget-object p2, p1, v0

    .line 44
    aget-wide v0, p2, v2

    .line 46
    aget-object p1, p1, v4

    .line 48
    aget-wide v2, p1, v2

    .line 50
    sub-double/2addr v2, v0

    .line 51
    div-double/2addr v2, v5

    .line 52
    return-wide v2

    .line 53
    :cond_34
    move v0, v4

    .line 54
    goto :goto_16

    .line 55
    :cond_36
    const-wide/16 p1, 0x0

    .line 57
    return-wide p1
.end method
