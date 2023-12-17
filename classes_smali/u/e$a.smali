.class public final Lu/e$a;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lu/h;

.field public b:[F

.field public c:[D

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:Lu/b;

.field public h:[D


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v3, Lu/h;

    .line 12
    invoke-direct {v3}, Lu/h;-><init>()V

    .line 15
    iput-object v3, v0, Lu/e$a;->a:Lu/h;

    .line 17
    move/from16 v4, p1

    .line 19
    iput v4, v3, Lu/h;->e:I

    .line 21
    if-eqz v2, :cond_c3

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x2

    .line 28
    div-int/2addr v4, v5

    .line 29
    new-array v4, v4, [D

    .line 31
    const/16 v6, 0x28

    .line 33
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    add-int/2addr v6, v7

    .line 39
    const/16 v8, 0x2c

    .line 41
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    .line 44
    move-result v9

    .line 45
    const/4 v10, 0x0

    .line 46
    move v11, v10

    .line 47
    :goto_2e
    const/4 v12, -0x1

    .line 48
    if-eq v9, v12, :cond_49

    .line 50
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    move-result-object v6

    .line 58
    add-int/lit8 v12, v11, 0x1

    .line 60
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 63
    move-result-wide v13

    .line 64
    aput-wide v13, v4, v11

    .line 66
    add-int/lit8 v6, v9, 0x1

    .line 68
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    .line 71
    move-result v9

    .line 72
    move v11, v12

    .line 73
    goto :goto_2e

    .line 74
    :cond_49
    const/16 v8, 0x29

    .line 76
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    .line 79
    move-result v8

    .line 80
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    add-int/lit8 v6, v11, 0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 93
    move-result-wide v8

    .line 94
    aput-wide v8, v4, v11

    .line 96
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 99
    move-result-object v2

    .line 100
    array-length v4, v2

    .line 101
    mul-int/lit8 v4, v4, 0x3

    .line 103
    sub-int/2addr v4, v5

    .line 104
    array-length v6, v2

    .line 105
    sub-int/2addr v6, v7

    .line 106
    int-to-double v8, v6

    .line 107
    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    .line 109
    div-double v8, v11, v8

    .line 111
    new-array v5, v5, [I

    .line 113
    aput v7, v5, v7

    .line 115
    aput v4, v5, v10

    .line 117
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 119
    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 122
    move-result-object v5

    .line 123
    check-cast v5, [[D

    .line 125
    new-array v4, v4, [D

    .line 127
    move v7, v10

    .line 128
    :goto_7f
    array-length v13, v2

    .line 129
    if-ge v7, v13, :cond_bc

    .line 131
    aget-wide v13, v2, v7

    .line 133
    add-int v15, v7, v6

    .line 135
    aget-object v16, v5, v15

    .line 137
    aput-wide v13, v16, v10

    .line 139
    int-to-double v10, v7

    .line 140
    mul-double/2addr v10, v8

    .line 141
    aput-wide v10, v4, v15

    .line 143
    if-lez v7, :cond_b1

    .line 145
    mul-int/lit8 v12, v6, 0x2

    .line 147
    add-int/2addr v12, v7

    .line 148
    aget-object v15, v5, v12

    .line 150
    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    .line 152
    add-double v18, v13, v16

    .line 154
    const/16 v20, 0x0

    .line 156
    aput-wide v18, v15, v20

    .line 158
    add-double v18, v10, v16

    .line 160
    aput-wide v18, v4, v12

    .line 162
    add-int/lit8 v12, v7, -0x1

    .line 164
    aget-object v15, v5, v12

    .line 166
    sub-double v13, v13, v16

    .line 168
    sub-double/2addr v13, v8

    .line 169
    aput-wide v13, v15, v20

    .line 171
    const-wide/high16 v13, -0x4010000000000000L  # -1.0

    .line 173
    add-double/2addr v10, v13

    .line 174
    sub-double/2addr v10, v8

    .line 175
    aput-wide v10, v4, v12

    .line 177
    goto :goto_b5

    .line 178
    :cond_b1
    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    .line 180
    const/16 v20, 0x0

    .line 182
    :goto_b5
    add-int/lit8 v7, v7, 0x1

    .line 184
    move-wide/from16 v11, v16

    .line 186
    move/from16 v10, v20

    .line 188
    goto :goto_7f

    .line 189
    :cond_bc
    new-instance v2, Lu/g;

    .line 191
    invoke-direct {v2, v4, v5}, Lu/g;-><init>([D[[D)V

    .line 194
    iput-object v2, v3, Lu/h;->d:Lu/g;

    .line 196
    :cond_c3
    new-array v2, v1, [F

    .line 198
    iput-object v2, v0, Lu/e$a;->b:[F

    .line 200
    new-array v2, v1, [D

    .line 202
    iput-object v2, v0, Lu/e$a;->c:[D

    .line 204
    new-array v2, v1, [F

    .line 206
    iput-object v2, v0, Lu/e$a;->d:[F

    .line 208
    new-array v2, v1, [F

    .line 210
    iput-object v2, v0, Lu/e$a;->e:[F

    .line 212
    new-array v2, v1, [F

    .line 214
    iput-object v2, v0, Lu/e$a;->f:[F

    .line 216
    new-array v1, v1, [F

    .line 218
    return-void
.end method
