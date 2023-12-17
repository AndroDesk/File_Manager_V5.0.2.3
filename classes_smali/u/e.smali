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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/e;->c:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lu/e;->d:Ljava/lang/String;

    .line 10
    iput v0, p0, Lu/e;->e:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lu/e;->f:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(F)F
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget-object v2, v0, Lu/e;->a:Lu/e$a;

    .line 7
    iget-object v3, v2, Lu/e$a;->g:Lu/b;

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v3, :cond_14

    .line 14
    float-to-double v7, v1

    .line 15
    iget-object v9, v2, Lu/e$a;->h:[D

    .line 17
    invoke-virtual {v3, v7, v8, v9}, Lu/b;->c(D[D)V

    .line 20
    goto :goto_2b

    .line 21
    :cond_14
    iget-object v3, v2, Lu/e$a;->h:[D

    .line 23
    iget-object v7, v2, Lu/e$a;->e:[F

    .line 25
    aget v7, v7, v6

    .line 27
    float-to-double v7, v7

    .line 28
    aput-wide v7, v3, v6

    .line 30
    iget-object v7, v2, Lu/e$a;->f:[F

    .line 32
    aget v7, v7, v6

    .line 34
    float-to-double v7, v7

    .line 35
    aput-wide v7, v3, v5

    .line 37
    iget-object v7, v2, Lu/e$a;->b:[F

    .line 39
    aget v7, v7, v6

    .line 41
    float-to-double v7, v7

    .line 42
    aput-wide v7, v3, v4

    .line 44
    :goto_2b
    iget-object v3, v2, Lu/e$a;->h:[D

    .line 46
    aget-wide v6, v3, v6

    .line 48
    aget-wide v8, v3, v5

    .line 50
    iget-object v3, v2, Lu/e$a;->a:Lu/h;

    .line 52
    float-to-double v10, v1

    .line 53
    const-wide/16 v12, 0x0

    .line 55
    cmpg-double v1, v10, v12

    .line 57
    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    .line 59
    if-gez v1, :cond_3e

    .line 61
    move-wide v10, v12

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    cmpl-double v1, v10, v14

    .line 65
    if-lez v1, :cond_43

    .line 67
    move-wide v10, v14

    .line 68
    :cond_43
    :goto_43
    iget-object v1, v3, Lu/h;->b:[D

    .line 70
    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 73
    move-result v1

    .line 74
    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    .line 76
    if-lez v1, :cond_4f

    .line 78
    move-wide v12, v14

    .line 79
    goto :goto_81

    .line 80
    :cond_4f
    if-eqz v1, :cond_81

    .line 82
    neg-int v1, v1

    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 85
    iget-object v5, v3, Lu/h;->a:[F

    .line 87
    aget v12, v5, v1

    .line 89
    add-int/lit8 v13, v1, -0x1

    .line 91
    aget v5, v5, v13

    .line 93
    sub-float/2addr v12, v5

    .line 94
    float-to-double v14, v12

    .line 95
    iget-object v12, v3, Lu/h;->b:[D

    .line 97
    aget-wide v18, v12, v1

    .line 99
    aget-wide v20, v12, v13

    .line 101
    sub-double v18, v18, v20

    .line 103
    div-double v14, v14, v18

    .line 105
    iget-object v1, v3, Lu/h;->c:[D

    .line 107
    aget-wide v12, v1, v13

    .line 109
    float-to-double v4, v5

    .line 110
    mul-double v18, v14, v20

    .line 112
    sub-double v4, v4, v18

    .line 114
    sub-double v18, v10, v20

    .line 116
    mul-double v18, v18, v4

    .line 118
    add-double v18, v18, v12

    .line 120
    mul-double/2addr v10, v10

    .line 121
    mul-double v20, v20, v20

    .line 123
    sub-double v10, v10, v20

    .line 125
    mul-double/2addr v10, v14

    .line 126
    div-double v10, v10, v16

    .line 128
    add-double v12, v10, v18

    .line 130
    :cond_81
    :goto_81
    add-double/2addr v12, v8

    .line 131
    iget v4, v3, Lu/h;->e:I

    .line 133
    const-wide v10, 0x401921fb54442d18L  # 6.283185307179586

    .line 138
    const-wide/high16 v14, 0x4010000000000000L  # 4.0

    .line 140
    packed-switch v4, :pswitch_data_e6

    .line 143
    mul-double/2addr v12, v10

    .line 144
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 147
    move-result-wide v3

    .line 148
    goto :goto_dd

    .line 149
    :pswitch_94  #0x7
    iget-object v3, v3, Lu/h;->d:Lu/g;

    .line 151
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 153
    rem-double/2addr v12, v4

    .line 154
    invoke-virtual {v3, v12, v13}, Lu/g;->b(D)D

    .line 157
    move-result-wide v3

    .line 158
    goto :goto_dd

    .line 159
    :pswitch_9e  #0x6
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 161
    mul-double/2addr v12, v14

    .line 162
    rem-double/2addr v12, v14

    .line 163
    sub-double v12, v12, v16

    .line 165
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 168
    move-result-wide v8

    .line 169
    sub-double v14, v4, v8

    .line 171
    mul-double/2addr v14, v14

    .line 172
    goto :goto_d0

    .line 173
    :pswitch_ac  #0x5
    add-double/2addr v8, v12

    .line 174
    mul-double/2addr v8, v10

    .line 175
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 178
    move-result-wide v3

    .line 179
    goto :goto_dd

    .line 180
    :pswitch_b3  #0x4
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 182
    mul-double v12, v12, v16

    .line 184
    add-double/2addr v12, v4

    .line 185
    rem-double v14, v12, v16

    .line 187
    goto :goto_d0

    .line 188
    :pswitch_bb  #0x3
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 190
    mul-double v12, v12, v16

    .line 192
    add-double/2addr v12, v4

    .line 193
    rem-double v12, v12, v16

    .line 195
    sub-double v3, v12, v4

    .line 197
    goto :goto_dd

    .line 198
    :pswitch_c5  #0x2
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 200
    mul-double/2addr v12, v14

    .line 201
    add-double/2addr v12, v4

    .line 202
    rem-double/2addr v12, v14

    .line 203
    sub-double v12, v12, v16

    .line 205
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 208
    move-result-wide v14

    .line 209
    :goto_d0
    sub-double v3, v4, v14

    .line 211
    goto :goto_dd

    .line 212
    :pswitch_d3  #0x1
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 214
    const-wide/high16 v8, 0x3fe0000000000000L  # 0.5

    .line 216
    rem-double/2addr v12, v4

    .line 217
    sub-double/2addr v8, v12

    .line 218
    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    .line 221
    move-result-wide v3

    .line 222
    :goto_dd
    iget-object v2, v2, Lu/e$a;->h:[D

    .line 224
    const/4 v1, 0x2

    .line 225
    aget-wide v1, v2, v1

    .line 227
    mul-double/2addr v3, v1

    .line 228
    add-double/2addr v3, v6

    .line 229
    double-to-float v1, v3

    .line 230
    return v1

    .line 231
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lu/e;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v2, v0, Lu/e;->f:Ljava/util/ArrayList;

    .line 14
    new-instance v3, Lu/d;

    .line 16
    invoke-direct {v3}, Lu/d;-><init>()V

    .line 19
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    new-array v2, v1, [D

    .line 24
    const/4 v3, 0x2

    .line 25
    new-array v4, v3, [I

    .line 27
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x3

    .line 29
    aput v6, v4, v5

    .line 31
    const/4 v7, 0x0

    .line 32
    aput v1, v4, v7

    .line 34
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 36
    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, [[D

    .line 42
    new-instance v8, Lu/e$a;

    .line 44
    iget v9, v0, Lu/e;->c:I

    .line 46
    iget-object v10, v0, Lu/e;->d:Ljava/lang/String;

    .line 48
    invoke-direct {v8, v9, v1, v10}, Lu/e$a;-><init>(IILjava/lang/String;)V

    .line 51
    iput-object v8, v0, Lu/e;->a:Lu/e$a;

    .line 53
    iget-object v1, v0, Lu/e;->f:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v1

    .line 59
    move v8, v7

    .line 60
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_89

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v9

    .line 70
    check-cast v9, Lu/e$b;

    .line 72
    iget v10, v9, Lu/e$b;->d:F

    .line 74
    float-to-double v11, v10

    .line 75
    const-wide v13, 0x3f847ae147ae147bL  # 0.01

    .line 80
    mul-double/2addr v11, v13

    .line 81
    aput-wide v11, v2, v8

    .line 83
    aget-object v11, v4, v8

    .line 85
    iget v12, v9, Lu/e$b;->b:F

    .line 87
    float-to-double v13, v12

    .line 88
    aput-wide v13, v11, v7

    .line 90
    iget v13, v9, Lu/e$b;->c:F

    .line 92
    float-to-double v14, v13

    .line 93
    aput-wide v14, v11, v5

    .line 95
    iget v14, v9, Lu/e$b;->e:F

    .line 97
    float-to-double v6, v14

    .line 98
    aput-wide v6, v11, v3

    .line 100
    iget-object v6, v0, Lu/e;->a:Lu/e$a;

    .line 102
    iget v7, v9, Lu/e$b;->a:I

    .line 104
    iget-object v9, v6, Lu/e$a;->c:[D

    .line 106
    move-object/from16 v16, v4

    .line 108
    int-to-double v3, v7

    .line 109
    const-wide/high16 v17, 0x4059000000000000L  # 100.0

    .line 111
    div-double v3, v3, v17

    .line 113
    aput-wide v3, v9, v8

    .line 115
    iget-object v3, v6, Lu/e$a;->d:[F

    .line 117
    aput v10, v3, v8

    .line 119
    iget-object v3, v6, Lu/e$a;->e:[F

    .line 121
    aput v13, v3, v8

    .line 123
    iget-object v3, v6, Lu/e$a;->f:[F

    .line 125
    aput v14, v3, v8

    .line 127
    iget-object v3, v6, Lu/e$a;->b:[F

    .line 129
    aput v12, v3, v8

    .line 131
    add-int/2addr v8, v5

    .line 132
    move-object/from16 v4, v16

    .line 134
    const/4 v3, 0x2

    .line 135
    const/4 v6, 0x3

    .line 136
    const/4 v7, 0x0

    .line 137
    goto :goto_3b

    .line 138
    :cond_89
    move-object/from16 v16, v4

    .line 140
    iget-object v1, v0, Lu/e;->a:Lu/e$a;

    .line 142
    iget-object v3, v1, Lu/e$a;->c:[D

    .line 144
    array-length v3, v3

    .line 145
    const/4 v4, 0x2

    .line 146
    new-array v6, v4, [I

    .line 148
    const/4 v7, 0x3

    .line 149
    aput v7, v6, v5

    .line 151
    const/4 v7, 0x0

    .line 152
    aput v3, v6, v7

    .line 154
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 156
    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 160
    check-cast v3, [[D

    .line 162
    iget-object v6, v1, Lu/e$a;->b:[F

    .line 164
    array-length v7, v6

    .line 165
    add-int/2addr v7, v4

    .line 166
    new-array v7, v7, [D

    .line 168
    iput-object v7, v1, Lu/e$a;->h:[D

    .line 170
    array-length v6, v6

    .line 171
    add-int/2addr v6, v4

    .line 172
    new-array v4, v6, [D

    .line 174
    iget-object v4, v1, Lu/e$a;->c:[D

    .line 176
    const/4 v6, 0x0

    .line 177
    aget-wide v7, v4, v6

    .line 179
    const-wide/16 v9, 0x0

    .line 181
    cmpl-double v4, v7, v9

    .line 183
    if-lez v4, :cond_c1

    .line 185
    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    .line 187
    iget-object v7, v1, Lu/e$a;->d:[F

    .line 189
    aget v7, v7, v6

    .line 191
    invoke-virtual {v4, v7, v9, v10}, Lu/h;->a(FD)V

    .line 194
    :cond_c1
    iget-object v4, v1, Lu/e$a;->c:[D

    .line 196
    array-length v6, v4

    .line 197
    sub-int/2addr v6, v5

    .line 198
    aget-wide v7, v4, v6

    .line 200
    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    .line 202
    cmpg-double v4, v7, v12

    .line 204
    if-gez v4, :cond_d6

    .line 206
    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    .line 208
    iget-object v7, v1, Lu/e$a;->d:[F

    .line 210
    aget v6, v7, v6

    .line 212
    invoke-virtual {v4, v6, v12, v13}, Lu/h;->a(FD)V

    .line 215
    :cond_d6
    const/4 v4, 0x0

    .line 216
    :goto_d7
    array-length v6, v3

    .line 217
    if-ge v4, v6, :cond_103

    .line 219
    aget-object v6, v3, v4

    .line 221
    iget-object v7, v1, Lu/e$a;->e:[F

    .line 223
    aget v7, v7, v4

    .line 225
    float-to-double v7, v7

    .line 226
    const/4 v12, 0x0

    .line 227
    aput-wide v7, v6, v12

    .line 229
    iget-object v7, v1, Lu/e$a;->f:[F

    .line 231
    aget v7, v7, v4

    .line 233
    float-to-double v7, v7

    .line 234
    aput-wide v7, v6, v5

    .line 236
    iget-object v7, v1, Lu/e$a;->b:[F

    .line 238
    aget v7, v7, v4

    .line 240
    float-to-double v7, v7

    .line 241
    const/4 v11, 0x2

    .line 242
    aput-wide v7, v6, v11

    .line 244
    iget-object v6, v1, Lu/e$a;->a:Lu/h;

    .line 246
    iget-object v7, v1, Lu/e$a;->c:[D

    .line 248
    aget-wide v12, v7, v4

    .line 250
    iget-object v7, v1, Lu/e$a;->d:[F

    .line 252
    aget v7, v7, v4

    .line 254
    invoke-virtual {v6, v7, v12, v13}, Lu/h;->a(FD)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_d7

    .line 260
    :cond_103
    iget-object v4, v1, Lu/e$a;->a:Lu/h;

    .line 262
    move-wide v7, v9

    .line 263
    const/4 v6, 0x0

    .line 264
    :goto_107
    iget-object v11, v4, Lu/h;->a:[F

    .line 266
    array-length v12, v11

    .line 267
    if-ge v6, v12, :cond_113

    .line 269
    aget v11, v11, v6

    .line 271
    float-to-double v11, v11

    .line 272
    add-double/2addr v7, v11

    .line 273
    add-int/lit8 v6, v6, 0x1

    .line 275
    goto :goto_107

    .line 276
    :cond_113
    move v6, v5

    .line 277
    move-wide v11, v9

    .line 278
    :goto_115
    iget-object v13, v4, Lu/h;->a:[F

    .line 280
    array-length v14, v13

    .line 281
    const/high16 v15, 0x40000000  # 2.0f

    .line 283
    if-ge v6, v14, :cond_136

    .line 285
    add-int/lit8 v14, v6, -0x1

    .line 287
    aget v17, v13, v14

    .line 289
    aget v13, v13, v6

    .line 291
    add-float v17, v17, v13

    .line 293
    div-float v13, v17, v15

    .line 295
    iget-object v15, v4, Lu/h;->b:[D

    .line 297
    aget-wide v17, v15, v6

    .line 299
    aget-wide v14, v15, v14

    .line 301
    sub-double v17, v17, v14

    .line 303
    float-to-double v13, v13

    .line 304
    mul-double v17, v17, v13

    .line 306
    add-double v11, v17, v11

    .line 308
    add-int/lit8 v6, v6, 0x1

    .line 310
    goto :goto_115

    .line 311
    :cond_136
    const/4 v6, 0x0

    .line 312
    :goto_137
    iget-object v13, v4, Lu/h;->a:[F

    .line 314
    array-length v14, v13

    .line 315
    if-ge v6, v14, :cond_14b

    .line 317
    aget v14, v13, v6

    .line 319
    float-to-double v9, v14

    .line 320
    div-double v19, v7, v11

    .line 322
    mul-double v9, v9, v19

    .line 324
    double-to-float v9, v9

    .line 325
    aput v9, v13, v6

    .line 327
    add-int/lit8 v6, v6, 0x1

    .line 329
    const-wide/16 v9, 0x0

    .line 331
    goto :goto_137

    .line 332
    :cond_14b
    iget-object v6, v4, Lu/h;->c:[D

    .line 334
    const-wide/16 v7, 0x0

    .line 336
    const/4 v9, 0x0

    .line 337
    aput-wide v7, v6, v9

    .line 339
    move v6, v5

    .line 340
    :goto_153
    iget-object v7, v4, Lu/h;->a:[F

    .line 342
    array-length v8, v7

    .line 343
    if-ge v6, v8, :cond_173

    .line 345
    add-int/lit8 v8, v6, -0x1

    .line 347
    aget v9, v7, v8

    .line 349
    aget v7, v7, v6

    .line 351
    add-float/2addr v9, v7

    .line 352
    div-float/2addr v9, v15

    .line 353
    iget-object v7, v4, Lu/h;->b:[D

    .line 355
    aget-wide v10, v7, v6

    .line 357
    aget-wide v12, v7, v8

    .line 359
    sub-double/2addr v10, v12

    .line 360
    iget-object v7, v4, Lu/h;->c:[D

    .line 362
    aget-wide v12, v7, v8

    .line 364
    float-to-double v8, v9

    .line 365
    mul-double/2addr v10, v8

    .line 366
    add-double/2addr v10, v12

    .line 367
    aput-wide v10, v7, v6

    .line 369
    add-int/lit8 v6, v6, 0x1

    .line 371
    goto :goto_153

    .line 372
    :cond_173
    iget-object v4, v1, Lu/e$a;->c:[D

    .line 374
    array-length v6, v4

    .line 375
    if-le v6, v5, :cond_180

    .line 377
    const/4 v5, 0x0

    .line 378
    invoke-static {v5, v4, v3}, Lu/b;->a(I[D[[D)Lu/b;

    .line 381
    move-result-object v3

    .line 382
    iput-object v3, v1, Lu/e$a;->g:Lu/b;

    .line 384
    goto :goto_184

    .line 385
    :cond_180
    const/4 v5, 0x0

    .line 386
    const/4 v3, 0x0

    .line 387
    iput-object v3, v1, Lu/e$a;->g:Lu/b;

    .line 389
    :goto_184
    move-object/from16 v4, v16

    .line 391
    invoke-static {v5, v2, v4}, Lu/b;->a(I[D[[D)Lu/b;

    .line 394
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lu/e;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 5
    const-string v2, "##.##"

    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lu/e;->f:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_3f

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lu/e$b;

    .line 28
    const-string v4, "["

    .line 30
    invoke-static {v0, v4}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v0

    .line 34
    iget v4, v3, Lu/e$b;->a:I

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v4, " , "

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v3, v3, Lu/e$b;->b:F

    .line 46
    float-to-double v3, v3

    .line 47
    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, "] "

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    goto :goto_f

    .line 64
    :cond_3f
    return-object v0
.end method
