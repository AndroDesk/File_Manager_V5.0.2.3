.class Ljcifs/UniAddress$QueryThread;
.super Ljava/lang/Thread;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryThread"
.end annotation


# instance fields
.field public ans:Ljcifs/netbios/NbtAddress;

.field public host:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public sem:Ljcifs/UniAddress$Sem;

.field public svr:Ljava/net/InetAddress;

.field public type:I

.field public uhe:Ljava/net/UnknownHostException;


# direct methods
.method public constructor <init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "JCIFS-QueryThread: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 21
    iput-object p1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 23
    iput-object p2, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    .line 25
    iput p3, p0, Ljcifs/UniAddress$QueryThread;->type:I

    .line 27
    iput-object p4, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    .line 3
    iget v1, p0, Ljcifs/UniAddress$QueryThread;->type:I

    .line 5
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_e} :catch_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_23
    .catchall {:try_start_0 .. :try_end_e} :catchall_21

    .line 15
    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_11
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 20
    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 24
    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 29
    monitor-exit v0

    .line 30
    goto :goto_54

    .line 31
    :catchall_1e
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    .line 33
    throw v1

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    goto :goto_58

    .line 36
    :catch_23
    move-exception v0

    .line 37
    :try_start_24
    new-instance v1, Ljava/net/UnknownHostException;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_21

    .line 48
    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_32
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 53
    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 57
    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v0

    .line 63
    goto :goto_54

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    .line 66
    throw v1

    .line 67
    :catch_42
    move-exception v0

    .line 68
    :try_start_43
    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_21

    .line 70
    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 72
    monitor-enter v0

    .line 73
    :try_start_48
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 75
    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 77
    add-int/lit8 v2, v2, -0x1

    .line 79
    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 84
    monitor-exit v0

    .line 85
    :goto_54
    return-void

    .line 86
    :catchall_55
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_55

    .line 88
    throw v1

    .line 89
    :goto_58
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 91
    monitor-enter v1

    .line 92
    :try_start_5b
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 94
    iget v3, v2, Ljcifs/UniAddress$Sem;->count:I

    .line 96
    add-int/lit8 v3, v3, -0x1

    .line 98
    iput v3, v2, Ljcifs/UniAddress$Sem;->count:I

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_68

    .line 104
    throw v0

    .line 105
    :catchall_68
    move-exception v0

    .line 106
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .line 107
    throw v0
.end method
