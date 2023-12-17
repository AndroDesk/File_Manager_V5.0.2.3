.class public final Lu3/b;
.super Ljava/lang/Object;
.source "Atomic.kt"


# static fields
.field public static final a:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "NO_DECISION"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lu3/b;->a:Lu3/r;

    .line 10
    new-instance v0, Lu3/r;

    .line 12
    const-string v1, "UNDEFINED"

    .line 14
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lu3/b;->b:Lu3/r;

    .line 19
    new-instance v0, Lu3/r;

    .line 21
    const-string v1, "REUSABLE_CLAIMED"

    .line 23
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lu3/b;->c:Lu3/r;

    .line 28
    new-instance v0, Lu3/r;

    .line 30
    const-string v1, "CONDITION_FALSE"

    .line 32
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lu3/b;->d:Lu3/r;

    .line 37
    return-void
.end method

.method public static final a(La3/c;Ljava/lang/Object;Lh3/l;)V
    .registers 10
    .param p0  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lu3/f;

    .line 3
    if-eqz v0, :cond_c4

    .line 5
    check-cast p0, Lu3/f;

    .line 7
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_17

    .line 14
    if-eqz p2, :cond_15

    .line 16
    new-instance v0, Lp3/p;

    .line 18
    invoke-direct {v0, p2, p1}, Lp3/p;-><init>(Lh3/l;Ljava/lang/Object;)V

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    move-object v0, p1

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    new-instance p2, Lp3/o;

    .line 26
    invoke-direct {p2, v0, v1}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 29
    move-object v0, p2

    .line 30
    :goto_1d
    iget-object p2, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 35
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    .line 38
    move-result p2

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz p2, :cond_38

    .line 42
    iput-object v0, p0, Lu3/f;->f:Ljava/lang/Object;

    .line 44
    iput v2, p0, Lp3/y;->c:I

    .line 46
    iget-object p1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 48
    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 55
    goto/16 :goto_c7

    .line 57
    :cond_38
    invoke-static {}, Lp3/y0;->a()Lp3/d0;

    .line 60
    move-result-object p2

    .line 61
    iget-wide v3, p2, Lp3/d0;->b:J

    .line 63
    const-wide v5, 0x100000000L

    .line 68
    cmp-long v3, v3, v5

    .line 70
    if-ltz v3, :cond_49

    .line 72
    move v3, v2

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v3, v1

    .line 75
    :goto_4a
    if-eqz v3, :cond_55

    .line 77
    iput-object v0, p0, Lu3/f;->f:Ljava/lang/Object;

    .line 79
    iput v2, p0, Lp3/y;->c:I

    .line 81
    invoke-virtual {p2, p0}, Lp3/d0;->v(Lp3/y;)V

    .line 84
    goto/16 :goto_c7

    .line 86
    :cond_55
    invoke-virtual {p2, v2}, Lp3/d0;->w(Z)V

    .line 89
    const/4 v3, 0x0

    .line 90
    :try_start_59
    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 93
    move-result-object v4

    .line 94
    sget-object v5, Lp3/k0$b;->a:Lp3/k0$b;

    .line 96
    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lp3/k0;

    .line 102
    if-eqz v4, :cond_83

    .line 104
    invoke-interface {v4}, Lp3/k0;->a()Z

    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_83

    .line 110
    invoke-interface {v4}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0, v0, v1}, Lu3/f;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 117
    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lu3/f;->resumeWith(Ljava/lang/Object;)V

    .line 128
    move v1, v2

    .line 129
    goto :goto_83

    .line 130
    :catchall_81
    move-exception p1

    .line 131
    goto :goto_b8

    .line 132
    :cond_83
    :goto_83
    if-nez v1, :cond_b1

    .line 134
    iget-object v0, p0, Lu3/f;->e:La3/c;

    .line 136
    iget-object v1, p0, Lu3/f;->g:Ljava/lang/Object;

    .line 138
    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 148
    if-eq v1, v4, :cond_9a

    .line 150
    invoke-static {v0, v2, v1}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    .line 153
    move-result-object v0
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_81

    .line 154
    goto :goto_9b

    .line 155
    :cond_9a
    move-object v0, v3

    .line 156
    :goto_9b
    :try_start_9b
    iget-object v4, p0, Lu3/f;->e:La3/c;

    .line 158
    invoke-interface {v4, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 161
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a9

    .line 163
    if-nez v0, :cond_a8

    .line 165
    :try_start_a4
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 168
    goto :goto_b1

    .line 169
    :cond_a8
    throw v3

    .line 170
    :catchall_a9
    move-exception p1

    .line 171
    if-eqz v0, :cond_ad

    .line 173
    throw v3

    .line 174
    :cond_ad
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 177
    throw p1

    .line 178
    :cond_b1
    :goto_b1
    invoke-virtual {p2}, Lp3/d0;->x()Z

    .line 181
    move-result p1
    :try_end_b5
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_81

    .line 182
    if-nez p1, :cond_b1

    .line 184
    goto :goto_bb

    .line 185
    :goto_b8
    :try_start_b8
    invoke-virtual {p0, p1, v3}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bf

    .line 188
    :goto_bb
    invoke-virtual {p2}, Lp3/d0;->u()V

    .line 191
    goto :goto_c7

    .line 192
    :catchall_bf
    move-exception p0

    .line 193
    invoke-virtual {p2}, Lp3/d0;->u()V

    .line 196
    throw p0

    .line 197
    :cond_c4
    invoke-interface {p0, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 200
    :goto_c7
    return-void
.end method

.method public static final b(Ljava/lang/String;JJJ)J
    .registers 29
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v1, p3

    .line 5
    move-wide/from16 v3, p5

    .line 7
    sget v5, Lu3/s;->a:I

    .line 9
    :try_start_8
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v5
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_d

    .line 13
    goto :goto_e

    .line 14
    :catch_d
    const/4 v5, 0x0

    .line 15
    :goto_e
    if-nez v5, :cond_14

    .line 17
    move-wide/from16 v8, p1

    .line 19
    goto/16 :goto_c0

    .line 21
    :cond_14
    new-instance v6, Ll3/c;

    .line 23
    const/4 v7, 0x2

    .line 24
    const/16 v8, 0x24

    .line 26
    invoke-direct {v6, v7, v8}, Ll3/c;-><init>(II)V

    .line 29
    const/16 v9, 0xa

    .line 31
    invoke-virtual {v6, v9}, Ll3/c;->a(I)Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_11a

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-nez v6, :cond_2f

    .line 45
    :cond_2c
    :goto_2c
    move-object v15, v5

    .line 46
    goto/16 :goto_93

    .line 48
    :cond_2f
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 51
    move-result v10

    .line 52
    const/16 v11, 0x30

    .line 54
    if-ge v10, v11, :cond_39

    .line 56
    const/4 v11, -0x1

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    if-ne v10, v11, :cond_3d

    .line 60
    move v11, v8

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v11, v7

    .line 63
    :goto_3e
    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    .line 68
    if-gez v11, :cond_54

    .line 70
    if-ne v6, v7, :cond_48

    .line 72
    goto :goto_2c

    .line 73
    :cond_48
    const/16 v11, 0x2d

    .line 75
    if-ne v10, v11, :cond_4f

    .line 77
    const-wide/high16 v12, -0x8000000000000000L

    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    const/16 v11, 0x2b

    .line 82
    if-ne v10, v11, :cond_2c

    .line 84
    goto :goto_56

    .line 85
    :cond_54
    move v7, v8

    .line 86
    :goto_55
    move v8, v7

    .line 87
    :goto_56
    const-wide/16 v10, 0x0

    .line 89
    const-wide v16, -0x38e38e38e38e38eL  # -2.772000429909333E291

    .line 94
    :goto_5d
    if-ge v7, v6, :cond_9c

    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 99
    move-result v14

    .line 100
    invoke-static {v14, v9}, Ljava/lang/Character;->digit(II)I

    .line 103
    move-result v14

    .line 104
    if-gez v14, :cond_6a

    .line 106
    goto :goto_2c

    .line 107
    :cond_6a
    cmp-long v15, v10, v16

    .line 109
    if-gez v15, :cond_82

    .line 111
    const-wide v18, -0x38e38e38e38e38eL  # -2.772000429909333E291

    .line 116
    cmp-long v15, v16, v18

    .line 118
    if-nez v15, :cond_2c

    .line 120
    move-object v15, v5

    .line 121
    move/from16 p1, v6

    .line 123
    int-to-long v5, v9

    .line 124
    div-long v16, v12, v5

    .line 126
    cmp-long v5, v10, v16

    .line 128
    if-gez v5, :cond_8a

    .line 130
    goto :goto_93

    .line 131
    :cond_82
    move-object v15, v5

    .line 132
    move/from16 p1, v6

    .line 134
    const-wide v18, -0x38e38e38e38e38eL  # -2.772000429909333E291

    .line 139
    :cond_8a
    int-to-long v5, v9

    .line 140
    mul-long/2addr v10, v5

    .line 141
    int-to-long v5, v14

    .line 142
    add-long v20, v12, v5

    .line 144
    cmp-long v14, v10, v20

    .line 146
    if-gez v14, :cond_95

    .line 148
    :goto_93
    const/4 v5, 0x0

    .line 149
    goto :goto_a9

    .line 150
    :cond_95
    sub-long/2addr v10, v5

    .line 151
    add-int/lit8 v7, v7, 0x1

    .line 153
    move/from16 v6, p1

    .line 155
    move-object v5, v15

    .line 156
    goto :goto_5d

    .line 157
    :cond_9c
    move-object v15, v5

    .line 158
    if-eqz v8, :cond_a4

    .line 160
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    move-result-object v5

    .line 164
    goto :goto_a9

    .line 165
    :cond_a4
    neg-long v5, v10

    .line 166
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    move-result-object v5

    .line 170
    :goto_a9
    const/16 v6, 0x27

    .line 172
    const-string v7, "System property \'"

    .line 174
    if-eqz v5, :cond_f5

    .line 176
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 179
    move-result-wide v8

    .line 180
    cmp-long v5, v1, v8

    .line 182
    if-gtz v5, :cond_bd

    .line 184
    cmp-long v5, v8, v3

    .line 186
    if-gtz v5, :cond_bd

    .line 188
    const/4 v5, 0x1

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    const/4 v5, 0x0

    .line 191
    :goto_be
    if-eqz v5, :cond_c1

    .line 193
    :goto_c0
    return-wide v8

    .line 194
    :cond_c1
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, "\' should be in range "

    .line 209
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    const-string v0, ".."

    .line 217
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, ", but is \'"

    .line 225
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    throw v5

    .line 246
    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "\' has unrecognized value \'"

    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    move-object v5, v15

    .line 265
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    .line 283
    :cond_11a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 285
    const-string v1, "radix "

    .line 287
    const-string v2, " was not in valid range "

    .line 289
    invoke-static {v1, v9, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-result-object v1

    .line 293
    new-instance v2, Ll3/c;

    .line 295
    invoke-direct {v2, v7, v8}, Ll3/c;-><init>(II)V

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    throw v0
.end method

.method public static c(Ljava/lang/String;IIII)I
    .registers 12

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_5
    and-int/lit8 p4, p4, 0x8

    .line 8
    if-eqz p4, :cond_c

    .line 10
    const p3, 0x7fffffff

    .line 13
    :cond_c
    int-to-long v1, p1

    .line 14
    int-to-long v3, p2

    .line 15
    int-to-long v5, p3

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    .line 20
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method
