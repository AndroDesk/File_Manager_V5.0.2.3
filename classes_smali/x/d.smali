.class public abstract Lx/d;
.super Lu/l;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/d$e;,
        Lx/d$b;,
        Lx/d$m;,
        Lx/d$l;,
        Lx/d$k;,
        Lx/d$j;,
        Lx/d$i;,
        Lx/d$d;,
        Lx/d$h;,
        Lx/d$g;,
        Lx/d$f;,
        Lx/d$a;,
        Lx/d$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lu/l;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v1, p2

    .line 5
    move-object/from16 v3, p4

    .line 7
    move-object/from16 v4, p5

    .line 9
    iget-object v5, v0, Lu/l;->a:Lu/b;

    .line 11
    move/from16 v6, p1

    .line 13
    float-to-double v6, v6

    .line 14
    iget-object v8, v0, Lu/l;->g:[F

    .line 16
    invoke-virtual {v5, v6, v7, v8}, Lu/b;->d(D[F)V

    .line 19
    iget-object v5, v0, Lu/l;->g:[F

    .line 21
    const/4 v6, 0x1

    .line 22
    aget v7, v5, v6

    .line 24
    const/4 v8, 0x0

    .line 25
    cmpl-float v9, v7, v8

    .line 27
    const/4 v10, 0x2

    .line 28
    const/4 v11, 0x0

    .line 29
    if-nez v9, :cond_23

    .line 31
    iput-boolean v11, v0, Lu/l;->h:Z

    .line 33
    aget v1, v5, v10

    .line 35
    return v1

    .line 36
    :cond_23
    iget v5, v0, Lu/l;->j:F

    .line 38
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3b

    .line 44
    iget-object v5, v0, Lu/l;->f:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/app/u;->b(Ljava/lang/String;Ljava/lang/Object;)F

    .line 49
    move-result v5

    .line 50
    iput v5, v0, Lu/l;->j:F

    .line 52
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3b

    .line 58
    iput v8, v0, Lu/l;->j:F

    .line 60
    :cond_3b
    iget-wide v12, v0, Lu/l;->i:J

    .line 62
    sub-long v12, v1, v12

    .line 64
    iget v5, v0, Lu/l;->j:F

    .line 66
    float-to-double v14, v5

    .line 67
    long-to-double v12, v12

    .line 68
    const-wide v16, 0x3e112e0be826d695L  # 1.0E-9

    .line 73
    mul-double v12, v12, v16

    .line 75
    move v5, v9

    .line 76
    float-to-double v8, v7

    .line 77
    mul-double/2addr v12, v8

    .line 78
    add-double/2addr v12, v14

    .line 79
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 81
    rem-double/2addr v12, v7

    .line 82
    double-to-float v7, v12

    .line 83
    iput v7, v0, Lu/l;->j:F

    .line 85
    iget-object v8, v0, Lu/l;->f:Ljava/lang/String;

    .line 87
    iget-object v9, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 89
    check-cast v9, Ljava/util/HashMap;

    .line 91
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_74

    .line 97
    new-instance v9, Ljava/util/HashMap;

    .line 99
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 102
    new-array v12, v6, [F

    .line 104
    aput v7, v12, v11

    .line 106
    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v4, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 111
    check-cast v4, Ljava/util/HashMap;

    .line 113
    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    goto :goto_b0

    .line 117
    :cond_74
    iget-object v9, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 119
    check-cast v9, Ljava/util/HashMap;

    .line 121
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Ljava/util/HashMap;

    .line 127
    if-nez v9, :cond_85

    .line 129
    new-instance v9, Ljava/util/HashMap;

    .line 131
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 134
    :cond_85
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 137
    move-result v12

    .line 138
    if-nez v12, :cond_9a

    .line 140
    new-array v12, v6, [F

    .line 142
    aput v7, v12, v11

    .line 144
    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, v4, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 149
    check-cast v4, Ljava/util/HashMap;

    .line 151
    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    goto :goto_b0

    .line 155
    :cond_9a
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 159
    check-cast v3, [F

    .line 161
    if-nez v3, :cond_a4

    .line 163
    new-array v3, v11, [F

    .line 165
    :cond_a4
    array-length v4, v3

    .line 166
    if-gtz v4, :cond_ab

    .line 168
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 171
    move-result-object v3

    .line 172
    :cond_ab
    aput v7, v3, v11

    .line 174
    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_b0
    iput-wide v1, v0, Lu/l;->i:J

    .line 179
    iget-object v1, v0, Lu/l;->g:[F

    .line 181
    aget v1, v1, v11

    .line 183
    iget v2, v0, Lu/l;->j:F

    .line 185
    invoke-virtual {v0, v2}, Lu/l;->a(F)F

    .line 188
    move-result v2

    .line 189
    iget-object v3, v0, Lu/l;->g:[F

    .line 191
    aget v3, v3, v10

    .line 193
    mul-float/2addr v2, v1

    .line 194
    add-float/2addr v2, v3

    .line 195
    const/4 v3, 0x0

    .line 196
    cmpl-float v1, v1, v3

    .line 198
    if-nez v1, :cond_cb

    .line 200
    if-eqz v5, :cond_ca

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move v6, v11

    .line 204
    :cond_cb
    :goto_cb
    iput-boolean v6, v0, Lu/l;->h:Z

    .line 206
    return v2
.end method

.method public abstract e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
.end method
