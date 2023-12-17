.class public final Lm1/h;
.super Ljava/lang/Object;
.source "KscSpeedManager.java"


# instance fields
.field public final a:I

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lm1/h;->c:J

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object v0, p0, Lm1/h;->b:Ljava/util/HashMap;

    .line 15
    const/16 v0, 0x708

    .line 17
    const/16 v1, 0xe10

    .line 19
    const/16 v2, 0x12c

    .line 21
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lm1/h;->a:I

    .line 31
    return-void
.end method

.method public static b(J)I
    .registers 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/32 v0, 0x36ee80

    .line 7
    rem-long/2addr p0, v0

    .line 8
    long-to-int p0, p0

    .line 9
    return p0
.end method

.method public static c()J
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lm1/h;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iget-object v1, p0, Lm1/h;->b:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Float;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v1

    .line 36
    add-float/2addr v1, p3

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    if-eqz p1, :cond_31

    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 50
    :cond_31
    return-void
.end method

.method public final d()V
    .registers 13

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lm1/h;->c:J

    .line 7
    sub-long v2, v0, v2

    .line 9
    const-wide/32 v4, 0x493e0

    .line 12
    cmp-long v2, v2, v4

    .line 14
    if-gtz v2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {v0, v1}, Lm1/h;->b(J)I

    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lm1/h;->a:I

    .line 23
    sub-int v3, v2, v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-ge v2, v3, :cond_1d

    .line 28
    const/4 v5, 0x1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v5, v4

    .line 31
    :goto_1e
    new-instance v6, Ljava/util/LinkedList;

    .line 33
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 36
    iget-object v7, p0, Lm1/h;->b:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 41
    move-result-object v7

    .line 42
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v7

    .line 46
    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_81

    .line 52
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Ljava/lang/String;

    .line 64
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Landroid/util/SparseArray;

    .line 70
    if-eqz v5, :cond_60

    .line 72
    move v10, v4

    .line 73
    :goto_48
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 76
    move-result v11

    .line 77
    if-ge v10, v11, :cond_77

    .line 79
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 82
    move-result v11

    .line 83
    if-le v11, v2, :cond_5a

    .line 85
    if-ge v11, v3, :cond_5a

    .line 87
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    goto :goto_48

    .line 91
    :cond_5a
    if-lt v11, v3, :cond_5d

    .line 93
    goto :goto_77

    .line 94
    :cond_5d
    add-int/lit8 v10, v10, 0x1

    .line 96
    goto :goto_48

    .line 97
    :cond_60
    move v10, v4

    .line 98
    :goto_61
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 101
    move-result v11

    .line 102
    if-ge v10, v11, :cond_77

    .line 104
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 107
    move-result v11

    .line 108
    if-gt v11, v2, :cond_73

    .line 110
    if-ge v11, v3, :cond_70

    .line 112
    goto :goto_73

    .line 113
    :cond_70
    add-int/lit8 v10, v10, 0x1

    .line 115
    goto :goto_61

    .line 116
    :cond_73
    :goto_73
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 119
    goto :goto_61

    .line 120
    :cond_77
    :goto_77
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 123
    move-result v8

    .line 124
    if-gtz v8, :cond_2d

    .line 126
    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_2d

    .line 130
    :cond_81
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v2

    .line 134
    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_97

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lm1/h;->b:Ljava/util/HashMap;

    .line 148
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    goto :goto_85

    .line 152
    :cond_97
    iput-wide v0, p0, Lm1/h;->c:J

    .line 154
    return-void
.end method

.method public final e(Ljava/lang/String;)Lm1/i;
    .registers 3

    .line 1
    new-instance v0, Lm1/i;

    .line 3
    invoke-direct {v0, p0, p1}, Lm1/i;-><init>(Lm1/h;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;JJF)V
    .registers 20

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move/from16 v2, p6

    .line 5
    monitor-enter p0

    .line 6
    cmp-long v3, p4, p2

    .line 8
    if-ltz v3, :cond_93

    .line 10
    const/4 v3, 0x0

    .line 11
    cmpg-float v3, v2, v3

    .line 13
    if-gez v3, :cond_10

    .line 15
    goto/16 :goto_93

    .line 17
    :cond_10
    const-wide/16 v3, 0x3e8

    .line 19
    :try_start_12
    div-long v5, p2, v3

    .line 21
    div-long v7, p4, v3

    .line 23
    cmp-long v9, v7, v5

    .line 25
    if-nez v9, :cond_22

    .line 27
    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0, p1, v3, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 34
    goto :goto_8b

    .line 35
    :cond_22
    sub-long/2addr v7, v5

    .line 36
    const-wide/16 v5, 0x1

    .line 38
    cmp-long v9, v7, v5

    .line 40
    if-gtz v9, :cond_47

    .line 42
    sub-long v5, p4, p2

    .line 44
    rem-long v7, p2, v3

    .line 46
    sub-long v7, v3, v7

    .line 48
    long-to-float v7, v7

    .line 49
    mul-float/2addr v7, v2

    .line 50
    long-to-float v5, v5

    .line 51
    div-float/2addr v7, v5

    .line 52
    rem-long v3, p4, v3

    .line 54
    long-to-float v3, v3

    .line 55
    mul-float/2addr v2, v3

    .line 56
    div-float/2addr v2, v5

    .line 57
    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    .line 60
    move-result v3

    .line 61
    invoke-static/range {p4 .. p5}, Lm1/h;->b(J)I

    .line 64
    move-result v4

    .line 65
    invoke-virtual {p0, p1, v3, v7}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 68
    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 71
    goto :goto_8b

    .line 72
    :cond_47
    sub-long v9, p4, p2

    .line 74
    rem-long v11, p2, v3

    .line 76
    sub-long v11, v3, v11

    .line 78
    long-to-float v11, v11

    .line 79
    mul-float/2addr v11, v2

    .line 80
    long-to-float v9, v9

    .line 81
    div-float/2addr v11, v9

    .line 82
    rem-long v3, p4, v3

    .line 84
    long-to-float v3, v3

    .line 85
    mul-float/2addr v3, v2

    .line 86
    div-float/2addr v3, v9

    .line 87
    sub-float/2addr v2, v11

    .line 88
    sub-float/2addr v2, v3

    .line 89
    sub-long/2addr v7, v5

    .line 90
    long-to-float v4, v7

    .line 91
    div-float/2addr v2, v4

    .line 92
    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    .line 95
    move-result v4

    .line 96
    invoke-static/range {p4 .. p5}, Lm1/h;->b(J)I

    .line 99
    move-result v5

    .line 100
    invoke-virtual {p0, p1, v4, v11}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 103
    invoke-virtual {p0, p1, v5, v3}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 108
    add-int/lit8 v5, v5, -0x1

    .line 110
    if-lt v5, v4, :cond_77

    .line 112
    :goto_6f
    if-gt v4, v5, :cond_8b

    .line 114
    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_6f

    .line 120
    :cond_77
    :goto_77
    const v3, 0x36ee80

    .line 123
    if-ge v4, v3, :cond_82

    .line 125
    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 130
    goto :goto_77

    .line 131
    :cond_82
    const/4 v3, 0x0

    .line 132
    :goto_83
    if-gt v3, v5, :cond_8b

    .line 134
    invoke-virtual {p0, p1, v3, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 139
    goto :goto_83

    .line 140
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lm1/h;->d()V
    :try_end_8e
    .catchall {:try_start_12 .. :try_end_8e} :catchall_90

    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    monitor-exit p0

    .line 147
    throw v0

    .line 148
    :cond_93
    :goto_93
    monitor-exit p0

    .line 149
    return-void
.end method
