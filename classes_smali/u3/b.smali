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

    new-instance v0, Lu3/r;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/b;->a:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/b;->b:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/b;->c:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/b;->d:Lu3/r;

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

    instance-of v0, p0, Lu3/f;

    if-eqz v0, :cond_c4

    check-cast p0, Lu3/f;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    if-eqz p2, :cond_15

    new-instance v0, Lp3/p;

    invoke-direct {v0, p2, p1}, Lp3/p;-><init>(Lh3/l;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_15
    move-object v0, p1

    goto :goto_1d

    :cond_17
    new-instance p2, Lp3/o;

    invoke-direct {p2, v0, v1}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, p2

    :goto_1d
    iget-object p2, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_38

    iput-object v0, p0, Lu3/f;->f:Ljava/lang/Object;

    iput v2, p0, Lp3/y;->c:I

    iget-object p1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_c7

    :cond_38
    invoke-static {}, Lp3/y0;->a()Lp3/d0;

    move-result-object p2

    iget-wide v3, p2, Lp3/d0;->b:J

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-ltz v3, :cond_49

    move v3, v2

    goto :goto_4a

    :cond_49
    move v3, v1

    :goto_4a
    if-eqz v3, :cond_55

    iput-object v0, p0, Lu3/f;->f:Ljava/lang/Object;

    iput v2, p0, Lp3/y;->c:I

    invoke-virtual {p2, p0}, Lp3/d0;->v(Lp3/y;)V

    goto/16 :goto_c7

    :cond_55
    invoke-virtual {p2, v2}, Lp3/d0;->w(Z)V

    const/4 v3, 0x0

    :try_start_59
    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    sget-object v5, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v4

    check-cast v4, Lp3/k0;

    if-eqz v4, :cond_83

    invoke-interface {v4}, Lp3/k0;->a()Z

    move-result v5

    if-nez v5, :cond_83

    invoke-interface {v4}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lu3/f;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/f;->resumeWith(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_83

    :catchall_81
    move-exception p1

    goto :goto_b8

    :cond_83
    :goto_83
    if-nez v1, :cond_b1

    iget-object v0, p0, Lu3/f;->e:La3/c;

    iget-object v1, p0, Lu3/f;->g:Ljava/lang/Object;

    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    if-eq v1, v4, :cond_9a

    invoke-static {v0, v2, v1}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_81

    goto :goto_9b

    :cond_9a
    move-object v0, v3

    :goto_9b
    :try_start_9b
    iget-object v4, p0, Lu3/f;->e:La3/c;

    invoke-interface {v4, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a9

    if-nez v0, :cond_a8

    :try_start_a4
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_b1

    :cond_a8
    throw v3

    :catchall_a9
    move-exception p1

    if-eqz v0, :cond_ad

    throw v3

    :cond_ad
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1

    :cond_b1
    :goto_b1
    invoke-virtual {p2}, Lp3/d0;->x()Z

    move-result p1
    :try_end_b5
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_81

    if-nez p1, :cond_b1

    goto :goto_bb

    :goto_b8
    :try_start_b8
    invoke-virtual {p0, p1, v3}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bf

    :goto_bb
    invoke-virtual {p2}, Lp3/d0;->u()V

    goto :goto_c7

    :catchall_bf
    move-exception p0

    invoke-virtual {p2}, Lp3/d0;->u()V

    throw p0

    :cond_c4
    invoke-interface {p0, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    :goto_c7
    return-void
.end method

.method public static final b(Ljava/lang/String;JJJ)J
    .registers 29
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    sget v5, Lu3/s;->a:I

    :try_start_8
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_14

    move-wide/from16 v8, p1

    goto/16 :goto_c0

    :cond_14
    new-instance v6, Ll3/c;

    const/4 v7, 0x2

    const/16 v8, 0x24

    invoke-direct {v6, v7, v8}, Ll3/c;-><init>(II)V

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ll3/c;->a(I)Z

    move-result v6

    if-eqz v6, :cond_11a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2f

    :cond_2c
    :goto_2c
    move-object v15, v5

    goto/16 :goto_93

    :cond_2f
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ge v10, v11, :cond_39

    const/4 v11, -0x1

    goto :goto_3e

    :cond_39
    if-ne v10, v11, :cond_3d

    move v11, v8

    goto :goto_3e

    :cond_3d
    move v11, v7

    :goto_3e
    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    if-gez v11, :cond_54

    if-ne v6, v7, :cond_48

    goto :goto_2c

    :cond_48
    const/16 v11, 0x2d

    if-ne v10, v11, :cond_4f

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_55

    :cond_4f
    const/16 v11, 0x2b

    if-ne v10, v11, :cond_2c

    goto :goto_56

    :cond_54
    move v7, v8

    :goto_55
    move v8, v7

    :goto_56
    const-wide/16 v10, 0x0

    const-wide v16, -0x38e38e38e38e38eL  # -2.772000429909333E291

    :goto_5d
    if-ge v7, v6, :cond_9c

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v9}, Ljava/lang/Character;->digit(II)I

    move-result v14

    if-gez v14, :cond_6a

    goto :goto_2c

    :cond_6a
    cmp-long v15, v10, v16

    if-gez v15, :cond_82

    const-wide v18, -0x38e38e38e38e38eL  # -2.772000429909333E291

    cmp-long v15, v16, v18

    if-nez v15, :cond_2c

    move-object v15, v5

    move/from16 p1, v6

    int-to-long v5, v9

    div-long v16, v12, v5

    cmp-long v5, v10, v16

    if-gez v5, :cond_8a

    goto :goto_93

    :cond_82
    move-object v15, v5

    move/from16 p1, v6

    const-wide v18, -0x38e38e38e38e38eL  # -2.772000429909333E291

    :cond_8a
    int-to-long v5, v9

    mul-long/2addr v10, v5

    int-to-long v5, v14

    add-long v20, v12, v5

    cmp-long v14, v10, v20

    if-gez v14, :cond_95

    :goto_93
    const/4 v5, 0x0

    goto :goto_a9

    :cond_95
    sub-long/2addr v10, v5

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p1

    move-object v5, v15

    goto :goto_5d

    :cond_9c
    move-object v15, v5

    if-eqz v8, :cond_a4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_a9

    :cond_a4
    neg-long v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_a9
    const/16 v6, 0x27

    const-string v7, "System property \'"

    if-eqz v5, :cond_f5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v1, v8

    if-gtz v5, :cond_bd

    cmp-long v5, v8, v3

    if-gtz v5, :cond_bd

    const/4 v5, 0x1

    goto :goto_be

    :cond_bd
    const/4 v5, 0x0

    :goto_be
    if-eqz v5, :cond_c1

    :goto_c0
    return-wide v8

    :cond_c1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v15

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "radix "

    const-string v2, " was not in valid range "

    invoke-static {v1, v9, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ll3/c;

    invoke-direct {v2, v7, v8}, Ll3/c;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;IIII)I
    .registers 12

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_c

    const p3, 0x7fffffff

    :cond_c
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
