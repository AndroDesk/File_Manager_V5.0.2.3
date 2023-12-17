.class public final Lq1/e;
.super Lq1/f;
.source "KssDownloadFile.java"


# instance fields
.field public final synthetic c:Lq1/a;


# direct methods
.method public constructor <init>(Lq1/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lq1/e;->c:Lq1/a;

    .line 3
    const/4 p1, 0x0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lq1/f;-><init>(Ljava/io/File;J)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq1/e;->c:Lq1/a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final b()Lq1/c;
    .registers 3

    .line 1
    new-instance v0, Lq1/h;

    .line 3
    iget-object v1, p0, Lq1/e;->c:Lq1/a;

    .line 5
    invoke-direct {v0, v1}, Lq1/h;-><init>(Lq1/a;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public final c(ZJ)V
    .registers 6

    .line 1
    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Lq1/e;->c:Lq1/a;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    cmp-long p1, v0, p2

    .line 12
    if-gtz p1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    iget-object p1, p0, Lq1/e;->c:Lq1/a;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1d

    .line 20
    const/4 p1, 0x1

    .line 21
    :try_start_14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    :try_start_1c
    throw p1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    new-instance p1, Ljava/lang/SecurityException;

    .line 32
    iget-object p2, p0, Lq1/e;->c:Lq1/a;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-string p2, "Failed delete target file. Can\'t download to dest path: null"

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public final d(J)V
    .registers 3

    return-void
.end method
