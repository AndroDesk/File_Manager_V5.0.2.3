.class public final Landroidx/collection/b;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static d:[Ljava/lang/Object;

.field public static e:I

.field public static f:[Ljava/lang/Object;

.field public static g:I

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/collection/b;->h:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Landroidx/collection/b;->i:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-nez p1, :cond_e

    .line 6
    sget-object p1, La/b;->a:[I

    .line 8
    iput-object p1, p0, Landroidx/collection/b;->a:[I

    .line 10
    sget-object p1, La/b;->c:[Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/collection/b;->a(I)V

    .line 18
    :goto_11
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroidx/collection/b;->c:I

    .line 21
    return-void
.end method

.method public static b([I[Ljava/lang/Object;I)V
    .registers 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/16 v4, 0xa

    .line 7
    const/4 v5, 0x1

    .line 8
    const/16 v6, 0x8

    .line 10
    if-ne v0, v6, :cond_2c

    .line 12
    sget-object v0, Landroidx/collection/b;->i:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_e
    sget v6, Landroidx/collection/b;->g:I

    .line 17
    if-ge v6, v4, :cond_27

    .line 19
    sget-object v4, Landroidx/collection/b;->f:[Ljava/lang/Object;

    .line 21
    aput-object v4, p1, v3

    .line 23
    aput-object p0, p1, v5

    .line 25
    sub-int/2addr p2, v5

    .line 26
    :goto_19
    if-lt p2, v2, :cond_20

    .line 28
    aput-object v1, p1, p2

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 32
    goto :goto_19

    .line 33
    :cond_20
    sput-object p1, Landroidx/collection/b;->f:[Ljava/lang/Object;

    .line 35
    sget p0, Landroidx/collection/b;->g:I

    .line 37
    add-int/2addr p0, v5

    .line 38
    sput p0, Landroidx/collection/b;->g:I

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    goto :goto_51

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    .line 44
    throw p0

    .line 45
    :cond_2c
    array-length v0, p0

    .line 46
    const/4 v6, 0x4

    .line 47
    if-ne v0, v6, :cond_51

    .line 49
    sget-object v0, Landroidx/collection/b;->h:Ljava/lang/Object;

    .line 51
    monitor-enter v0

    .line 52
    :try_start_33
    sget v6, Landroidx/collection/b;->e:I

    .line 54
    if-ge v6, v4, :cond_4c

    .line 56
    sget-object v4, Landroidx/collection/b;->d:[Ljava/lang/Object;

    .line 58
    aput-object v4, p1, v3

    .line 60
    aput-object p0, p1, v5

    .line 62
    sub-int/2addr p2, v5

    .line 63
    :goto_3e
    if-lt p2, v2, :cond_45

    .line 65
    aput-object v1, p1, p2

    .line 67
    add-int/lit8 p2, p2, -0x1

    .line 69
    goto :goto_3e

    .line 70
    :cond_45
    sput-object p1, Landroidx/collection/b;->d:[Ljava/lang/Object;

    .line 72
    sget p0, Landroidx/collection/b;->e:I

    .line 74
    add-int/2addr p0, v5

    .line 75
    sput p0, Landroidx/collection/b;->e:I

    .line 77
    :cond_4c
    monitor-exit v0

    .line 78
    goto :goto_51

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    .line 81
    throw p0

    .line 82
    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/16 v3, 0x8

    .line 6
    if-ne p1, v3, :cond_54

    .line 8
    sget-object v3, Landroidx/collection/b;->i:Ljava/lang/Object;

    .line 10
    monitor-enter v3

    .line 11
    :try_start_a
    sget-object v4, Landroidx/collection/b;->f:[Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_51

    .line 13
    if-eqz v4, :cond_4f

    .line 15
    :try_start_e
    iput-object v4, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 17
    aget-object v5, v4, v2

    .line 19
    check-cast v5, [Ljava/lang/Object;

    .line 21
    sput-object v5, Landroidx/collection/b;->f:[Ljava/lang/Object;

    .line 23
    aget-object v5, v4, v1

    .line 25
    check-cast v5, [I

    .line 27
    iput-object v5, p0, Landroidx/collection/b;->a:[I

    .line 29
    if-eqz v5, :cond_29

    .line 31
    aput-object v0, v4, v1

    .line 33
    aput-object v0, v4, v2

    .line 35
    sget v5, Landroidx/collection/b;->g:I

    .line 37
    sub-int/2addr v5, v1

    .line 38
    sput v5, Landroidx/collection/b;->g:I
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_27} :catch_29
    .catchall {:try_start_e .. :try_end_27} :catchall_51

    .line 40
    :try_start_27
    monitor-exit v3

    .line 41
    return-void

    .line 42
    :catch_29
    :cond_29
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    aget-object v7, v4, v2

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v7, " [1]="

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    aget-object v1, v4, v1

    .line 66
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    sput-object v0, Landroidx/collection/b;->f:[Ljava/lang/Object;

    .line 78
    sput v2, Landroidx/collection/b;->g:I

    .line 80
    :cond_4f
    monitor-exit v3

    .line 81
    goto :goto_a4

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_27 .. :try_end_53} :catchall_51

    .line 84
    throw p1

    .line 85
    :cond_54
    const/4 v3, 0x4

    .line 86
    if-ne p1, v3, :cond_a4

    .line 88
    sget-object v3, Landroidx/collection/b;->h:Ljava/lang/Object;

    .line 90
    monitor-enter v3

    .line 91
    :try_start_5a
    sget-object v4, Landroidx/collection/b;->d:[Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_a1

    .line 93
    if-eqz v4, :cond_9f

    .line 95
    :try_start_5e
    iput-object v4, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 97
    aget-object v5, v4, v2

    .line 99
    check-cast v5, [Ljava/lang/Object;

    .line 101
    sput-object v5, Landroidx/collection/b;->d:[Ljava/lang/Object;

    .line 103
    aget-object v5, v4, v1

    .line 105
    check-cast v5, [I

    .line 107
    iput-object v5, p0, Landroidx/collection/b;->a:[I

    .line 109
    if-eqz v5, :cond_79

    .line 111
    aput-object v0, v4, v1

    .line 113
    aput-object v0, v4, v2

    .line 115
    sget v5, Landroidx/collection/b;->e:I

    .line 117
    sub-int/2addr v5, v1

    .line 118
    sput v5, Landroidx/collection/b;->e:I
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_5e .. :try_end_77} :catch_79
    .catchall {:try_start_5e .. :try_end_77} :catchall_a1

    .line 120
    :try_start_77
    monitor-exit v3

    .line 121
    return-void

    .line 122
    :catch_79
    :cond_79
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    aget-object v7, v4, v2

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v7, " [1]="

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    aget-object v1, v4, v1

    .line 146
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    sput-object v0, Landroidx/collection/b;->d:[Ljava/lang/Object;

    .line 158
    sput v2, Landroidx/collection/b;->e:I

    .line 160
    :cond_9f
    monitor-exit v3

    .line 161
    goto :goto_a4

    .line 162
    :catchall_a1
    move-exception p1

    .line 163
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_77 .. :try_end_a3} :catchall_a1

    .line 164
    throw p1

    .line 165
    :cond_a4
    :goto_a4
    new-array v0, p1, [I

    .line 167
    iput-object v0, p0, Landroidx/collection/b;->a:[I

    .line 169
    new-array p1, p1, [Ljava/lang/Object;

    .line 171
    iput-object p1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_b

    .line 6
    invoke-virtual {p0}, Landroidx/collection/b;->d()I

    .line 9
    move-result v2

    .line 10
    move v3, v1

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0, p1, v2}, Landroidx/collection/b;->c(Ljava/lang/Object;I)I

    .line 19
    move-result v3

    .line 20
    move v8, v3

    .line 21
    move v3, v2

    .line 22
    move v2, v8

    .line 23
    :goto_16
    if-ltz v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    not-int v2, v2

    .line 27
    iget-object v4, p0, Landroidx/collection/b;->a:[I

    .line 29
    array-length v5, v4

    .line 30
    if-lt v0, v5, :cond_4d

    .line 32
    const/4 v5, 0x4

    .line 33
    const/16 v6, 0x8

    .line 35
    if-lt v0, v6, :cond_28

    .line 37
    shr-int/lit8 v5, v0, 0x1

    .line 39
    add-int/2addr v5, v0

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    if-lt v0, v5, :cond_2b

    .line 43
    move v5, v6

    .line 44
    :cond_2b
    :goto_2b
    iget-object v6, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 46
    invoke-virtual {p0, v5}, Landroidx/collection/b;->a(I)V

    .line 49
    iget v5, p0, Landroidx/collection/b;->c:I

    .line 51
    if-ne v0, v5, :cond_47

    .line 53
    iget-object v5, p0, Landroidx/collection/b;->a:[I

    .line 55
    array-length v7, v5

    .line 56
    if-lez v7, :cond_43

    .line 58
    array-length v7, v4

    .line 59
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v5, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 64
    array-length v7, v6

    .line 65
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_43
    invoke-static {v4, v6, v0}, Landroidx/collection/b;->b([I[Ljava/lang/Object;I)V

    .line 71
    goto :goto_4d

    .line 72
    :cond_47
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 74
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 77
    throw p1

    .line 78
    :cond_4d
    :goto_4d
    if-ge v2, v0, :cond_5d

    .line 80
    iget-object v1, p0, Landroidx/collection/b;->a:[I

    .line 82
    add-int/lit8 v4, v2, 0x1

    .line 84
    sub-int v5, v0, v2

    .line 86
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 91
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :cond_5d
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 96
    if-ne v0, v1, :cond_71

    .line 98
    iget-object v0, p0, Landroidx/collection/b;->a:[I

    .line 100
    array-length v4, v0

    .line 101
    if-ge v2, v4, :cond_71

    .line 103
    aput v3, v0, v2

    .line 105
    iget-object v0, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 107
    aput-object p1, v0, v2

    .line 109
    const/4 p1, 0x1

    .line 110
    add-int/2addr v1, p1

    .line 111
    iput v1, p0, Landroidx/collection/b;->c:I

    .line 113
    return p1

    .line 114
    :cond_71
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 116
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 119
    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 10
    iget-object v2, p0, Landroidx/collection/b;->a:[I

    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ge v3, v1, :cond_29

    .line 16
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 18
    invoke-virtual {p0, v1}, Landroidx/collection/b;->a(I)V

    .line 21
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 23
    if-lez v1, :cond_24

    .line 25
    iget-object v5, p0, Landroidx/collection/b;->a:[I

    .line 27
    invoke-static {v2, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object v1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 32
    iget v5, p0, Landroidx/collection/b;->c:I

    .line 34
    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_24
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 39
    invoke-static {v2, v3, v1}, Landroidx/collection/b;->b([I[Ljava/lang/Object;I)V

    .line 42
    :cond_29
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 44
    if-ne v1, v0, :cond_42

    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_41

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    or-int/2addr v4, v0

    .line 65
    goto :goto_31

    .line 66
    :cond_41
    return v4

    .line 67
    :cond_42
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 69
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 72
    throw p1
.end method

.method public final c(Ljava/lang/Object;I)I
    .registers 8

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroidx/collection/b;->a:[I

    .line 9
    invoke-static {v2, v0, p2}, La/b;->h([III)I

    .line 12
    move-result v2
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_c} :catch_4b

    .line 13
    if-gez v2, :cond_f

    .line 15
    return v2

    .line 16
    :cond_f
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 18
    aget-object v3, v3, v2

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    .line 29
    :goto_1c
    if-ge v3, v0, :cond_32

    .line 31
    iget-object v4, p0, Landroidx/collection/b;->a:[I

    .line 33
    aget v4, v4, v3

    .line 35
    if-ne v4, p2, :cond_32

    .line 37
    iget-object v4, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 39
    aget-object v4, v4, v3

    .line 41
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2f

    .line 47
    return v3

    .line 48
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_1c

    .line 51
    :cond_32
    add-int/2addr v2, v1

    .line 52
    :goto_33
    if-ltz v2, :cond_49

    .line 54
    iget-object v0, p0, Landroidx/collection/b;->a:[I

    .line 56
    aget v0, v0, v2

    .line 58
    if-ne v0, p2, :cond_49

    .line 60
    iget-object v0, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 62
    aget-object v0, v0, v2

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_46

    .line 70
    return v2

    .line 71
    :cond_46
    add-int/lit8 v2, v2, -0x1

    .line 73
    goto :goto_33

    .line 74
    :cond_49
    not-int p1, v3

    .line 75
    return p1

    .line 76
    :catch_4b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 78
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 81
    throw p1
.end method

.method public final clear()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v1, p0, Landroidx/collection/b;->a:[I

    .line 7
    iget-object v2, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 9
    sget-object v3, La/b;->a:[I

    .line 11
    iput-object v3, p0, Landroidx/collection/b;->a:[I

    .line 13
    sget-object v3, La/b;->c:[Ljava/lang/Object;

    .line 15
    iput-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p0, Landroidx/collection/b;->c:I

    .line 20
    invoke-static {v1, v2, v0}, Landroidx/collection/b;->b([I[Ljava/lang/Object;I)V

    .line 23
    :cond_16
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 25
    if-nez v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 30
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 33
    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0}, Landroidx/collection/b;->d()I

    .line 6
    move-result p1

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/collection/b;->c(Ljava/lang/Object;I)I

    .line 15
    move-result p1

    .line 16
    :goto_f
    if-ltz p1, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/collection/b;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final d()I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v2, 0x0

    .line 8
    :try_start_7
    iget-object v3, p0, Landroidx/collection/b;->a:[I

    .line 10
    invoke-static {v3, v0, v2}, La/b;->h([III)I

    .line 13
    move-result v2
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_d} :catch_40

    .line 14
    if-gez v2, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 19
    aget-object v3, v3, v2

    .line 21
    if-nez v3, :cond_17

    .line 23
    return v2

    .line 24
    :cond_17
    add-int/lit8 v3, v2, 0x1

    .line 26
    :goto_19
    if-ge v3, v0, :cond_2b

    .line 28
    iget-object v4, p0, Landroidx/collection/b;->a:[I

    .line 30
    aget v4, v4, v3

    .line 32
    if-nez v4, :cond_2b

    .line 34
    iget-object v4, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 36
    aget-object v4, v4, v3

    .line 38
    if-nez v4, :cond_28

    .line 40
    return v3

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_19

    .line 44
    :cond_2b
    add-int/2addr v2, v1

    .line 45
    :goto_2c
    if-ltz v2, :cond_3e

    .line 47
    iget-object v0, p0, Landroidx/collection/b;->a:[I

    .line 49
    aget v0, v0, v2

    .line 51
    if-nez v0, :cond_3e

    .line 53
    iget-object v0, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 55
    aget-object v0, v0, v2

    .line 57
    if-nez v0, :cond_3b

    .line 59
    return v2

    .line 60
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    .line 62
    goto :goto_2c

    .line 63
    :cond_3e
    not-int v0, v3

    .line 64
    return v0

    .line 65
    :catch_40
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 67
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 70
    throw v0
.end method

.method public final e(I)V
    .registers 9

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    iget-object v1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 5
    aget-object v2, v1, p1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-gt v0, v2, :cond_d

    .line 10
    invoke-virtual {p0}, Landroidx/collection/b;->clear()V

    .line 13
    goto :goto_5b

    .line 14
    :cond_d
    add-int/lit8 v2, v0, -0x1

    .line 16
    iget-object v3, p0, Landroidx/collection/b;->a:[I

    .line 18
    array-length v4, v3

    .line 19
    const/16 v5, 0x8

    .line 21
    if-le v4, v5, :cond_42

    .line 23
    array-length v4, v3

    .line 24
    div-int/lit8 v4, v4, 0x3

    .line 26
    if-ge v0, v4, :cond_42

    .line 28
    if-le v0, v5, :cond_21

    .line 30
    shr-int/lit8 v4, v0, 0x1

    .line 32
    add-int v5, v0, v4

    .line 34
    :cond_21
    invoke-virtual {p0, v5}, Landroidx/collection/b;->a(I)V

    .line 37
    if-lez p1, :cond_31

    .line 39
    iget-object v4, p0, Landroidx/collection/b;->a:[I

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static {v3, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v4, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 47
    invoke-static {v1, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :cond_31
    if-ge p1, v2, :cond_55

    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 54
    iget-object v5, p0, Landroidx/collection/b;->a:[I

    .line 56
    sub-int v6, v2, p1

    .line 58
    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 63
    invoke-static {v1, v4, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    goto :goto_55

    .line 67
    :cond_42
    if-ge p1, v2, :cond_50

    .line 69
    add-int/lit8 v1, p1, 0x1

    .line 71
    sub-int v4, v2, p1

    .line 73
    invoke-static {v3, v1, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 78
    invoke-static {v3, v1, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_50
    iget-object p1, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    .line 84
    aput-object v1, p1, v2

    .line 86
    :cond_55
    :goto_55
    iget p1, p0, Landroidx/collection/b;->c:I

    .line 88
    if-ne v0, p1, :cond_5c

    .line 90
    iput v2, p0, Landroidx/collection/b;->c:I

    .line 92
    :goto_5b
    return-void

    .line 93
    :cond_5c
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 95
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 98
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_28

    .line 10
    check-cast p1, Ljava/util/Set;

    .line 12
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 17
    move-result v3

    .line 18
    if-eq v1, v3, :cond_14

    .line 20
    return v2

    .line 21
    :cond_14
    move v1, v2

    .line 22
    :goto_15
    :try_start_15
    iget v3, p0, Landroidx/collection/b;->c:I

    .line 24
    if-ge v1, v3, :cond_27

    .line 26
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 28
    aget-object v3, v3, v1

    .line 30
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v3
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_21} :catch_28
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_21} :catch_28

    .line 34
    if-nez v3, :cond_24

    .line 36
    return v2

    .line 37
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    return v0

    .line 41
    :catch_28
    :cond_28
    return v2
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/collection/b;->a:[I

    .line 3
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_6
    if-ge v2, v1, :cond_e

    .line 9
    aget v4, v0, v2

    .line 11
    add-int/2addr v3, v4

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_6

    .line 15
    :cond_e
    return v3
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    if-gtz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/b$a;

    .line 3
    invoke-direct {v0, p0}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 6
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0}, Landroidx/collection/b;->d()I

    .line 6
    move-result p1

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/collection/b;->c(Ljava/lang/Object;I)I

    .line 15
    move-result p1

    .line 16
    :goto_f
    if-ltz p1, :cond_16

    .line 18
    invoke-virtual {p0, p1}, Landroidx/collection/b;->e(I)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_15

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    goto :goto_5

    .line 22
    :cond_15
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_5
    if-ltz v0, :cond_18

    .line 8
    iget-object v3, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 10
    aget-object v3, v3, v0

    .line 12
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_15

    .line 18
    invoke-virtual {p0, v0}, Landroidx/collection/b;->e(I)V

    .line 21
    move v2, v1

    .line 22
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_5

    .line 25
    :cond_18
    return v2
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    .line 3
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Landroidx/collection/b;->c:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    array-length v0, p1

    iget v1, p0, Landroidx/collection/b;->c:I

    if-ge v0, v1, :cond_15

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroidx/collection/b;->c:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 5
    :cond_15
    iget-object v0, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/b;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v0, p1

    iget v1, p0, Landroidx/collection/b;->c:I

    if-le v0, v1, :cond_25

    const/4 v0, 0x0

    .line 7
    aput-object v0, p1, v1

    :cond_25
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/collection/b;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "{}"

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Landroidx/collection/b;->c:I

    .line 14
    mul-int/lit8 v1, v1, 0xe

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    const/16 v1, 0x7b

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    iget v2, p0, Landroidx/collection/b;->c:I

    .line 27
    if-ge v1, v2, :cond_35

    .line 29
    if-lez v1, :cond_23

    .line 31
    const-string v2, ", "

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_23
    iget-object v2, p0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 38
    aget-object v2, v2, v1

    .line 40
    if-eq v2, p0, :cond_2d

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    goto :goto_32

    .line 46
    :cond_2d
    const-string v2, "(this Set)"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_32
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_18

    .line 54
    :cond_35
    const/16 v1, 0x7d

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
