.class public Lorg/jaudiotagger/EventListenerList;
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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/jaudiotagger/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jaudiotagger/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    return-void
.end method

.method private getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_10

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

    sget-object v0, Lorg/jaudiotagger/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/jaudiotagger/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    goto :goto_7

    :cond_26
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_26

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/util/EventListener;

    if-eqz v3, :cond_23

    instance-of v4, v3, Ljava/io/Serializable;

    if-eqz v4, :cond_23

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

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

    monitor-enter p0

    if-nez p2, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    sget-object v1, Lorg/jaudiotagger/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    iput-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    goto :goto_2c

    :cond_1d
    array-length v1, v0

    add-int/lit8 v4, v1, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v4, v1

    add-int/2addr v1, v2

    aput-object p2, v4, v1

    iput-object v4, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_4d

    :goto_2c
    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getListenerCount()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public getListenerList()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;

    check-cast v1, [Ljava/util/EventListener;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    :goto_12
    if-ltz v2, :cond_26

    aget-object v4, v0, v2

    if-ne v4, p1, :cond_23

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v0, v5

    check-cast v5, Ljava/util/EventListener;

    aput-object v5, v1, v3

    move v3, v4

    :cond_23
    add-int/lit8 v2, v2, -0x2

    goto :goto_12

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

    monitor-enter p0

    if-nez p2, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_10
    const/4 v1, -0x1

    if-ltz v0, :cond_28

    iget-object v2, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_25

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    goto :goto_29

    :cond_25
    add-int/lit8 v0, v0, -0x2

    goto :goto_10

    :cond_28
    move v0, v1

    :goto_29
    if-eq v0, v1, :cond_47

    iget-object p1, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, p2, :cond_41

    iget-object p1, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    sub-int v3, p2, v0

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    if-nez p2, :cond_45

    sget-object v1, Lorg/jaudiotagger/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    :cond_45
    iput-object v1, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_68

    :cond_47
    monitor-exit p0

    return-void

    :cond_49
    :try_start_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/EventListenerList;->listenerList:[Ljava/lang/Object;

    const-string v1, "EventListenerList: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_18
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-gt v2, v3, :cond_46

    const-string v3, " type "

    invoke-static {v1, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, " listener "

    invoke-static {v1, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_18

    :cond_46
    return-object v1
.end method
