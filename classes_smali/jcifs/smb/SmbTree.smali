.class Ljcifs/smb/SmbTree;
.super Ljava/lang/Object;
.source "SmbTree.java"


# static fields
.field private static tree_conn_counter:I


# instance fields
.field public connectionState:I

.field public inDfs:Z

.field public inDomainDfs:Z

.field public service:Ljava/lang/String;

.field public service0:Ljava/lang/String;

.field public session:Ljcifs/smb/SmbSession;

.field public share:Ljava/lang/String;

.field public tid:I

.field public tree_num:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "?????"

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    if-eqz p3, :cond_1b

    const-string p1, "??"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    iput-object p3, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    :cond_1b
    iget-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_f

    check-cast p1, Ljcifs/smb/SmbTree;

    iget-object v0, p1, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1a

    const-string p1, "??"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 7

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_c

    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p1, :cond_f9

    if-eqz p2, :cond_19

    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v1, :cond_19

    goto/16 :goto_f9

    :cond_19
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v2, "A:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-byte v1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v2, -0x5e

    if-eq v1, v2, :cond_9a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x25

    if-eq v1, v2, :cond_59

    const/16 v2, 0x32

    if-eq v1, v2, :cond_59

    const/16 v2, 0x71

    if-eq v1, v2, :cond_9a

    packed-switch v1, :pswitch_data_fe

    new-instance p2, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid operation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_59
    move-object v1, p1

    check-cast v1, Ljcifs/smb/SmbComTransaction;

    iget-byte v1, v1, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_9a

    const/16 v2, 0x10

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x23

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x26

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x68

    if-eq v1, v2, :cond_9a

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x53

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x54

    if-ne v1, v2, :cond_7f

    goto :goto_9a

    :cond_7f
    new-instance p1, Ljcifs/smb/SmbException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid operation for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    :goto_9a
    :pswitch_9a  #0x2d, 0x2e, 0x2f
    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->tid:I

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    if-eqz v1, :cond_e3

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v2, "IPC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e3

    const/16 v1, 0x1000

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v3}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v3

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;
    :try_end_e3
    .catchall {:try_start_a .. :try_end_e3} :catchall_fb

    :cond_e3
    :try_start_e3
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_e8
    .catch Ljcifs/smb/SmbException; {:try_start_e3 .. :try_end_e8} :catch_ea
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_fb

    :try_start_e8
    monitor-exit v0

    return-void

    :catch_ea
    move-exception p1

    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result p2

    const v1, -0x3fffff37  # -2.000048f

    if-ne p2, v1, :cond_f8

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    :cond_f8
    throw p1

    :cond_f9
    :goto_f9
    monitor-exit v0

    return-void

    :catchall_fb
    move-exception p1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_fb

    throw p1

    :pswitch_data_fe
    .packed-switch 0x2d
        :pswitch_9a  #0000002d
        :pswitch_9a  #0000002e
        :pswitch_9a  #0000002f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmbTree[share="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",inDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",inDomainDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    :goto_7
    :try_start_7
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v2, 0x2

    if-nez v1, :cond_93

    const/4 v1, 0x1

    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_af

    :try_start_f
    iget-object v3, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3}, Ljcifs/smb/SmbTransport;->connect()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\\\"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_60

    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "treeConnect: unc="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_60
    new-instance v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;

    invoke-direct {v4, p2}, Ljcifs/smb/SmbComTreeConnectAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    new-instance p2, Ljcifs/smb/SmbComTreeConnectAndX;

    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v6, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-direct {p2, v5, v3, v6, p1}, Ljcifs/smb/SmbComTreeConnectAndX;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V

    iget-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {p1, p2, v4}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, v4, Ljcifs/smb/ServerMessageBlock;->tid:I

    iput p1, p0, Ljcifs/smb/SmbTree;->tid:I

    iget-object p1, v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iget-boolean p1, v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    sget p1, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    iput p1, p0, Ljcifs/smb/SmbTree;->tree_num:I

    iput v2, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_89
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_89} :catch_8b
    .catchall {:try_start_f .. :try_end_89} :catchall_af

    :try_start_89
    monitor-exit v0

    return-void

    :catch_8b
    move-exception p1

    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    const/4 p2, 0x0

    iput p2, p0, Ljcifs/smb/SmbTree;->connectionState:I

    throw p1
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_af

    :cond_93
    if-eq v1, v2, :cond_ad

    const/4 v2, 0x3

    if-ne v1, v2, :cond_99

    goto :goto_ad

    :cond_99
    :try_start_99
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_a0} :catch_a2
    .catchall {:try_start_99 .. :try_end_a0} :catchall_af

    goto/16 :goto_7

    :catch_a2
    move-exception p1

    :try_start_a3
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_ad
    :goto_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_af

    throw p1
.end method

.method public treeDisconnect(Z)V
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x3

    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-nez p1, :cond_32

    iget p1, p0, Ljcifs/smb/SmbTree;->tid:I
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_42

    if-eqz p1, :cond_32

    :try_start_17
    new-instance p1, Ljcifs/smb/SmbComTreeDisconnect;

    invoke-direct {p1}, Ljcifs/smb/SmbComTreeDisconnect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_20
    .catch Ljcifs/smb/SmbException; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_42

    goto :goto_32

    :catch_21
    move-exception p1

    :try_start_22
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_32

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_32
    :goto_32
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iput p1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    iget-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_42

    throw p1
.end method
