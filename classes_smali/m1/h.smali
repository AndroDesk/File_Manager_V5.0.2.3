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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm1/h;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm1/h;->b:Ljava/util/HashMap;

    const/16 v0, 0x708

    const/16 v1, 0xe10

    const/16 v2, 0x12c

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lm1/h;->a:I

    return-void
.end method

.method public static b(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static c()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IF)V
    .registers 6

    iget-object v0, p0, Lm1/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lm1/h;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lm1/h;->a(Ljava/lang/String;IF)V

    :cond_31
    return-void
.end method

.method public final d()V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lm1/h;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    return-void

    :cond_10
    invoke-static {v0, v1}, Lm1/h;->b(J)I

    move-result v2

    iget v3, p0, Lm1/h;->a:I

    sub-int v3, v2, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    move v5, v4

    :goto_1e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, p0, Lm1/h;->b:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v5, :cond_60

    move v10, v4

    :goto_48
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_77

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-le v11, v2, :cond_5a

    if-ge v11, v3, :cond_5a

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_48

    :cond_5a
    if-lt v11, v3, :cond_5d

    goto :goto_77

    :cond_5d
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    :cond_60
    move v10, v4

    :goto_61
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_77

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-gt v11, v2, :cond_73

    if-ge v11, v3, :cond_70

    goto :goto_73

    :cond_70
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_73
    :goto_73
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_61

    :cond_77
    :goto_77
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_2d

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_81
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lm1/h;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    :cond_97
    iput-wide v0, p0, Lm1/h;->c:J

    return-void
.end method

.method public final e(Ljava/lang/String;)Lm1/i;
    .registers 3

    new-instance v0, Lm1/i;

    invoke-direct {v0, p0, p1}, Lm1/i;-><init>(Lm1/h;Ljava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;JJF)V
    .registers 20

    move-object v1, p0

    move-object v0, p1

    move/from16 v2, p6

    monitor-enter p0

    cmp-long v3, p4, p2

    if-ltz v3, :cond_93

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_10

    goto/16 :goto_93

    :cond_10
    const-wide/16 v3, 0x3e8

    :try_start_12
    div-long v5, p2, v3

    div-long v7, p4, v3

    cmp-long v9, v7, v5

    if-nez v9, :cond_22

    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    move-result v3

    invoke-virtual {p0, p1, v3, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    goto :goto_8b

    :cond_22
    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1

    cmp-long v9, v7, v5

    if-gtz v9, :cond_47

    sub-long v5, p4, p2

    rem-long v7, p2, v3

    sub-long v7, v3, v7

    long-to-float v7, v7

    mul-float/2addr v7, v2

    long-to-float v5, v5

    div-float/2addr v7, v5

    rem-long v3, p4, v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    move-result v3

    invoke-static/range {p4 .. p5}, Lm1/h;->b(J)I

    move-result v4

    invoke-virtual {p0, p1, v3, v7}, Lm1/h;->a(Ljava/lang/String;IF)V

    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    goto :goto_8b

    :cond_47
    sub-long v9, p4, p2

    rem-long v11, p2, v3

    sub-long v11, v3, v11

    long-to-float v11, v11

    mul-float/2addr v11, v2

    long-to-float v9, v9

    div-float/2addr v11, v9

    rem-long v3, p4, v3

    long-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v9

    sub-float/2addr v2, v11

    sub-float/2addr v2, v3

    sub-long/2addr v7, v5

    long-to-float v4, v7

    div-float/2addr v2, v4

    invoke-static/range {p2 .. p3}, Lm1/h;->b(J)I

    move-result v4

    invoke-static/range {p4 .. p5}, Lm1/h;->b(J)I

    move-result v5

    invoke-virtual {p0, p1, v4, v11}, Lm1/h;->a(Ljava/lang/String;IF)V

    invoke-virtual {p0, p1, v5, v3}, Lm1/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    if-lt v5, v4, :cond_77

    :goto_6f
    if-gt v4, v5, :cond_8b

    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_77
    :goto_77
    const v3, 0x36ee80

    if-ge v4, v3, :cond_82

    invoke-virtual {p0, p1, v4, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    :cond_82
    const/4 v3, 0x0

    :goto_83
    if-gt v3, v5, :cond_8b

    invoke-virtual {p0, p1, v3, v2}, Lm1/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lm1/h;->d()V
    :try_end_8e
    .catchall {:try_start_12 .. :try_end_8e} :catchall_90

    monitor-exit p0

    return-void

    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_93
    :goto_93
    monitor-exit p0

    return-void
.end method
