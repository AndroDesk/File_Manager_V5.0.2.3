.class public final Lq1/e;
.super Lq1/f;
.source "KssDownloadFile.java"


# instance fields
.field public final synthetic c:Lq1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lq1/a;)V
    .registers 4

    iput-object p1, p0, Lq1/e;->c:Lq1/a;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lq1/f;-><init>(Ljava/io/File;J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lq1/e;->c:Lq1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lq1/c;
    .registers 3

    new-instance v0, Lq1/h;

    iget-object v1, p0, Lq1/e;->c:Lq1/a;

    invoke-direct {v0, v1}, Lq1/h;-><init>(Lq1/a;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(ZJ)V
    .registers 6

    if-eqz p1, :cond_e

    iget-object p1, p0, Lq1/e;->c:Lq1/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long p1, v0, p2

    if-gtz p1, :cond_e

    return-void

    :cond_e
    :try_start_e
    iget-object p1, p0, Lq1/e;->c:Lq1/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1d

    const/4 p1, 0x1

    :try_start_14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 p1, 0x0

    throw p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    :try_start_1c
    throw p1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1d} :catch_1d

    :catch_1d
    new-instance p1, Ljava/lang/SecurityException;

    iget-object p2, p0, Lq1/e;->c:Lq1/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Failed delete target file. Can\'t download to dest path: null"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(J)V
    .registers 3

    return-void
.end method
