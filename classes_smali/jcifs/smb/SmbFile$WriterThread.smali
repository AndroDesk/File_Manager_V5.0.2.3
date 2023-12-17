.class Ljcifs/smb/SmbFile$WriterThread;
.super Ljava/lang/Thread;
.source "SmbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/SmbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriterThread"
.end annotation


# instance fields
.field public b:[B

.field public dest:Ljcifs/smb/SmbFile;

.field public e:Ljcifs/smb/SmbException;

.field public n:I

.field public off:J

.field public ready:Z

.field public req:Ljcifs/smb/SmbComWrite;

.field public reqx:Ljcifs/smb/SmbComWriteAndX;

.field public resp:Ljcifs/smb/ServerMessageBlock;

.field public final synthetic this$0:Ljcifs/smb/SmbFile;

.field public useNTSmbs:Z


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->this$0:Ljcifs/smb/SmbFile;

    .line 3
    const-string v0, "JCIFS-WriterThread"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 11
    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 13
    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 15
    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 17
    const/16 v0, 0x10

    .line 19
    invoke-virtual {p1, v0}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    .line 25
    if-eqz p1, :cond_29

    .line 27
    new-instance p1, Ljcifs/smb/SmbComWriteAndX;

    .line 29
    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    .line 32
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 34
    new-instance p1, Ljcifs/smb/SmbComWriteAndXResponse;

    .line 36
    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    .line 39
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    .line 41
    goto :goto_37

    .line 42
    :cond_29
    new-instance p1, Ljcifs/smb/SmbComWrite;

    .line 44
    invoke-direct {p1}, Ljcifs/smb/SmbComWrite;-><init>()V

    .line 47
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    .line 49
    new-instance p1, Ljcifs/smb/SmbComWriteResponse;

    .line 51
    invoke-direct {p1}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    .line 54
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    .line 56
    :goto_37
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 8
    :goto_7
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 10
    if-nez v0, :cond_48

    .line 12
    iget v8, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I
    :try_end_d
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_d} :catch_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_4e
    .catchall {:try_start_1 .. :try_end_d} :catchall_4c

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne v8, v0, :cond_12

    .line 17
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_4c

    .line 18
    return-void

    .line 19
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    .line 21
    if-eqz v0, :cond_2f

    .line 23
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 25
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 27
    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    .line 29
    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    .line 31
    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    .line 33
    const/4 v7, 0x0

    .line 34
    move v5, v8

    .line 35
    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 38
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 40
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    .line 44
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 47
    goto :goto_1

    .line 48
    :cond_2f
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    .line 50
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 52
    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    .line 54
    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    .line 56
    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    .line 58
    const/4 v7, 0x0

    .line 59
    move v5, v8

    .line 60
    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    .line 63
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 65
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    .line 67
    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    .line 69
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 72
    goto :goto_1

    .line 73
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_4b} :catch_59
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4b} :catch_4e
    .catchall {:try_start_12 .. :try_end_4b} :catchall_4c

    .line 76
    goto :goto_7

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    goto :goto_61

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    :try_start_4f
    new-instance v1, Ljcifs/smb/SmbException;

    .line 82
    const-string v2, "WriterThread"

    .line 84
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iput-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 89
    goto :goto_5c

    .line 90
    :catch_59
    move-exception v0

    .line 91
    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 93
    :goto_5c
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_4c

    .line 99
    throw v0
.end method

.method public declared-synchronized write([BILjcifs/smb/SmbFile;J)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    .line 4
    iput p2, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    .line 6
    iput-object p3, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 8
    iput-wide p4, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method
