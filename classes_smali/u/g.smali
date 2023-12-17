.class public final Lu/g;
.super Lu/b;
.source "MonotonicCurveFit.java"


# instance fields
.field public a:[D

.field public b:[[D

.field public c:[[D

.field public d:[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-direct/range {p0 .. p0}, Lu/b;-><init>()V

    .line 10
    array-length v3, v1

    .line 11
    const/4 v4, 0x0

    .line 12
    aget-object v5, v2, v4

    .line 14
    array-length v5, v5

    .line 15
    new-array v6, v5, [D

    .line 17
    iput-object v6, v0, Lu/g;->d:[D

    .line 19
    add-int/lit8 v6, v3, -0x1

    .line 21
    const/4 v7, 0x2

    .line 22
    new-array v8, v7, [I

    .line 24
    const/4 v9, 0x1

    .line 25
    aput v5, v8, v9

    .line 27
    aput v6, v8, v4

    .line 29
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 31
    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    move-result-object v8

    .line 35
    check-cast v8, [[D

    .line 37
    new-array v7, v7, [I

    .line 39
    aput v5, v7, v9

    .line 41
    aput v3, v7, v4

    .line 43
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 45
    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 48
    move-result-object v7

    .line 49
    check-cast v7, [[D

    .line 51
    move v9, v4

    .line 52
    :goto_33
    if-ge v9, v5, :cond_74

    .line 54
    move v10, v4

    .line 55
    :goto_36
    if-ge v10, v6, :cond_67

    .line 57
    add-int/lit8 v11, v10, 0x1

    .line 59
    aget-wide v12, v1, v11

    .line 61
    aget-wide v14, v1, v10

    .line 63
    sub-double/2addr v12, v14

    .line 64
    aget-object v14, v8, v10

    .line 66
    aget-object v15, v2, v11

    .line 68
    aget-wide v16, v15, v9

    .line 70
    aget-object v15, v2, v10

    .line 72
    aget-wide v18, v15, v9

    .line 74
    sub-double v16, v16, v18

    .line 76
    div-double v16, v16, v12

    .line 78
    aput-wide v16, v14, v9

    .line 80
    if-nez v10, :cond_56

    .line 82
    aget-object v10, v7, v10

    .line 84
    aput-wide v16, v10, v9

    .line 86
    goto :goto_65

    .line 87
    :cond_56
    aget-object v12, v7, v10

    .line 89
    add-int/lit8 v10, v10, -0x1

    .line 91
    aget-object v10, v8, v10

    .line 93
    aget-wide v13, v10, v9

    .line 95
    add-double v13, v13, v16

    .line 97
    const-wide/high16 v15, 0x3fe0000000000000L  # 0.5

    .line 99
    mul-double/2addr v13, v15

    .line 100
    aput-wide v13, v12, v9

    .line 102
    :goto_65
    move v10, v11

    .line 103
    goto :goto_36

    .line 104
    :cond_67
    aget-object v10, v7, v6

    .line 106
    add-int/lit8 v11, v3, -0x2

    .line 108
    aget-object v11, v8, v11

    .line 110
    aget-wide v12, v11, v9

    .line 112
    aput-wide v12, v10, v9

    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 116
    goto :goto_33

    .line 117
    :cond_74
    move v3, v4

    .line 118
    :goto_75
    if-ge v3, v6, :cond_c6

    .line 120
    move v9, v4

    .line 121
    :goto_78
    if-ge v9, v5, :cond_c3

    .line 123
    aget-object v10, v8, v3

    .line 125
    aget-wide v11, v10, v9

    .line 127
    const-wide/16 v13, 0x0

    .line 129
    cmpl-double v10, v11, v13

    .line 131
    if-nez v10, :cond_8f

    .line 133
    aget-object v10, v7, v3

    .line 135
    aput-wide v13, v10, v9

    .line 137
    add-int/lit8 v10, v3, 0x1

    .line 139
    aget-object v10, v7, v10

    .line 141
    aput-wide v13, v10, v9

    .line 143
    goto :goto_c0

    .line 144
    :cond_8f
    aget-object v10, v7, v3

    .line 146
    aget-wide v13, v10, v9

    .line 148
    div-double/2addr v13, v11

    .line 149
    add-int/lit8 v10, v3, 0x1

    .line 151
    aget-object v15, v7, v10

    .line 153
    aget-wide v16, v15, v9

    .line 155
    div-double v11, v16, v11

    .line 157
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 160
    move-result-wide v15

    .line 161
    const-wide/high16 v17, 0x4022000000000000L  # 9.0

    .line 163
    cmpl-double v17, v15, v17

    .line 165
    if-lez v17, :cond_c0

    .line 167
    const-wide/high16 v17, 0x4008000000000000L  # 3.0

    .line 169
    div-double v17, v17, v15

    .line 171
    aget-object v15, v7, v3

    .line 173
    mul-double v13, v13, v17

    .line 175
    aget-object v16, v8, v3

    .line 177
    aget-wide v19, v16, v9

    .line 179
    mul-double v13, v13, v19

    .line 181
    aput-wide v13, v15, v9

    .line 183
    aget-object v10, v7, v10

    .line 185
    mul-double v17, v17, v11

    .line 187
    aget-wide v11, v16, v9

    .line 189
    mul-double v17, v17, v11

    .line 191
    aput-wide v17, v10, v9

    .line 193
    :cond_c0
    :goto_c0
    add-int/lit8 v9, v9, 0x1

    .line 195
    goto :goto_78

    .line 196
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    .line 198
    goto :goto_75

    .line 199
    :cond_c6
    iput-object v1, v0, Lu/g;->a:[D

    .line 201
    iput-object v2, v0, Lu/g;->b:[[D

    .line 203
    iput-object v7, v0, Lu/g;->c:[[D

    .line 205
    return-void
.end method

.method public static f(DDDDDD)D
    .registers 22

    mul-double v0, p2, p2

    const-wide/high16 v2, -0x3fe8000000000000L  # -6.0

    mul-double/2addr v2, v0

    mul-double v2, v2, p6

    const-wide/high16 v4, 0x4018000000000000L  # 6.0

    mul-double v6, p2, v4

    mul-double v8, v6, p6

    add-double/2addr v8, v2

    mul-double/2addr v4, v0

    mul-double/2addr v4, p4

    add-double/2addr v4, v8

    mul-double/2addr v6, p4

    sub-double/2addr v4, v6

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    mul-double/2addr v2, p0

    mul-double v6, v2, p10

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    mul-double v2, v2, p8

    mul-double/2addr v2, v0

    add-double/2addr v2, v6

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p10

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p8

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    mul-double v0, p0, p8

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static h(DDDDDD)D
    .registers 24

    mul-double v0, p2, p2

    mul-double v2, v0, p2

    const-wide/high16 v4, -0x4000000000000000L  # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L  # 3.0

    mul-double/2addr v6, v0

    mul-double v8, v6, p6

    add-double/2addr v8, v4

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    mul-double v10, v2, v4

    mul-double v10, v10, p4

    add-double/2addr v10, v8

    mul-double v6, v6, p4

    sub-double/2addr v10, v6

    add-double v10, v10, p4

    mul-double v6, p0, p10

    mul-double v8, v6, v2

    add-double/2addr v8, v10

    mul-double v10, p0, p8

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    mul-double/2addr v6, v0

    sub-double/2addr v2, v6

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    mul-double/2addr v10, p2

    add-double/2addr v10, v2

    return-wide v10
.end method


# virtual methods
.method public final b(D)D
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/g;->a:[D

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-wide v4, v1, v3

    .line 9
    cmpg-double v6, p1, v4

    .line 11
    if-gtz v6, :cond_1b

    .line 13
    iget-object v1, v0, Lu/g;->b:[[D

    .line 15
    aget-object v1, v1, v3

    .line 17
    aget-wide v2, v1, v3

    .line 19
    sub-double v6, p1, v4

    .line 21
    invoke-virtual {v0, v4, v5}, Lu/g;->g(D)D

    .line 24
    move-result-wide v4

    .line 25
    :goto_18
    mul-double/2addr v4, v6

    .line 26
    add-double/2addr v4, v2

    .line 27
    return-wide v4

    .line 28
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    .line 30
    aget-wide v4, v1, v2

    .line 32
    cmpl-double v1, p1, v4

    .line 34
    if-ltz v1, :cond_30

    .line 36
    iget-object v1, v0, Lu/g;->b:[[D

    .line 38
    aget-object v1, v1, v2

    .line 40
    aget-wide v2, v1, v3

    .line 42
    sub-double v6, p1, v4

    .line 44
    invoke-virtual {v0, v4, v5}, Lu/g;->g(D)D

    .line 47
    move-result-wide v4

    .line 48
    goto :goto_18

    .line 49
    :cond_30
    move v1, v3

    .line 50
    :goto_31
    if-ge v1, v2, :cond_6b

    .line 52
    iget-object v4, v0, Lu/g;->a:[D

    .line 54
    aget-wide v5, v4, v1

    .line 56
    cmpl-double v7, p1, v5

    .line 58
    if-nez v7, :cond_42

    .line 60
    iget-object v2, v0, Lu/g;->b:[[D

    .line 62
    aget-object v1, v2, v1

    .line 64
    aget-wide v2, v1, v3

    .line 66
    return-wide v2

    .line 67
    :cond_42
    add-int/lit8 v7, v1, 0x1

    .line 69
    aget-wide v8, v4, v7

    .line 71
    cmpg-double v4, p1, v8

    .line 73
    if-gez v4, :cond_69

    .line 75
    sub-double v10, v8, v5

    .line 77
    sub-double v4, p1, v5

    .line 79
    div-double v12, v4, v10

    .line 81
    iget-object v2, v0, Lu/g;->b:[[D

    .line 83
    aget-object v4, v2, v1

    .line 85
    aget-wide v14, v4, v3

    .line 87
    aget-object v2, v2, v7

    .line 89
    aget-wide v16, v2, v3

    .line 91
    iget-object v2, v0, Lu/g;->c:[[D

    .line 93
    aget-object v1, v2, v1

    .line 95
    aget-wide v18, v1, v3

    .line 97
    aget-object v1, v2, v7

    .line 99
    aget-wide v20, v1, v3

    .line 101
    invoke-static/range {v10 .. v21}, Lu/g;->h(DDDDDD)D

    .line 104
    move-result-wide v1

    .line 105
    return-wide v1

    .line 106
    :cond_69
    move v1, v7

    .line 107
    goto :goto_31

    .line 108
    :cond_6b
    const-wide/16 v1, 0x0

    .line 110
    return-wide v1
.end method

.method public final c(D[D)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/g;->a:[D

    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Lu/g;->b:[[D

    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v3, v3, v4

    .line 11
    array-length v3, v3

    .line 12
    aget-wide v5, v1, v4

    .line 14
    cmpg-double v7, p1, v5

    .line 16
    if-gtz v7, :cond_31

    .line 18
    iget-object v1, v0, Lu/g;->d:[D

    .line 20
    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    .line 23
    move v1, v4

    .line 24
    :goto_17
    if-ge v1, v3, :cond_30

    .line 26
    iget-object v2, v0, Lu/g;->b:[[D

    .line 28
    aget-object v2, v2, v4

    .line 30
    aget-wide v5, v2, v1

    .line 32
    iget-object v2, v0, Lu/g;->a:[D

    .line 34
    aget-wide v7, v2, v4

    .line 36
    sub-double v7, p1, v7

    .line 38
    iget-object v2, v0, Lu/g;->d:[D

    .line 40
    aget-wide v9, v2, v1

    .line 42
    mul-double/2addr v7, v9

    .line 43
    add-double/2addr v7, v5

    .line 44
    aput-wide v7, p3, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_17

    .line 49
    :cond_30
    return-void

    .line 50
    :cond_31
    add-int/lit8 v5, v2, -0x1

    .line 52
    aget-wide v6, v1, v5

    .line 54
    cmpl-double v1, p1, v6

    .line 56
    if-ltz v1, :cond_58

    .line 58
    iget-object v1, v0, Lu/g;->d:[D

    .line 60
    invoke-virtual {v0, v6, v7, v1}, Lu/g;->e(D[D)V

    .line 63
    :goto_3e
    if-ge v4, v3, :cond_57

    .line 65
    iget-object v1, v0, Lu/g;->b:[[D

    .line 67
    aget-object v1, v1, v5

    .line 69
    aget-wide v6, v1, v4

    .line 71
    iget-object v1, v0, Lu/g;->a:[D

    .line 73
    aget-wide v8, v1, v5

    .line 75
    sub-double v1, p1, v8

    .line 77
    iget-object v8, v0, Lu/g;->d:[D

    .line 79
    aget-wide v9, v8, v4

    .line 81
    mul-double/2addr v1, v9

    .line 82
    add-double/2addr v1, v6

    .line 83
    aput-wide v1, p3, v4

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 87
    goto :goto_3e

    .line 88
    :cond_57
    return-void

    .line 89
    :cond_58
    move v1, v4

    .line 90
    :goto_59
    add-int/lit8 v5, v2, -0x1

    .line 92
    if-ge v1, v5, :cond_a7

    .line 94
    iget-object v5, v0, Lu/g;->a:[D

    .line 96
    aget-wide v6, v5, v1

    .line 98
    cmpl-double v5, p1, v6

    .line 100
    if-nez v5, :cond_73

    .line 102
    move v5, v4

    .line 103
    :goto_66
    if-ge v5, v3, :cond_73

    .line 105
    iget-object v6, v0, Lu/g;->b:[[D

    .line 107
    aget-object v6, v6, v1

    .line 109
    aget-wide v7, v6, v5

    .line 111
    aput-wide v7, p3, v5

    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 115
    goto :goto_66

    .line 116
    :cond_73
    iget-object v5, v0, Lu/g;->a:[D

    .line 118
    add-int/lit8 v6, v1, 0x1

    .line 120
    aget-wide v7, v5, v6

    .line 122
    cmpg-double v9, p1, v7

    .line 124
    if-gez v9, :cond_a5

    .line 126
    aget-wide v9, v5, v1

    .line 128
    sub-double/2addr v7, v9

    .line 129
    sub-double v9, p1, v9

    .line 131
    div-double/2addr v9, v7

    .line 132
    :goto_83
    if-ge v4, v3, :cond_a4

    .line 134
    iget-object v2, v0, Lu/g;->b:[[D

    .line 136
    aget-object v5, v2, v1

    .line 138
    aget-wide v15, v5, v4

    .line 140
    aget-object v2, v2, v6

    .line 142
    aget-wide v17, v2, v4

    .line 144
    iget-object v2, v0, Lu/g;->c:[[D

    .line 146
    aget-object v5, v2, v1

    .line 148
    aget-wide v19, v5, v4

    .line 150
    aget-object v2, v2, v6

    .line 152
    aget-wide v21, v2, v4

    .line 154
    move-wide v11, v7

    .line 155
    move-wide v13, v9

    .line 156
    invoke-static/range {v11 .. v22}, Lu/g;->h(DDDDDD)D

    .line 159
    move-result-wide v11

    .line 160
    aput-wide v11, p3, v4

    .line 162
    add-int/lit8 v4, v4, 0x1

    .line 164
    goto :goto_83

    .line 165
    :cond_a4
    return-void

    .line 166
    :cond_a5
    move v1, v6

    .line 167
    goto :goto_59

    .line 168
    :cond_a7
    return-void
.end method

.method public final d(D[F)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/g;->a:[D

    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Lu/g;->b:[[D

    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v3, v3, v4

    .line 11
    array-length v3, v3

    .line 12
    aget-wide v5, v1, v4

    .line 14
    cmpg-double v7, p1, v5

    .line 16
    if-gtz v7, :cond_32

    .line 18
    iget-object v1, v0, Lu/g;->d:[D

    .line 20
    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    .line 23
    move v1, v4

    .line 24
    :goto_17
    if-ge v1, v3, :cond_31

    .line 26
    iget-object v2, v0, Lu/g;->b:[[D

    .line 28
    aget-object v2, v2, v4

    .line 30
    aget-wide v5, v2, v1

    .line 32
    iget-object v2, v0, Lu/g;->a:[D

    .line 34
    aget-wide v7, v2, v4

    .line 36
    sub-double v7, p1, v7

    .line 38
    iget-object v2, v0, Lu/g;->d:[D

    .line 40
    aget-wide v9, v2, v1

    .line 42
    mul-double/2addr v7, v9

    .line 43
    add-double/2addr v7, v5

    .line 44
    double-to-float v2, v7

    .line 45
    aput v2, p3, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    return-void

    .line 51
    :cond_32
    add-int/lit8 v2, v2, -0x1

    .line 53
    aget-wide v5, v1, v2

    .line 55
    cmpl-double v1, p1, v5

    .line 57
    if-ltz v1, :cond_5a

    .line 59
    iget-object v1, v0, Lu/g;->d:[D

    .line 61
    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    .line 64
    :goto_3f
    if-ge v4, v3, :cond_59

    .line 66
    iget-object v1, v0, Lu/g;->b:[[D

    .line 68
    aget-object v1, v1, v2

    .line 70
    aget-wide v5, v1, v4

    .line 72
    iget-object v1, v0, Lu/g;->a:[D

    .line 74
    aget-wide v7, v1, v2

    .line 76
    sub-double v7, p1, v7

    .line 78
    iget-object v1, v0, Lu/g;->d:[D

    .line 80
    aget-wide v9, v1, v4

    .line 82
    mul-double/2addr v7, v9

    .line 83
    add-double/2addr v7, v5

    .line 84
    double-to-float v1, v7

    .line 85
    aput v1, p3, v4

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_3f

    .line 90
    :cond_59
    return-void

    .line 91
    :cond_5a
    move v1, v4

    .line 92
    :goto_5b
    if-ge v1, v2, :cond_a9

    .line 94
    iget-object v5, v0, Lu/g;->a:[D

    .line 96
    aget-wide v6, v5, v1

    .line 98
    cmpl-double v5, p1, v6

    .line 100
    if-nez v5, :cond_74

    .line 102
    move v5, v4

    .line 103
    :goto_66
    if-ge v5, v3, :cond_74

    .line 105
    iget-object v6, v0, Lu/g;->b:[[D

    .line 107
    aget-object v6, v6, v1

    .line 109
    aget-wide v7, v6, v5

    .line 111
    double-to-float v6, v7

    .line 112
    aput v6, p3, v5

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 116
    goto :goto_66

    .line 117
    :cond_74
    iget-object v5, v0, Lu/g;->a:[D

    .line 119
    add-int/lit8 v6, v1, 0x1

    .line 121
    aget-wide v7, v5, v6

    .line 123
    cmpg-double v9, p1, v7

    .line 125
    if-gez v9, :cond_a7

    .line 127
    aget-wide v9, v5, v1

    .line 129
    sub-double/2addr v7, v9

    .line 130
    sub-double v9, p1, v9

    .line 132
    div-double/2addr v9, v7

    .line 133
    :goto_84
    if-ge v4, v3, :cond_a6

    .line 135
    iget-object v2, v0, Lu/g;->b:[[D

    .line 137
    aget-object v5, v2, v1

    .line 139
    aget-wide v15, v5, v4

    .line 141
    aget-object v2, v2, v6

    .line 143
    aget-wide v17, v2, v4

    .line 145
    iget-object v2, v0, Lu/g;->c:[[D

    .line 147
    aget-object v5, v2, v1

    .line 149
    aget-wide v19, v5, v4

    .line 151
    aget-object v2, v2, v6

    .line 153
    aget-wide v21, v2, v4

    .line 155
    move-wide v11, v7

    .line 156
    move-wide v13, v9

    .line 157
    invoke-static/range {v11 .. v22}, Lu/g;->h(DDDDDD)D

    .line 160
    move-result-wide v11

    .line 161
    double-to-float v2, v11

    .line 162
    aput v2, p3, v4

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto :goto_84

    .line 167
    :cond_a6
    return-void

    .line 168
    :cond_a7
    move v1, v6

    .line 169
    goto :goto_5b

    .line 170
    :cond_a9
    return-void
.end method

.method public final e(D[D)V
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/g;->a:[D

    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Lu/g;->b:[[D

    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v3, v3, v4

    .line 11
    array-length v3, v3

    .line 12
    aget-wide v5, v1, v4

    .line 14
    cmpg-double v7, p1, v5

    .line 16
    if-gtz v7, :cond_12

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    add-int/lit8 v5, v2, -0x1

    .line 21
    aget-wide v5, v1, v5

    .line 23
    cmpl-double v1, p1, v5

    .line 25
    if-ltz v1, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    move-wide/from16 v5, p1

    .line 30
    :goto_1d
    move v1, v4

    .line 31
    :goto_1e
    add-int/lit8 v7, v2, -0x1

    .line 33
    if-ge v1, v7, :cond_55

    .line 35
    iget-object v7, v0, Lu/g;->a:[D

    .line 37
    add-int/lit8 v8, v1, 0x1

    .line 39
    aget-wide v9, v7, v8

    .line 41
    cmpg-double v11, v5, v9

    .line 43
    if-gtz v11, :cond_53

    .line 45
    aget-wide v11, v7, v1

    .line 47
    sub-double/2addr v9, v11

    .line 48
    sub-double/2addr v5, v11

    .line 49
    div-double/2addr v5, v9

    .line 50
    :goto_31
    if-ge v4, v3, :cond_55

    .line 52
    iget-object v2, v0, Lu/g;->b:[[D

    .line 54
    aget-object v7, v2, v1

    .line 56
    aget-wide v17, v7, v4

    .line 58
    aget-object v2, v2, v8

    .line 60
    aget-wide v19, v2, v4

    .line 62
    iget-object v2, v0, Lu/g;->c:[[D

    .line 64
    aget-object v7, v2, v1

    .line 66
    aget-wide v21, v7, v4

    .line 68
    aget-object v2, v2, v8

    .line 70
    aget-wide v23, v2, v4

    .line 72
    move-wide v13, v9

    .line 73
    move-wide v15, v5

    .line 74
    invoke-static/range {v13 .. v24}, Lu/g;->f(DDDDDD)D

    .line 77
    move-result-wide v11

    .line 78
    div-double/2addr v11, v9

    .line 79
    aput-wide v11, p3, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 83
    goto :goto_31

    .line 84
    :cond_53
    move v1, v8

    .line 85
    goto :goto_1e

    .line 86
    :cond_55
    return-void
.end method

.method public final g(D)D
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/g;->a:[D

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-wide v4, v1, v3

    .line 9
    cmpg-double v6, p1, v4

    .line 11
    if-gez v6, :cond_e

    .line 13
    :goto_c
    move v1, v3

    .line 14
    goto :goto_1a

    .line 15
    :cond_e
    add-int/lit8 v4, v2, -0x1

    .line 17
    aget-wide v4, v1, v4

    .line 19
    cmpl-double v1, p1, v4

    .line 21
    if-ltz v1, :cond_17

    .line 23
    goto :goto_c

    .line 24
    :cond_17
    move-wide/from16 v4, p1

    .line 26
    goto :goto_c

    .line 27
    :goto_1a
    add-int/lit8 v6, v2, -0x1

    .line 29
    if-ge v1, v6, :cond_4b

    .line 31
    iget-object v6, v0, Lu/g;->a:[D

    .line 33
    add-int/lit8 v7, v1, 0x1

    .line 35
    aget-wide v8, v6, v7

    .line 37
    cmpg-double v10, v4, v8

    .line 39
    if-gtz v10, :cond_49

    .line 41
    aget-wide v10, v6, v1

    .line 43
    sub-double/2addr v8, v10

    .line 44
    sub-double/2addr v4, v10

    .line 45
    div-double v14, v4, v8

    .line 47
    iget-object v2, v0, Lu/g;->b:[[D

    .line 49
    aget-object v4, v2, v1

    .line 51
    aget-wide v16, v4, v3

    .line 53
    aget-object v2, v2, v7

    .line 55
    aget-wide v18, v2, v3

    .line 57
    iget-object v2, v0, Lu/g;->c:[[D

    .line 59
    aget-object v1, v2, v1

    .line 61
    aget-wide v20, v1, v3

    .line 63
    aget-object v1, v2, v7

    .line 65
    aget-wide v22, v1, v3

    .line 67
    move-wide v12, v8

    .line 68
    invoke-static/range {v12 .. v23}, Lu/g;->f(DDDDDD)D

    .line 71
    move-result-wide v1

    .line 72
    div-double/2addr v1, v8

    .line 73
    return-wide v1

    .line 74
    :cond_49
    move v1, v7

    .line 75
    goto :goto_1a

    .line 76
    :cond_4b
    const-wide/16 v1, 0x0

    .line 78
    return-wide v1
.end method
