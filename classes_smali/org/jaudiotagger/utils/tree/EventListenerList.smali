.class public Lorg/jaudiotagger/utils/tree/EventListenerList;
.super Ljava/lang/Object;
.source "EventListenerList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_ARRAY:[Ljava/lang/Object;


# instance fields
.field public transient listenerList:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sput-object v0, Lorg/jaudiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lorg/jaudiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_10

    .line 5
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Class;

    if-ne p2, v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_10
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 8
    :goto_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_26

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/EventListener;

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0, v2}, Lorg/jaudiotagger/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 38
    goto :goto_7

    .line 39
    :cond_26
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, v0

    .line 8
    if-ge v1, v2, :cond_26

    .line 10
    aget-object v2, v0, v1

    .line 12
    check-cast v2, Ljava/lang/Class;

    .line 14
    add-int/lit8 v3, v1, 0x1

    .line 16
    aget-object v3, v0, v3

    .line 18
    check-cast v3, Ljava/util/EventListener;

    .line 20
    if-eqz v3, :cond_23

    .line 22
    instance-of v4, v3, Ljava/io/Serializable;

    .line 24
    if-eqz v4, :cond_23

    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 36
    :cond_23
    add-int/lit8 v1, v1, 0x2

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Class;Ljava/util/EventListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2e

    .line 12
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 14
    sget-object v1, Lorg/jaudiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v0, v1, :cond_1d

    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    aput-object p1, v0, v3

    .line 25
    aput-object p2, v0, v2

    .line 27
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    array-length v1, v0

    .line 31
    add-int/lit8 v4, v1, 0x2

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    aput-object p1, v4, v1

    .line 40
    add-int/2addr v1, v2

    .line 41
    aput-object p2, v4, v1

    .line 43
    iput-object v4, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_4d

    .line 45
    :goto_2c
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v2, "Listener "

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string p2, " is not of type "

    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_4d

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public getListenerCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getListenerCount(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public getListenerList()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, [Ljava/util/EventListener;

    .line 13
    check-cast v1, [Ljava/util/EventListener;

    .line 15
    array-length v2, v0

    .line 16
    add-int/lit8 v2, v2, -0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-ltz v2, :cond_26

    .line 21
    aget-object v4, v0, v2

    .line 23
    if-ne v4, p1, :cond_23

    .line 25
    add-int/lit8 v4, v3, 0x1

    .line 27
    add-int/lit8 v5, v2, 0x1

    .line 29
    aget-object v5, v0, v5

    .line 31
    check-cast v5, Ljava/util/EventListener;

    .line 33
    aput-object v5, v1, v3

    .line 35
    move v3, v4

    .line 36
    :cond_23
    add-int/lit8 v2, v2, -0x2

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    return-object v1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;Ljava/util/EventListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_49

    .line 12
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 14
    array-length v0, v0

    .line 15
    add-int/lit8 v0, v0, -0x2

    .line 17
    :goto_10
    const/4 v1, -0x1

    .line 18
    if-ltz v0, :cond_28

    .line 20
    iget-object v2, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 22
    aget-object v3, v2, v0

    .line 24
    if-ne v3, p1, :cond_25

    .line 26
    add-int/lit8 v3, v0, 0x1

    .line 28
    aget-object v2, v2, v3

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v2, v3, :cond_25

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    add-int/lit8 v0, v0, -0x2

    .line 40
    goto :goto_10

    .line 41
    :cond_28
    move v0, v1

    .line 42
    :goto_29
    if-eq v0, v1, :cond_47

    .line 44
    iget-object p1, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 46
    array-length p2, p1

    .line 47
    add-int/lit8 p2, p2, -0x2

    .line 49
    new-array v1, p2, [Ljava/lang/Object;

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    if-ge v0, p2, :cond_41

    .line 57
    iget-object p1, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 59
    add-int/lit8 v2, v0, 0x2

    .line 61
    sub-int v3, p2, v0

    .line 63
    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_41
    if-nez p2, :cond_45

    .line 68
    sget-object v1, Lorg/jaudiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    .line 70
    :cond_45
    iput-object v1, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_68

    .line 72
    :cond_47
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :cond_49
    :try_start_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v2, "Listener "

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string p2, " is not of type "

    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_68

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    const-string v1, "EventListenerList: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    array-length v2, v0

    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " listeners: "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_18
    array-length v3, v0

    .line 26
    add-int/lit8 v3, v3, -0x2

    .line 28
    if-gt v2, v3, :cond_46

    .line 30
    const-string v3, " type "

    .line 32
    invoke-static {v1, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v1

    .line 36
    aget-object v3, v0, v2

    .line 38
    check-cast v3, Ljava/lang/Class;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    const-string v3, " listener "

    .line 53
    invoke-static {v1, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v1

    .line 57
    add-int/lit8 v3, v2, 0x1

    .line 59
    aget-object v3, v0, v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    add-int/lit8 v2, v2, 0x2

    .line 70
    goto :goto_18

    .line 71
    :cond_46
    return-object v1
.end method
