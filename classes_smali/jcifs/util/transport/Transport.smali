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

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "Transport"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    sget v1, Ljcifs/util/transport/Transport;->id:I

    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 18
    sput v2, Ljcifs/util/transport/Transport;->id:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    iput-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private loop()V
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v0, 0x1

    .line 11
    :try_start_a
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_38

    .line 17
    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_40

    .line 18
    :try_start_11
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljcifs/util/transport/Response;

    .line 26
    if-nez v1, :cond_2b

    .line 28
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 30
    const/4 v2, 0x4

    .line 31
    if-lt v1, v2, :cond_27

    .line 33
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 35
    const-string v2, "Invalid key, skipping message"

    .line 37
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    :cond_27
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    .line 43
    goto :goto_33

    .line 44
    :cond_2b
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    .line 47
    iput-boolean v0, v1, Ljcifs/util/transport/Response;->isReceived:Z

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    :goto_33
    monitor-exit p0

    .line 53
    goto :goto_0

    .line 54
    :catchall_35
    move-exception v1

    .line 55
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_35

    .line 56
    :try_start_37
    throw v1

    .line 57
    :cond_38
    new-instance v1, Ljava/io/IOException;

    .line 59
    const-string v2, "end of stream"

    .line 61
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_40

    .line 65
    :catch_40
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_50

    .line 72
    const-string v3, "Read timed out"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_50

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    const/4 v0, 0x0

    .line 82
    :goto_51
    xor-int/lit8 v2, v0, 0x1

    .line 84
    if-nez v0, :cond_5f

    .line 86
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 88
    const/4 v3, 0x3

    .line 89
    if-lt v0, v3, :cond_5f

    .line 91
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 96
    :cond_5f
    :try_start_5f
    invoke-virtual {p0, v2}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 99
    goto :goto_0

    .line 100
    :catch_63
    move-exception v0

    .line 101
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 106
    goto :goto_0
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-lt v0, p3, :cond_4

    .line 4
    goto :goto_e

    .line 5
    :cond_4
    add-int v1, p2, v0

    .line 7
    sub-int v2, p3, v0

    .line 9
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_f

    .line 15
    :goto_e
    return v0

    .line 16
    :cond_f
    add-int/2addr v0, v1

    .line 17
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_6
    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    .line 9
    if-eqz v5, :cond_32

    .line 11
    if-eq v5, v1, :cond_83

    .line 13
    if-eq v5, v0, :cond_26

    .line 15
    new-instance p1, Ljcifs/util/transport/TransportException;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    const-string v5, "Invalid state: "

    .line 21
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    .line 26
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 36
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 38
    throw p1

    .line 39
    :cond_26
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 41
    new-instance p1, Ljcifs/util/transport/TransportException;

    .line 43
    const-string p2, "Connection in error"

    .line 45
    iget-object v5, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 47
    invoke-direct {p1, p2, v5}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    throw p1

    .line 51
    :cond_32
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 53
    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 55
    new-instance v5, Ljava/lang/Thread;

    .line 57
    iget-object v6, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 59
    invoke-direct {v5, p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    iput-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 67
    iget-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 69
    monitor-enter v5
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_45} :catch_c0
    .catchall {:try_start_6 .. :try_end_45} :catchall_be

    .line 70
    :try_start_45
    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 72
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 75
    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 77
    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 80
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 82
    if-eq p1, v2, :cond_af

    .line 84
    const/4 p2, 0x2

    .line 85
    if-eq p1, p2, :cond_7c

    .line 87
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_bb

    .line 88
    if-eqz p1, :cond_7a

    .line 90
    if-eq p1, v1, :cond_7a

    .line 92
    if-eq p1, v0, :cond_7a

    .line 94
    :try_start_5d
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 96
    if-lt p1, v2, :cond_76

    .line 98
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "Invalid state: "

    .line 104
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_76
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 121
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_f1

    .line 123
    :cond_7a
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :cond_7c
    :try_start_7c
    iget-object p1, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 127
    if-nez p1, :cond_aa

    .line 129
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 131
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_bb

    .line 132
    :cond_83
    :try_start_83
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 134
    if-eqz p1, :cond_a8

    .line 136
    if-eq p1, v1, :cond_a8

    .line 138
    if-eq p1, v0, :cond_a8

    .line 140
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 142
    if-lt p1, v2, :cond_a4

    .line 144
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    const-string v0, "Invalid state: "

    .line 150
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 155
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :cond_a4
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 167
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_f1

    .line 169
    :cond_a8
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :cond_aa
    :try_start_aa
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 173
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 175
    throw p1

    .line 176
    :cond_af
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 178
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 180
    new-instance p1, Ljcifs/util/transport/TransportException;

    .line 182
    const-string p2, "Connection timeout"

    .line 184
    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1

    .line 188
    :catchall_bb
    move-exception p1

    .line 189
    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_bb

    .line 190
    :try_start_bd
    throw p1
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_be} :catch_c0
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 191
    :catchall_be
    move-exception p1

    .line 192
    goto :goto_cb

    .line 193
    :catch_c0
    move-exception p1

    .line 194
    :try_start_c1
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 198
    new-instance p2, Ljcifs/util/transport/TransportException;

    .line 200
    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    throw p2
    :try_end_cb
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_be

    .line 204
    :goto_cb
    :try_start_cb
    iget p2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 206
    if-eqz p2, :cond_f0

    .line 208
    if-eq p2, v1, :cond_f0

    .line 210
    if-eq p2, v0, :cond_f0

    .line 212
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 214
    if-lt p2, v2, :cond_ec

    .line 216
    sget-object p2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "Invalid state: "

    .line 222
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_ec
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 239
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 241
    :cond_f0
    throw p1
    :try_end_f1
    .catchall {:try_start_cb .. :try_end_f1} :catchall_f1

    .line 242
    :catchall_f1
    move-exception p1

    .line 243
    monitor-exit p0

    .line 244
    throw p1
.end method

.method public declared-synchronized disconnect(Z)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 4
    if-eqz v0, :cond_4b

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eq v0, v1, :cond_2f

    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_30

    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq v0, p1, :cond_3e

    .line 18
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 20
    if-lt p1, v3, :cond_2a

    .line 22
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "Invalid state: "

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :cond_2a
    iput-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 45
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 47
    goto :goto_46

    .line 48
    :cond_2f
    move p1, v3

    .line 49
    :cond_30
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 51
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 54
    move-result v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_4d

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    if-nez p1, :cond_3b

    .line 59
    goto :goto_46

    .line 60
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    .line 63
    :cond_3e
    move-object p1, v4

    .line 64
    goto :goto_41

    .line 65
    :catch_40
    move-exception p1

    .line 66
    :goto_41
    :try_start_41
    iput-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 68
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4d

    .line 70
    move-object v4, p1

    .line 71
    :goto_46
    if-nez v4, :cond_4a

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :cond_4a
    :try_start_4a
    throw v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4d

    .line 76
    :cond_4b
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
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

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doConnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_2e
    .catchall {:try_start_5 .. :try_end_8} :catchall_1c

    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 12
    if-eq v0, v2, :cond_f

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_f
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 22
    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw v1

    .line 29
    :catchall_1c
    move-exception v2

    .line 30
    monitor-enter v0

    .line 31
    :try_start_1e
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 33
    if-eq v0, v3, :cond_24

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_24
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 42
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2b

    .line 43
    throw v2

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .line 46
    throw v1

    .line 47
    :catch_2e
    move-exception v2

    .line 48
    monitor-enter v0

    .line 49
    :try_start_30
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 51
    if-eq v0, v3, :cond_3f

    .line 53
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 55
    if-lt v3, v1, :cond_3d

    .line 57
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 62
    :cond_3d
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :cond_3f
    new-instance v3, Ljcifs/util/transport/TransportException;

    .line 66
    invoke-direct {v3, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 71
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_4d
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_4d

    .line 80
    throw v1
.end method

.method public declared-synchronized sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->makeKey(Ljcifs/util/transport/Request;)V

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_75

    .line 8
    :try_start_7
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doSend(Ljcifs/util/transport/Request;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    add-long/2addr v0, p3

    .line 21
    iput-wide v0, p2, Ljcifs/util/transport/Response;->expiration:J

    .line 23
    :goto_16
    iget-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_18} :catch_51
    .catchall {:try_start_7 .. :try_end_18} :catchall_4f

    .line 25
    if-eqz v0, :cond_21

    .line 27
    :try_start_1a
    iget-object p2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_75

    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :cond_21
    :try_start_21
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 37
    iget-wide p3, p2, Ljcifs/util/transport/Response;->expiration:J

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v0

    .line 43
    sub-long/2addr p3, v0

    .line 44
    const-wide/16 v0, 0x0

    .line 46
    cmp-long v0, p3, v0

    .line 48
    if-lez v0, :cond_32

    .line 50
    goto :goto_16

    .line 51
    :cond_32
    new-instance p2, Ljcifs/util/transport/TransportException;

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    iget-object p4, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 57
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p4

    .line 61
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    const-string p4, " timedout waiting for response to "

    .line 66
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    invoke-direct {p2, p3}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4f} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_4f} :catch_51
    .catchall {:try_start_21 .. :try_end_4f} :catchall_4f

    .line 80
    :catchall_4f
    move-exception p2

    .line 81
    goto :goto_6f

    .line 82
    :catch_51
    move-exception p2

    .line 83
    :try_start_52
    new-instance p3, Ljcifs/util/transport/TransportException;

    .line 85
    invoke-direct {p3, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    throw p3

    .line 89
    :catch_58
    move-exception p2

    .line 90
    sget p3, Ljcifs/util/LogStream;->level:I

    .line 92
    const/4 p4, 0x2

    .line 93
    if-le p3, p4, :cond_63

    .line 95
    sget-object p3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_4f

    .line 100
    :cond_63
    const/4 p3, 0x1

    .line 101
    :try_start_64
    invoke-virtual {p0, p3}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_4f

    .line 104
    goto :goto_6e

    .line 105
    :catch_68
    move-exception p3

    .line 106
    :try_start_69
    sget-object p4, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    .line 108
    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 111
    :goto_6e
    throw p2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_4f

    .line 112
    :goto_6f
    :try_start_6f
    iget-object p3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 114
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    throw p2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_75

    .line 118
    :catchall_75
    move-exception p1

    .line 119
    monitor-exit p0

    .line 120
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method
