.class public Lmiui/cloud/common/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Closing failed. "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public static realFlush(Ljava/io/Flushable;)V
    .registers 2

    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_10

    check-cast p0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    :cond_10
    return-void
.end method

.method public static realFlushQuietly(Ljava/io/Flushable;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, Lmiui/cloud/common/IOUtil;->realFlush(Ljava/io/Flushable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Flush failed. "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method
