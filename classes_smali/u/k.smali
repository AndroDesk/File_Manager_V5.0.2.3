.class public final Lu/k;
.super Lu/c;
.source "StepCurve.java"


# instance fields
.field public d:Lu/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Lu/c;-><init>()V

    .line 8
    iput-object v1, v0, Lu/c;->a:Ljava/lang/String;

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x2

    .line 15
    div-int/2addr v2, v3

    .line 16
    new-array v2, v2, [D

    .line 18
    const/16 v4, 0x28

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    add-int/2addr v4, v5

    .line 26
    const/16 v6, 0x2c

    .line 28
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    move v9, v8

    .line 34
    :goto_21
    const/4 v10, -0x1

    .line 35
    if-eq v7, v10, :cond_3c

    .line 37
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    add-int/lit8 v10, v9, 0x1

    .line 47
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 50
    move-result-wide v11

    .line 51
    aput-wide v11, v2, v9

    .line 53
    add-int/lit8 v4, v7, 0x1

    .line 55
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 58
    move-result v7

    .line 59
    move v9, v10

    .line 60
    goto :goto_21

    .line 61
    :cond_3c
    const/16 v6, 0x29

    .line 63
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 66
    move-result v6

    .line 67
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    add-int/lit8 v4, v9, 0x1

    .line 77
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 80
    move-result-wide v6

    .line 81
    aput-wide v6, v2, v9

    .line 83
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 86
    move-result-object v1

    .line 87
    array-length v2, v1

    .line 88
    mul-int/lit8 v2, v2, 0x3

    .line 90
    sub-int/2addr v2, v3

    .line 91
    array-length v4, v1

    .line 92
    sub-int/2addr v4, v5

    .line 93
    int-to-double v6, v4

    .line 94
    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    .line 96
    div-double v6, v9, v6

    .line 98
    new-array v3, v3, [I

    .line 100
    aput v5, v3, v5

    .line 102
    aput v2, v3, v8

    .line 104
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 106
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, [[D

    .line 112
    new-array v2, v2, [D

    .line 114
    move v5, v8

    .line 115
    :goto_72
    array-length v11, v1

    .line 116
    if-ge v5, v11, :cond_a1

    .line 118
    aget-wide v11, v1, v5

    .line 120
    add-int v13, v5, v4

    .line 122
    aget-object v14, v3, v13

    .line 124
    aput-wide v11, v14, v8

    .line 126
    int-to-double v14, v5

    .line 127
    mul-double/2addr v14, v6

    .line 128
    aput-wide v14, v2, v13

    .line 130
    if-lez v5, :cond_9e

    .line 132
    mul-int/lit8 v13, v4, 0x2

    .line 134
    add-int/2addr v13, v5

    .line 135
    aget-object v16, v3, v13

    .line 137
    add-double v17, v11, v9

    .line 139
    aput-wide v17, v16, v8

    .line 141
    add-double v16, v14, v9

    .line 143
    aput-wide v16, v2, v13

    .line 145
    add-int/lit8 v13, v5, -0x1

    .line 147
    aget-object v16, v3, v13

    .line 149
    sub-double/2addr v11, v9

    .line 150
    sub-double/2addr v11, v6

    .line 151
    aput-wide v11, v16, v8

    .line 153
    const-wide/high16 v11, -0x4010000000000000L  # -1.0

    .line 155
    add-double/2addr v14, v11

    .line 156
    sub-double/2addr v14, v6

    .line 157
    aput-wide v14, v2, v13

    .line 159
    :cond_9e
    add-int/lit8 v5, v5, 0x1

    .line 161
    goto :goto_72

    .line 162
    :cond_a1
    new-instance v1, Lu/g;

    .line 164
    invoke-direct {v1, v2, v3}, Lu/g;-><init>([D[[D)V

    .line 167
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 169
    const-string v3, " 0 "

    .line 171
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object v3

    .line 175
    const-wide/16 v4, 0x0

    .line 177
    invoke-virtual {v1, v4, v5}, Lu/g;->b(D)D

    .line 180
    move-result-wide v4

    .line 181
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 193
    const-string v3, " 1 "

    .line 195
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v1, v9, v10}, Lu/g;->b(D)D

    .line 202
    move-result-wide v4

    .line 203
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    iput-object v1, v0, Lu/k;->d:Lu/g;

    .line 215
    return-void
.end method


# virtual methods
.method public final a(D)D
    .registers 4

    .line 1
    iget-object v0, p0, Lu/k;->d:Lu/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lu/g;->b(D)D

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final b(D)D
    .registers 4

    .line 1
    iget-object v0, p0, Lu/k;->d:Lu/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lu/g;->g(D)D

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method
