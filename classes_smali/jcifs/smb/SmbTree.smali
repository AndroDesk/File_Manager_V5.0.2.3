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
.method public constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "?????"

    .line 6
    iput-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 16
    if-eqz p3, :cond_1b

    .line 18
    const-string p1, "??"

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1b

    .line 26
    iput-object p3, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 28
    :cond_1b
    iget-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ljcifs/smb/SmbTree;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Ljcifs/smb/SmbTree;

    .line 7
    iget-object v0, p1, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    if-eqz p2, :cond_1a

    .line 11
    const-string p1, "??"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1a

    .line 19
    iget-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    :cond_1a
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    if-eqz p2, :cond_c

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_a
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 16
    if-eqz p1, :cond_f9

    .line 18
    if-eqz p2, :cond_19

    .line 20
    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 22
    if-eqz v1, :cond_19

    .line 24
    goto/16 :goto_f9

    .line 26
    :cond_19
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 28
    const-string v2, "A:"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_9a

    .line 36
    iget-byte v1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 38
    const/16 v2, -0x5e

    .line 40
    if-eq v1, v2, :cond_9a

    .line 42
    const/4 v2, 0x4

    .line 43
    if-eq v1, v2, :cond_9a

    .line 45
    const/16 v2, 0x25

    .line 47
    if-eq v1, v2, :cond_59

    .line 49
    const/16 v2, 0x32

    .line 51
    if-eq v1, v2, :cond_59

    .line 53
    const/16 v2, 0x71

    .line 55
    if-eq v1, v2, :cond_9a

    .line 57
    packed-switch v1, :pswitch_data_fe

    .line 60
    new-instance p2, Ljcifs/smb/SmbException;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "Invalid operation for "

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, " service"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p2

    .line 90
    :cond_59
    move-object v1, p1

    .line 91
    check-cast v1, Ljcifs/smb/SmbComTransaction;

    .line 93
    iget-byte v1, v1, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 95
    and-int/lit16 v1, v1, 0xff

    .line 97
    if-eqz v1, :cond_9a

    .line 99
    const/16 v2, 0x10

    .line 101
    if-eq v1, v2, :cond_9a

    .line 103
    const/16 v2, 0x23

    .line 105
    if-eq v1, v2, :cond_9a

    .line 107
    const/16 v2, 0x26

    .line 109
    if-eq v1, v2, :cond_9a

    .line 111
    const/16 v2, 0x68

    .line 113
    if-eq v1, v2, :cond_9a

    .line 115
    const/16 v2, 0xd7

    .line 117
    if-eq v1, v2, :cond_9a

    .line 119
    const/16 v2, 0x53

    .line 121
    if-eq v1, v2, :cond_9a

    .line 123
    const/16 v2, 0x54

    .line 125
    if-ne v1, v2, :cond_7f

    .line 127
    goto :goto_9a

    .line 128
    :cond_7f
    new-instance p1, Ljcifs/smb/SmbException;

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "Invalid operation for "

    .line 134
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 139
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, " service"

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 151
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p1

    .line 155
    :cond_9a
    :goto_9a
    :pswitch_9a  #0x2d, 0x2e, 0x2f
    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    .line 157
    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 159
    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 161
    if-eqz v1, :cond_e3

    .line 163
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 165
    const-string v2, "IPC"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_e3

    .line 173
    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 175
    if-eqz v1, :cond_e3

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 180
    move-result v1

    .line 181
    if-lez v1, :cond_e3

    .line 183
    const/16 v1, 0x1000

    .line 185
    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    const/16 v2, 0x5c

    .line 191
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 194
    move-result-object v3

    .line 195
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 200
    invoke-virtual {v3}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 203
    move-result-object v3

    .line 204
    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;
    :try_end_e3
    .catchall {:try_start_a .. :try_end_e3} :catchall_fb

    .line 228
    :cond_e3
    :try_start_e3
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 230
    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_e8
    .catch Ljcifs/smb/SmbException; {:try_start_e3 .. :try_end_e8} :catch_ea
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_fb

    .line 233
    :try_start_e8
    monitor-exit v0

    .line 234
    return-void

    .line 235
    :catch_ea
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 239
    move-result p2

    .line 240
    const v1, -0x3fffff37  # -2.000048f

    .line 243
    if-ne p2, v1, :cond_f8

    .line 245
    const/4 p2, 0x1

    .line 246
    invoke-virtual {p0, p2}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    .line 249
    :cond_f8
    throw p1

    .line 250
    :cond_f9
    :goto_f9
    monitor-exit v0

    .line 251
    return-void

    .line 252
    :catchall_fb
    move-exception p1

    .line 253
    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_fb

    .line 254
    throw p1

    .line 255
    :pswitch_data_fe
    .packed-switch 0x2d
        :pswitch_9a  #0000002d
        :pswitch_9a  #0000002e
        :pswitch_9a  #0000002f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SmbTree[share="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",service="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",tid="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ",inDfs="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ",inDomainDfs="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ",connectionState="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 60
    const-string v2, "]"

    .line 62
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :goto_7
    :try_start_7
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 10
    const/4 v2, 0x2

    .line 11
    if-nez v1, :cond_93

    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_af

    .line 16
    :try_start_f
    iget-object v3, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 18
    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 20
    invoke-virtual {v3}, Ljcifs/smb/SmbTransport;->connect()V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    const-string v4, "\\\\"

    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 32
    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 34
    iget-object v4, v4, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/16 v4, 0x5c

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    iget-object v4, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 57
    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 59
    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 61
    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 63
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 65
    const/4 v5, 0x4

    .line 66
    if-lt v4, v5, :cond_60

    .line 68
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    const-string v6, "treeConnect: unc="

    .line 74
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v6, ",service="

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v6, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_60
    new-instance v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;

    .line 99
    invoke-direct {v4, p2}, Ljcifs/smb/SmbComTreeConnectAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 102
    new-instance p2, Ljcifs/smb/SmbComTreeConnectAndX;

    .line 104
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 106
    iget-object v6, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 108
    invoke-direct {p2, v5, v3, v6, p1}, Ljcifs/smb/SmbComTreeConnectAndX;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V

    .line 111
    iget-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 113
    invoke-virtual {p1, p2, v4}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 116
    iget p1, v4, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 118
    iput p1, p0, Ljcifs/smb/SmbTree;->tid:I

    .line 120
    iget-object p1, v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 124
    iget-boolean p1, v4, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    .line 126
    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 128
    sget p1, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    .line 130
    add-int/lit8 p2, p1, 0x1

    .line 132
    sput p2, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    .line 134
    iput p1, p0, Ljcifs/smb/SmbTree;->tree_num:I

    .line 136
    iput v2, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_89
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_89} :catch_8b
    .catchall {:try_start_f .. :try_end_89} :catchall_af

    .line 138
    :try_start_89
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :catch_8b
    move-exception p1

    .line 141
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    .line 144
    const/4 p2, 0x0

    .line 145
    iput p2, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 147
    throw p1
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_af

    .line 148
    :cond_93
    if-eq v1, v2, :cond_ad

    .line 150
    const/4 v2, 0x3

    .line 151
    if-ne v1, v2, :cond_99

    .line 153
    goto :goto_ad

    .line 154
    :cond_99
    :try_start_99
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 156
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_a0} :catch_a2
    .catchall {:try_start_99 .. :try_end_a0} :catchall_af

    .line 161
    goto/16 :goto_7

    .line 163
    :catch_a2
    move-exception p1

    .line 164
    :try_start_a3
    new-instance p2, Ljcifs/smb/SmbException;

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-direct {p2, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    throw p2

    .line 174
    :cond_ad
    :goto_ad
    monitor-exit v0

    .line 175
    return-void

    .line 176
    :catchall_af
    move-exception p1

    .line 177
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_af

    .line 178
    throw p1
.end method

.method public treeDisconnect(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_e

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 v1, 0x3

    .line 16
    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 18
    if-nez p1, :cond_32

    .line 20
    iget p1, p0, Ljcifs/smb/SmbTree;->tid:I
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_42

    .line 22
    if-eqz p1, :cond_32

    .line 24
    :try_start_17
    new-instance p1, Ljcifs/smb/SmbComTreeDisconnect;

    .line 26
    invoke-direct {p1}, Ljcifs/smb/SmbComTreeDisconnect;-><init>()V

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_20
    .catch Ljcifs/smb/SmbException; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_42

    .line 33
    goto :goto_32

    .line 34
    :catch_21
    move-exception p1

    .line 35
    :try_start_22
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 37
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 39
    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 41
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 43
    const/4 v2, 0x1

    .line 44
    if-le v1, v2, :cond_32

    .line 46
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 51
    :cond_32
    :goto_32
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 54
    iput-boolean p1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 56
    iput p1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 58
    iget-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 60
    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_42

    .line 69
    throw p1
.end method
