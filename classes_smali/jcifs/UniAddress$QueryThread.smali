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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JCIFS-QueryThread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    iput-object p1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iput-object p2, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    iput p3, p0, Ljcifs/UniAddress$QueryThread;->type:I

    iput-object p4, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    iput-object p5, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    iget v1, p0, Ljcifs/UniAddress$QueryThread;->type:I

    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, v3}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_e} :catch_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_23
    .catchall {:try_start_0 .. :try_end_e} :catchall_21

    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_54

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw v1

    :catchall_21
    move-exception v0

    goto :goto_58

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_21

    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v0

    :try_start_32
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_54

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    throw v1

    :catch_42
    move-exception v0

    :try_start_43
    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_21

    iget-object v0, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v0

    :try_start_48
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v2, v1, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljcifs/UniAddress$Sem;->count:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    :goto_54
    return-void

    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_55

    throw v1

    :goto_58
    iget-object v1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v1

    :try_start_5b
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v3, v2, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljcifs/UniAddress$Sem;->count:I

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_68

    throw v0

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method
