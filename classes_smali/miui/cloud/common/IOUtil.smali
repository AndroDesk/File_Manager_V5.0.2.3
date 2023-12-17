.class public Lmiui/cloud/common/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    goto :goto_f

    .line 5
    :catch_4
    const/4 p0, 0x1

    .line 6
    new-array p0, p0, [Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "Closing failed. "

    .line 11
    aput-object v1, p0, v0

    .line 13
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 16
    :goto_f
    return-void
.end method

.method public static realFlush(Ljava/io/Flushable;)V
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    .line 4
    instance-of v0, p0, Ljava/io/FileOutputStream;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    check-cast p0, Ljava/io/FileOutputStream;

    .line 10
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 17
    :cond_10
    return-void
.end method

.method public static realFlushQuietly(Ljava/io/Flushable;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lmiui/cloud/common/IOUtil;->realFlush(Ljava/io/Flushable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    goto :goto_f

    .line 5
    :catch_4
    const/4 p0, 0x1

    .line 6
    new-array p0, p0, [Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "Flush failed. "

    .line 11
    aput-object v1, p0, v0

    .line 13
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 16
    :goto_f
    return-void
.end method
