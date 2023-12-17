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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 3

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->this$0:Ljcifs/smb/SmbFile;

    const-string v0, "JCIFS-WriterThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz p1, :cond_29

    new-instance p1, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    new-instance p1, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    goto :goto_37

    :cond_29
    new-instance p1, Ljcifs/smb/SmbComWrite;

    invoke-direct {p1}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    new-instance p1, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    :goto_37
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    :goto_7
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    if-nez v0, :cond_48

    iget v8, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I
    :try_end_d
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_d} :catch_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_4e
    .catchall {:try_start_1 .. :try_end_d} :catchall_4c

    const/4 v0, -0x1

    if-ne v8, v0, :cond_12

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_4c

    return-void

    :cond_12
    :try_start_12
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_2f

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_1

    :cond_2f
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_1

    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_4b} :catch_59
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4b} :catch_4e
    .catchall {:try_start_12 .. :try_end_4b} :catchall_4c

    goto :goto_7

    :catchall_4c
    move-exception v0

    goto :goto_61

    :catch_4e
    move-exception v0

    :try_start_4f
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "WriterThread"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    goto :goto_5c

    :catch_59
    move-exception v0

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    :goto_5c
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_4c

    throw v0
.end method

.method public declared-synchronized write([BILjcifs/smb/SmbFile;J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    iput p2, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    iput-object p3, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iput-wide p4, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
