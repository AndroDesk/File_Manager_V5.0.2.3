.class public final Lio/reactivex/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lio/reactivex/exceptions/CompositeException$c;,
        Lio/reactivex/exceptions/CompositeException$b;,
        Lio/reactivex/exceptions/CompositeException$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29ffcc6947b49592L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3e

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 8
    instance-of v3, v2, Lio/reactivex/exceptions/CompositeException;

    if-eqz v3, :cond_2d

    .line 9
    check-cast v2, Lio/reactivex/exceptions/CompositeException;

    invoke-virtual {v2}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_2d
    if-eqz v2, :cond_33

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 11
    :cond_33
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Throwable was null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 12
    :cond_3e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v2, "errors was null"

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_48
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6f

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceptions occurred. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/exceptions/CompositeException;->message:Ljava/lang/String;

    return-void

    .line 17
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "errors is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_e

    .line 1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "exceptions was null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_12
    invoke-direct {p0, p1}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    const/16 p2, 0xa

    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_23

    .line 20
    aget-object v3, v0, v2

    .line 22
    const-string v4, "\t\tat "

    .line 24
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_11

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_37

    .line 42
    const-string p2, "\tCaused by: "

    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 50
    move-result-object p1

    .line 51
    const-string p2, ""

    .line 53
    invoke-static {p0, p1, p2}, Lio/reactivex/exceptions/CompositeException;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    :cond_37
    return-void
.end method


# virtual methods
.method public final b(Lio/reactivex/exceptions/CompositeException$a;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const/16 v1, 0xa

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_15
    if-ge v4, v3, :cond_27

    .line 24
    aget-object v5, v2, v4

    .line 26
    const-string v6, "\tat "

    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    iget-object v1, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x1

    .line 47
    move v3, v2

    .line 48
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4f

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Throwable;

    .line 60
    const-string v5, "  ComposedException "

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, " :\n"

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v5, "\t"

    .line 75
    invoke-static {v0, v4, v5}, Lio/reactivex/exceptions/CompositeException;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 78
    add-int/2addr v3, v2

    .line 79
    goto :goto_2f

    .line 80
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lio/reactivex/exceptions/CompositeException$a;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 4
    if-nez v0, :cond_87

    .line 6
    new-instance v0, Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;

    .line 8
    invoke-direct {v0}, Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    iget-object v2, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    move-object v3, v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_85

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Throwable;

    .line 35
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_29

    .line 41
    goto :goto_16

    .line 42
    :cond_29
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_48

    .line 56
    if-ne v6, v4, :cond_3a

    .line 58
    goto :goto_48

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_48

    .line 68
    if-ne v7, v6, :cond_46

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    move-object v6, v7

    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    :goto_48
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v5

    .line 77
    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_6a

    .line 83
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/Throwable;

    .line 89
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_66

    .line 95
    new-instance v4, Ljava/lang/RuntimeException;

    .line 97
    const-string v6, "Duplicate found in causal chain so cropping to prevent loop ..."

    .line 99
    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    goto :goto_4c

    .line 103
    :cond_66
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_8b

    .line 106
    goto :goto_4c

    .line 107
    :cond_6a
    :try_start_6a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_16

    .line 116
    iget-object v5, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 118
    if-ne v5, v4, :cond_78

    .line 120
    goto :goto_16

    .line 121
    :cond_78
    :goto_78
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_83

    .line 127
    if-ne v3, v4, :cond_81

    .line 129
    goto :goto_83

    .line 130
    :cond_81
    move-object v4, v3

    .line 131
    goto :goto_78

    .line 132
    :cond_83
    :goto_83
    move-object v3, v4

    .line 133
    goto :goto_16

    .line 134
    :cond_85
    iput-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 136
    :cond_87
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_8b

    .line 138
    monitor-exit p0

    .line 139
    return-object v0

    .line 140
    :catchall_8b
    move-exception v0

    .line 141
    monitor-exit p0

    .line 142
    throw v0
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lio/reactivex/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    .line 2
    new-instance v0, Lio/reactivex/exceptions/CompositeException$b;

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException$b;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {p0, v0}, Lio/reactivex/exceptions/CompositeException;->b(Lio/reactivex/exceptions/CompositeException$a;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .line 3
    new-instance v0, Lio/reactivex/exceptions/CompositeException$c;

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException$c;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lio/reactivex/exceptions/CompositeException;->b(Lio/reactivex/exceptions/CompositeException$a;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
