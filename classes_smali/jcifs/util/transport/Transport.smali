.class public abstract Ljcifs/util/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static id:I

.field public static log:Ljcifs/util/LogStream;


# instance fields
.field public name:Ljava/lang/String;

.field public response_map:Ljava/util/HashMap;

.field public state:I

.field public te:Ljcifs/util/transport/TransportException;

.field public thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Ljcifs/util/transport/Transport;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljcifs/util/transport/Transport;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    return-void
.end method

.method private loop()V
    .registers 5

    :goto_0
    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v1

    if-eqz v1, :cond_38

    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_40

    :try_start_11
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/util/transport/Response;

    if-nez v1, :cond_2b

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_27

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    const-string v2, "Invalid key, skipping message"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    goto :goto_33

    :cond_2b
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    iput-boolean v0, v1, Ljcifs/util/transport/Response;->isReceived:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :goto_33
    monitor-exit p0

    goto :goto_0

    :catchall_35
    move-exception v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1

    :cond_38
    new-instance v1, Ljava/io/IOException;

    const-string v2, "end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_40

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    const-string v3, "Read timed out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    xor-int/lit8 v2, v0, 0x1

    if-nez v0, :cond_5f

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_5f

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5f
    :try_start_5f
    invoke-virtual {p0, v2}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_0

    :catch_63
    move-exception v0

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    goto :goto_e

    :cond_4
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/2addr v0, v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .registers 10

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6
    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v5, :cond_32

    if-eq v5, v1, :cond_83

    if-eq v5, v0, :cond_26

    new-instance p1, Ljcifs/util/transport/TransportException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid state: "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    throw p1

    :cond_26
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    new-instance p1, Ljcifs/util/transport/TransportException;

    const-string p2, "Connection in error"

    iget-object v5, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    invoke-direct {p1, p2, v5}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_32
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_45} :catch_c0
    .catchall {:try_start_6 .. :try_end_45} :catchall_be

    :try_start_45
    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v2, :cond_af

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7c

    monitor-exit v5
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_bb

    if-eqz p1, :cond_7a

    if-eq p1, v1, :cond_7a

    if-eq p1, v0, :cond_7a

    :try_start_5d
    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_76

    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_76
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_f1

    :cond_7a
    monitor-exit p0

    return-void

    :cond_7c
    :try_start_7c
    iget-object p1, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    if-nez p1, :cond_aa

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_bb

    :cond_83
    :try_start_83
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p1, :cond_a8

    if-eq p1, v1, :cond_a8

    if-eq p1, v0, :cond_a8

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_a4

    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a4
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_f1

    :cond_a8
    monitor-exit p0

    return-void

    :cond_aa
    :try_start_aa
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    throw p1

    :cond_af
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    new-instance p1, Ljcifs/util/transport/TransportException;

    const-string p2, "Connection timeout"

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_bb
    move-exception p1

    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw p1
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_be} :catch_c0
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    :catchall_be
    move-exception p1

    goto :goto_cb

    :catch_c0
    move-exception p1

    :try_start_c1
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    new-instance p2, Ljcifs/util/transport/TransportException;

    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_cb
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_be

    :goto_cb
    :try_start_cb
    iget p2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p2, :cond_f0

    if-eq p2, v1, :cond_f0

    if-eq p2, v0, :cond_f0

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v2, :cond_ec

    sget-object p2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ec
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    :cond_f0
    throw p1
    :try_end_f1
    .catchall {:try_start_cb .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v0, :cond_4b

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3e

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v3, :cond_2a

    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2a
    iput-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    goto :goto_46

    :cond_2f
    move p1, v3

    :cond_30
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_4d

    if-eqz v0, :cond_3b

    if-nez p1, :cond_3b

    goto :goto_46

    :cond_3b
    :try_start_3b
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    :cond_3e
    move-object p1, v4

    goto :goto_41

    :catch_40
    move-exception p1

    :goto_41
    :try_start_41
    iput-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4d

    move-object v4, p1

    :goto_46
    if-nez v4, :cond_4a

    monitor-exit p0

    return-void

    :cond_4a
    :try_start_4a
    throw v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4d

    :cond_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract doConnect()V
.end method

.method public abstract doDisconnect(Z)V
.end method

.method public abstract doRecv(Ljcifs/util/transport/Response;)V
.end method

.method public abstract doSend(Ljcifs/util/transport/Request;)V
.end method

.method public abstract doSkip()V
.end method

.method public abstract makeKey(Ljcifs/util/transport/Request;)V
.end method

.method public abstract peekKey()Ljcifs/util/transport/Request;
.end method

.method public run()V
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x2

    :try_start_5
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doConnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_2e
    .catchall {:try_start_5 .. :try_end_8} :catchall_1c

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v2, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    return-void

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1

    :catchall_1c
    move-exception v2

    monitor-enter v0

    :try_start_1e
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v3, :cond_24

    monitor-exit v0

    return-void

    :cond_24
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2b

    throw v2

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1

    :catch_2e
    move-exception v2

    monitor-enter v0

    :try_start_30
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v3, :cond_3f

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_3d

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3d
    monitor-exit v0

    return-void

    :cond_3f
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public declared-synchronized sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->makeKey(Ljcifs/util/transport/Request;)V

    const/4 v0, 0x0

    iput-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_75

    :try_start_7
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doSend(Ljcifs/util/transport/Request;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p2, Ljcifs/util/transport/Response;->expiration:J

    :goto_16
    iget-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_18} :catch_51
    .catchall {:try_start_7 .. :try_end_18} :catchall_4f

    if-eqz v0, :cond_21

    :try_start_1a
    iget-object p2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_75

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-wide p3, p2, Ljcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_32

    goto :goto_16

    :cond_32
    new-instance p2, Ljcifs/util/transport/TransportException;

    new-instance p3, Ljava/lang/StringBuilder;

    iget-object p4, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " timedout waiting for response to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4f} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_4f} :catch_51
    .catchall {:try_start_21 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p2

    goto :goto_6f

    :catch_51
    move-exception p2

    :try_start_52
    new-instance p3, Ljcifs/util/transport/TransportException;

    invoke-direct {p3, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_58
    move-exception p2

    sget p3, Ljcifs/util/LogStream;->level:I

    const/4 p4, 0x2

    if-le p3, p4, :cond_63

    sget-object p3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_4f

    :cond_63
    const/4 p3, 0x1

    :try_start_64
    invoke-virtual {p0, p3}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_4f

    goto :goto_6e

    :catch_68
    move-exception p3

    :try_start_69
    sget-object p4, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_6e
    throw p2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_4f

    :goto_6f
    :try_start_6f
    iget-object p3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method
