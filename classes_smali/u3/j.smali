.class public final Lu3/j;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:I

.field public final b:Z

.field public final c:I

.field public synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Lu3/j;

    .line 3
    new-instance v1, Lu3/r;

    .line 5
    const-string v2, "REMOVE_FROZEN"

    .line 7
    invoke-direct {v1, v2}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 10
    sput-object v1, Lu3/j;->g:Lu3/r;

    .line 12
    const-class v1, Ljava/lang/Object;

    .line 14
    const-string v2, "_next"

    .line 16
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lu3/j;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    const-string v1, "_state"

    .line 24
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lu3/j;->a:I

    .line 6
    iput-boolean p2, p0, Lu3/j;->b:Z

    .line 8
    add-int/lit8 p2, p1, -0x1

    .line 10
    iput p2, p0, Lu3/j;->c:I

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lu3/j;->_next:Ljava/lang/Object;

    .line 15
    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lu3/j;->_state:J

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 21
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 24
    iput-object v0, p0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    const v2, 0x3fffffff  # 1.9999999f

    .line 31
    if-gt p2, v2, :cond_22

    .line 33
    move v2, v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v2, v0

    .line 36
    :goto_23
    const-string v3, "Check failed."

    .line 38
    if-eqz v2, :cond_38

    .line 40
    and-int/2addr p1, p2

    .line 41
    if-nez p1, :cond_2b

    .line 43
    move v0, v1

    .line 44
    :cond_2b
    if-eqz v0, :cond_2e

    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 16
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v2, p0, Lu3/j;->_state:J

    .line 3
    const-wide/high16 v0, 0x3000000000000000L  # 1.727233711018889E-77

    .line 5
    and-long/2addr v0, v2

    .line 6
    const-wide/16 v6, 0x0

    .line 8
    cmp-long v0, v0, v6

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_15

    .line 13
    const-wide/high16 v4, 0x2000000000000000L

    .line 15
    and-long/2addr v2, v4

    .line 16
    cmp-long p1, v2, v6

    .line 18
    if-eqz p1, :cond_14

    .line 20
    const/4 v1, 0x2

    .line 21
    :cond_14
    return v1

    .line 22
    :cond_15
    const-wide/32 v4, 0x3fffffff

    .line 25
    and-long/2addr v4, v2

    .line 26
    const/4 v8, 0x0

    .line 27
    shr-long/2addr v4, v8

    .line 28
    long-to-int v0, v4

    .line 29
    const-wide v4, 0xfffffffc0000000L

    .line 34
    and-long/2addr v4, v2

    .line 35
    const/16 v9, 0x1e

    .line 37
    shr-long/2addr v4, v9

    .line 38
    long-to-int v10, v4

    .line 39
    iget v11, p0, Lu3/j;->c:I

    .line 41
    add-int/lit8 v4, v10, 0x2

    .line 43
    and-int/2addr v4, v11

    .line 44
    and-int v5, v0, v11

    .line 46
    if-ne v4, v5, :cond_30

    .line 48
    return v1

    .line 49
    :cond_30
    iget-boolean v4, p0, Lu3/j;->b:Z

    .line 51
    const v5, 0x3fffffff  # 1.9999999f

    .line 54
    if-nez v4, :cond_4f

    .line 56
    iget-object v4, p0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 58
    and-int v12, v10, v11

    .line 60
    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_4f

    .line 66
    iget v2, p0, Lu3/j;->a:I

    .line 68
    const/16 v3, 0x400

    .line 70
    if-lt v2, v3, :cond_4e

    .line 72
    sub-int/2addr v10, v0

    .line 73
    and-int v0, v10, v5

    .line 75
    shr-int/lit8 v2, v2, 0x1

    .line 77
    if-le v0, v2, :cond_0

    .line 79
    :cond_4e
    return v1

    .line 80
    :cond_4f
    add-int/lit8 v0, v10, 0x1

    .line 82
    and-int/2addr v0, v5

    .line 83
    sget-object v1, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 85
    const-wide v4, -0xfffffffc0000001L  # -3.1050369248997324E231

    .line 90
    and-long/2addr v4, v2

    .line 91
    int-to-long v12, v0

    .line 92
    shl-long/2addr v12, v9

    .line 93
    or-long/2addr v4, v12

    .line 94
    move-object v0, v1

    .line 95
    move-object v1, p0

    .line 96
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 104
    and-int v1, v10, v11

    .line 106
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 109
    move-object v0, p0

    .line 110
    :cond_6d
    iget-wide v1, v0, Lu3/j;->_state:J

    .line 112
    const-wide/high16 v3, 0x1000000000000000L

    .line 114
    and-long/2addr v1, v3

    .line 115
    cmp-long v1, v1, v6

    .line 117
    if-nez v1, :cond_77

    .line 119
    goto :goto_9a

    .line 120
    :cond_77
    invoke-virtual {v0}, Lu3/j;->e()Lu3/j;

    .line 123
    move-result-object v0

    .line 124
    iget-object v1, v0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 126
    iget v2, v0, Lu3/j;->c:I

    .line 128
    and-int/2addr v2, v10

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 133
    instance-of v2, v1, Lu3/j$a;

    .line 135
    if-eqz v2, :cond_97

    .line 137
    check-cast v1, Lu3/j$a;

    .line 139
    iget v1, v1, Lu3/j$a;->a:I

    .line 141
    if-ne v1, v10, :cond_97

    .line 143
    iget-object v1, v0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 145
    iget v2, v0, Lu3/j;->c:I

    .line 147
    and-int/2addr v2, v10

    .line 148
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    const/4 v0, 0x0

    .line 153
    :goto_98
    if-nez v0, :cond_6d

    .line 155
    :goto_9a
    return v8
.end method

.method public final b()Z
    .registers 10

    .line 1
    :cond_0
    iget-wide v2, p0, Lu3/j;->_state:J

    .line 3
    const-wide/high16 v0, 0x2000000000000000L

    .line 5
    and-long v4, v2, v0

    .line 7
    const-wide/16 v6, 0x0

    .line 9
    cmp-long v4, v4, v6

    .line 11
    const/4 v8, 0x1

    .line 12
    if-eqz v4, :cond_e

    .line 14
    return v8

    .line 15
    :cond_e
    const-wide/high16 v4, 0x1000000000000000L

    .line 17
    and-long/2addr v4, v2

    .line 18
    cmp-long v4, v4, v6

    .line 20
    if-eqz v4, :cond_17

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_17
    or-long v4, v2, v0

    .line 26
    sget-object v0, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 28
    move-object v1, p0

    .line 29
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    return v8
.end method

.method public final c()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lu3/j;->_state:J

    .line 3
    const-wide/32 v2, 0x3fffffff

    .line 6
    and-long/2addr v2, v0

    .line 7
    const/4 v4, 0x0

    .line 8
    shr-long/2addr v2, v4

    .line 9
    long-to-int v2, v2

    .line 10
    const-wide v3, 0xfffffffc0000000L

    .line 15
    and-long/2addr v0, v3

    .line 16
    const/16 v3, 0x1e

    .line 18
    shr-long/2addr v0, v3

    .line 19
    long-to-int v0, v0

    .line 20
    sub-int/2addr v0, v2

    .line 21
    const v1, 0x3fffffff  # 1.9999999f

    .line 24
    and-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final d()Z
    .registers 8

    .line 1
    iget-wide v0, p0, Lu3/j;->_state:J

    .line 3
    const-wide/32 v2, 0x3fffffff

    .line 6
    and-long/2addr v2, v0

    .line 7
    const/4 v4, 0x0

    .line 8
    shr-long/2addr v2, v4

    .line 9
    long-to-int v2, v2

    .line 10
    const-wide v5, 0xfffffffc0000000L

    .line 15
    and-long/2addr v0, v5

    .line 16
    const/16 v3, 0x1e

    .line 18
    shr-long/2addr v0, v3

    .line 19
    long-to-int v0, v0

    .line 20
    if-ne v2, v0, :cond_16

    .line 22
    const/4 v4, 0x1

    .line 23
    :cond_16
    return v4
.end method

.method public final e()Lu3/j;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu3/j<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    iget-wide v2, p0, Lu3/j;->_state:J

    .line 3
    const-wide/high16 v0, 0x1000000000000000L

    .line 5
    and-long v4, v2, v0

    .line 7
    const-wide/16 v6, 0x0

    .line 9
    cmp-long v4, v4, v6

    .line 11
    if-eqz v4, :cond_d

    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    or-long v6, v2, v0

    .line 16
    sget-object v0, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    move-object v1, p0

    .line 19
    move-wide v4, v6

    .line 20
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    move-wide v2, v6

    .line 27
    :goto_1a
    iget-object v0, p0, Lu3/j;->_next:Ljava/lang/Object;

    .line 29
    check-cast v0, Lu3/j;

    .line 31
    if-eqz v0, :cond_21

    .line 33
    return-object v0

    .line 34
    :cond_21
    sget-object v0, Lu3/j;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    const/4 v1, 0x0

    .line 37
    new-instance v4, Lu3/j;

    .line 39
    iget v5, p0, Lu3/j;->a:I

    .line 41
    mul-int/lit8 v5, v5, 0x2

    .line 43
    iget-boolean v6, p0, Lu3/j;->b:Z

    .line 45
    invoke-direct {v4, v5, v6}, Lu3/j;-><init>(IZ)V

    .line 48
    const-wide/32 v5, 0x3fffffff

    .line 51
    and-long/2addr v5, v2

    .line 52
    const/4 v7, 0x0

    .line 53
    shr-long/2addr v5, v7

    .line 54
    long-to-int v5, v5

    .line 55
    const-wide v6, 0xfffffffc0000000L

    .line 60
    and-long/2addr v6, v2

    .line 61
    const/16 v8, 0x1e

    .line 63
    shr-long/2addr v6, v8

    .line 64
    long-to-int v6, v6

    .line 65
    :goto_40
    iget v7, p0, Lu3/j;->c:I

    .line 67
    and-int v8, v5, v7

    .line 69
    and-int/2addr v7, v6

    .line 70
    if-eq v8, v7, :cond_5f

    .line 72
    iget-object v7, p0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 74
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_54

    .line 80
    new-instance v7, Lu3/j$a;

    .line 82
    invoke-direct {v7, v5}, Lu3/j$a;-><init>(I)V

    .line 85
    :cond_54
    iget-object v8, v4, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 87
    iget v9, v4, Lu3/j;->c:I

    .line 89
    and-int/2addr v9, v5

    .line 90
    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 95
    goto :goto_40

    .line 96
    :cond_5f
    const-wide v5, -0x1000000000000001L  # -3.1050361846014175E231

    .line 101
    and-long/2addr v5, v2

    .line 102
    iput-wide v5, v4, Lu3/j;->_state:J

    .line 104
    :cond_67
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_6e

    .line 110
    goto :goto_1a

    .line 111
    :cond_6e
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_67

    .line 117
    goto :goto_1a
.end method

.method public final f()Ljava/lang/Object;
    .registers 28
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 3
    :cond_2
    :goto_2
    iget-wide v2, v6, Lu3/j;->_state:J

    .line 5
    const-wide/high16 v7, 0x1000000000000000L

    .line 7
    and-long v0, v2, v7

    .line 9
    const-wide/16 v9, 0x0

    .line 11
    cmp-long v0, v0, v9

    .line 13
    if-eqz v0, :cond_11

    .line 15
    sget-object v0, Lu3/j;->g:Lu3/r;

    .line 17
    return-object v0

    .line 18
    :cond_11
    const-wide/32 v11, 0x3fffffff

    .line 21
    and-long v0, v2, v11

    .line 23
    const/4 v13, 0x0

    .line 24
    shr-long/2addr v0, v13

    .line 25
    long-to-int v14, v0

    .line 26
    const-wide v0, 0xfffffffc0000000L

    .line 31
    and-long/2addr v0, v2

    .line 32
    const/16 v4, 0x1e

    .line 34
    shr-long/2addr v0, v4

    .line 35
    long-to-int v0, v0

    .line 36
    iget v1, v6, Lu3/j;->c:I

    .line 38
    and-int/2addr v0, v1

    .line 39
    and-int/2addr v1, v14

    .line 40
    const/4 v15, 0x0

    .line 41
    if-ne v0, v1, :cond_2b

    .line 43
    return-object v15

    .line 44
    :cond_2b
    iget-object v0, v6, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_38

    .line 52
    iget-boolean v0, v6, Lu3/j;->b:Z

    .line 54
    if-eqz v0, :cond_2

    .line 56
    return-object v15

    .line 57
    :cond_38
    instance-of v0, v4, Lu3/j$a;

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    return-object v15

    .line 62
    :cond_3d
    add-int/lit8 v0, v14, 0x1

    .line 64
    const v1, 0x3fffffff  # 1.9999999f

    .line 67
    and-int/2addr v0, v1

    .line 68
    sget-object v1, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 70
    const-wide/32 v16, -0x40000000

    .line 73
    and-long v18, v2, v16

    .line 75
    int-to-long v9, v0

    .line 76
    shl-long/2addr v9, v13

    .line 77
    or-long v18, v18, v9

    .line 79
    move-object v0, v1

    .line 80
    move-object/from16 v1, p0

    .line 82
    move-object/from16 v20, v4

    .line 84
    move-wide/from16 v4, v18

    .line 86
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_64

    .line 92
    iget-object v0, v6, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 94
    iget v1, v6, Lu3/j;->c:I

    .line 96
    and-int/2addr v1, v14

    .line 97
    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 100
    return-object v20

    .line 101
    :cond_64
    iget-boolean v0, v6, Lu3/j;->b:Z

    .line 103
    if-nez v0, :cond_69

    .line 105
    goto :goto_2

    .line 106
    :cond_69
    move-object v0, v6

    .line 107
    :cond_6a
    iget-wide v1, v0, Lu3/j;->_state:J

    .line 109
    and-long v3, v1, v11

    .line 111
    shr-long/2addr v3, v13

    .line 112
    long-to-int v3, v3

    .line 113
    and-long v4, v1, v7

    .line 115
    const-wide/16 v18, 0x0

    .line 117
    cmp-long v4, v4, v18

    .line 119
    if-eqz v4, :cond_7d

    .line 121
    invoke-virtual {v0}, Lu3/j;->e()Lu3/j;

    .line 124
    move-result-object v0

    .line 125
    goto :goto_96

    .line 126
    :cond_7d
    sget-object v21, Lu3/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 128
    and-long v4, v1, v16

    .line 130
    or-long v25, v4, v9

    .line 132
    move-object/from16 v22, v0

    .line 134
    move-wide/from16 v23, v1

    .line 136
    invoke-virtual/range {v21 .. v26}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6a

    .line 142
    iget-object v1, v0, Lu3/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 144
    iget v0, v0, Lu3/j;->c:I

    .line 146
    and-int/2addr v0, v3

    .line 147
    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 150
    move-object v0, v15

    .line 151
    :goto_96
    if-nez v0, :cond_6a

    .line 153
    return-object v20
.end method
