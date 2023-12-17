.class public final Lr2/a;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

# interfaces
.implements Lo2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo2/c;"
    }
.end annotation


# static fields
.field public static final i:I

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public b:I

.field public c:J

.field public final d:I

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public g:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jctools.spsc.max.lookahead.step"

    .line 3
    const/16 v1, 0x1000

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v0

    .line 13
    sput v0, Lr2/a;->i:I

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    sput-object v0, Lr2/a;->j:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 9
    iput-object v0, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 16
    iput-object v1, p0, Lr2/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    const/16 v1, 0x8

    .line 20
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    sub-int/2addr p1, v1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 29
    move-result p1

    .line 30
    rsub-int/lit8 p1, p1, 0x20

    .line 32
    shl-int p1, v1, p1

    .line 34
    add-int/lit8 v1, p1, -0x1

    .line 36
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 38
    add-int/lit8 v3, p1, 0x1

    .line 40
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 43
    iput-object v2, p0, Lr2/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 45
    iput v1, p0, Lr2/a;->d:I

    .line 47
    div-int/lit8 p1, p1, 0x4

    .line 49
    sget v3, Lr2/a;->i:I

    .line 51
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lr2/a;->b:I

    .line 57
    iput-object v2, p0, Lr2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 59
    iput v1, p0, Lr2/a;->f:I

    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 63
    int-to-long v1, v1

    .line 64
    iput-wide v1, p0, Lr2/a;->c:J

    .line 66
    const-wide/16 v1, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 71
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lr2/a;->poll()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lr2/a;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_0

    .line 14
    :cond_d
    return-void
.end method

.method public final isEmpty()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lr2/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_74

    .line 3
    iget-object v0, p0, Lr2/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    iget-object v1, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    move-result-wide v1

    .line 11
    iget v3, p0, Lr2/a;->d:I

    .line 13
    long-to-int v4, v1

    .line 14
    and-int/2addr v4, v3

    .line 15
    iget-wide v5, p0, Lr2/a;->c:J

    .line 17
    cmp-long v5, v1, v5

    .line 19
    const/4 v6, 0x1

    .line 20
    const-wide/16 v7, 0x1

    .line 22
    if-gez v5, :cond_21

    .line 24
    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 27
    add-long/2addr v1, v7

    .line 28
    iget-object p1, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 33
    return v6

    .line 34
    :cond_21
    iget v5, p0, Lr2/a;->b:I

    .line 36
    int-to-long v9, v5

    .line 37
    add-long/2addr v9, v1

    .line 38
    long-to-int v5, v9

    .line 39
    and-int/2addr v5, v3

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_3a

    .line 46
    sub-long/2addr v9, v7

    .line 47
    iput-wide v9, p0, Lr2/a;->c:J

    .line 49
    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 52
    add-long/2addr v1, v7

    .line 53
    iget-object p1, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 58
    return v6

    .line 59
    :cond_3a
    add-long v9, v1, v7

    .line 61
    long-to-int v5, v9

    .line 62
    and-int/2addr v5, v3

    .line 63
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    if-nez v5, :cond_4d

    .line 69
    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    invoke-virtual {p1, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 77
    return v6

    .line 78
    :cond_4d
    int-to-long v11, v3

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 82
    move-result v3

    .line 83
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 85
    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 88
    iput-object v5, p0, Lr2/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 90
    add-long/2addr v11, v1

    .line 91
    sub-long/2addr v11, v7

    .line 92
    iput-wide v11, p0, Lr2/a;->c:J

    .line 94
    invoke-virtual {v5, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 100
    move-result p1

    .line 101
    add-int/lit8 p1, p1, -0x1

    .line 103
    invoke-virtual {v0, p1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 106
    sget-object p1, Lr2/a;->j:Ljava/lang/Object;

    .line 108
    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lr2/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 113
    invoke-virtual {p1, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 116
    return v6

    .line 117
    :cond_74
    new-instance p1, Ljava/lang/NullPointerException;

    .line 119
    const-string v0, "Null is not a valid element"

    .line 121
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p1
.end method

.method public final poll()Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    iget-object v1, p0, Lr2/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 8
    move-result-wide v1

    .line 9
    iget v3, p0, Lr2/a;->f:I

    .line 11
    long-to-int v4, v1

    .line 12
    and-int/2addr v4, v3

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lr2/a;->j:Ljava/lang/Object;

    .line 19
    const/4 v7, 0x1

    .line 20
    if-ne v5, v6, :cond_17

    .line 22
    move v6, v7

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v6, 0x0

    .line 25
    :goto_18
    const-wide/16 v8, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    if-eqz v5, :cond_29

    .line 30
    if-nez v6, :cond_29

    .line 32
    invoke-virtual {v0, v4, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 35
    add-long/2addr v1, v8

    .line 36
    iget-object v0, p0, Lr2/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 41
    return-object v5

    .line 42
    :cond_29
    if-eqz v6, :cond_47

    .line 44
    add-int/2addr v3, v7

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 51
    invoke-virtual {v0, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 54
    iput-object v5, p0, Lr2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_46

    .line 62
    invoke-virtual {v5, v4, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 65
    add-long/2addr v1, v8

    .line 66
    iget-object v3, p0, Lr2/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 71
    :cond_46
    return-object v0

    .line 72
    :cond_47
    return-object v10
.end method
