.class public final Landroidx/appcompat/app/y;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field public static d:Landroidx/appcompat/app/y;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DDJ)V
    .registers 22

    .line 1
    move-object v0, p0

    .line 2
    const-wide v1, 0xdc6d62da00L

    .line 7
    sub-long v3, p5, v1

    .line 9
    long-to-float v3, v3

    .line 10
    const v4, 0x4ca4cb80  # 8.64E7f

    .line 13
    div-float/2addr v3, v4

    .line 14
    const v4, 0x3c8ceb25

    .line 17
    mul-float/2addr v4, v3

    .line 18
    const v5, 0x40c7ae92

    .line 21
    add-float/2addr v4, v5

    .line 22
    float-to-double v5, v4

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 26
    move-result-wide v7

    .line 27
    const-wide v9, 0x3fa11c5fc0000000L  # 0.03341960161924362

    .line 32
    mul-double/2addr v7, v9

    .line 33
    add-double/2addr v7, v5

    .line 34
    const/high16 v9, 0x40000000  # 2.0f

    .line 36
    mul-float/2addr v9, v4

    .line 37
    float-to-double v9, v9

    .line 38
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 41
    move-result-wide v9

    .line 42
    const-wide v11, 0x3f36e05b00000000L  # 3.4906598739326E-4

    .line 47
    mul-double/2addr v9, v11

    .line 48
    add-double/2addr v9, v7

    .line 49
    const/high16 v7, 0x40400000  # 3.0f

    .line 51
    mul-float/2addr v4, v7

    .line 52
    float-to-double v7, v4

    .line 53
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 56
    move-result-wide v7

    .line 57
    const-wide v11, 0x3ed5f61cc0000000L  # 5.236000106378924E-6

    .line 62
    mul-double/2addr v7, v11

    .line 63
    add-double/2addr v7, v9

    .line 64
    const-wide v9, 0x3ffcbed85e1ce332L  # 1.796593063

    .line 69
    add-double/2addr v7, v9

    .line 70
    const-wide v9, 0x400921fb54442d18L  # Math.PI

    .line 75
    add-double/2addr v7, v9

    .line 76
    move-wide/from16 v9, p3

    .line 78
    neg-double v9, v9

    .line 79
    const-wide v11, 0x4076800000000000L  # 360.0

    .line 84
    div-double/2addr v9, v11

    .line 85
    const v4, 0x3a6bedfa  # 9.0E-4f

    .line 88
    sub-float/2addr v3, v4

    .line 89
    float-to-double v11, v3

    .line 90
    sub-double/2addr v11, v9

    .line 91
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 94
    move-result-wide v11

    .line 95
    long-to-float v3, v11

    .line 96
    add-float/2addr v3, v4

    .line 97
    float-to-double v3, v3

    .line 98
    add-double/2addr v3, v9

    .line 99
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 102
    move-result-wide v5

    .line 103
    const-wide v9, 0x3f75b573eab367a1L  # 0.0053

    .line 108
    mul-double/2addr v5, v9

    .line 109
    add-double/2addr v5, v3

    .line 110
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    .line 112
    mul-double/2addr v3, v7

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 116
    move-result-wide v3

    .line 117
    const-wide v9, -0x4083bcd35a858794L  # -0.0069

    .line 122
    mul-double/2addr v3, v9

    .line 123
    add-double/2addr v3, v5

    .line 124
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 127
    move-result-wide v5

    .line 128
    const-wide v7, 0x3fda31a380000000L  # 0.4092797040939331

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 136
    move-result-wide v7

    .line 137
    mul-double/2addr v7, v5

    .line 138
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 141
    move-result-wide v5

    .line 142
    const-wide v7, 0x3f91df46a0000000L  # 0.01745329238474369

    .line 147
    mul-double v7, v7, p1

    .line 149
    const-wide v9, -0x4045311600000000L  # -0.10471975803375244

    .line 154
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 157
    move-result-wide v9

    .line 158
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 161
    move-result-wide v11

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 165
    move-result-wide v13

    .line 166
    mul-double/2addr v13, v11

    .line 167
    sub-double/2addr v9, v13

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 171
    move-result-wide v7

    .line 172
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 175
    move-result-wide v5

    .line 176
    mul-double/2addr v5, v7

    .line 177
    div-double/2addr v9, v5

    .line 178
    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    .line 180
    cmpl-double v5, v9, v5

    .line 182
    const/4 v6, 0x1

    .line 183
    const-wide/16 v7, -0x1

    .line 185
    if-ltz v5, :cond_c1

    .line 187
    iput v6, v0, Landroidx/appcompat/app/y;->c:I

    .line 189
    iput-wide v7, v0, Landroidx/appcompat/app/y;->a:J

    .line 191
    iput-wide v7, v0, Landroidx/appcompat/app/y;->b:J

    .line 193
    return-void

    .line 194
    :cond_c1
    const-wide/high16 v11, -0x4010000000000000L  # -1.0

    .line 196
    cmpg-double v5, v9, v11

    .line 198
    const/4 v11, 0x0

    .line 199
    if-gtz v5, :cond_cf

    .line 201
    iput v11, v0, Landroidx/appcompat/app/y;->c:I

    .line 203
    iput-wide v7, v0, Landroidx/appcompat/app/y;->a:J

    .line 205
    iput-wide v7, v0, Landroidx/appcompat/app/y;->b:J

    .line 207
    return-void

    .line 208
    :cond_cf
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    .line 211
    move-result-wide v7

    .line 212
    const-wide v9, 0x401921fb54442d18L  # 6.283185307179586

    .line 217
    div-double/2addr v7, v9

    .line 218
    double-to-float v5, v7

    .line 219
    float-to-double v7, v5

    .line 220
    add-double v9, v3, v7

    .line 222
    const-wide v12, 0x4194997000000000L  # 8.64E7

    .line 227
    mul-double/2addr v9, v12

    .line 228
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 231
    move-result-wide v9

    .line 232
    add-long/2addr v9, v1

    .line 233
    iput-wide v9, v0, Landroidx/appcompat/app/y;->a:J

    .line 235
    sub-double/2addr v3, v7

    .line 236
    mul-double/2addr v3, v12

    .line 237
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 240
    move-result-wide v3

    .line 241
    add-long/2addr v3, v1

    .line 242
    iput-wide v3, v0, Landroidx/appcompat/app/y;->b:J

    .line 244
    cmp-long v1, v3, p5

    .line 246
    if-gez v1, :cond_100

    .line 248
    iget-wide v1, v0, Landroidx/appcompat/app/y;->a:J

    .line 250
    cmp-long v1, v1, p5

    .line 252
    if-lez v1, :cond_100

    .line 254
    iput v11, v0, Landroidx/appcompat/app/y;->c:I

    .line 256
    goto :goto_102

    .line 257
    :cond_100
    iput v6, v0, Landroidx/appcompat/app/y;->c:I

    .line 259
    :goto_102
    return-void
.end method
