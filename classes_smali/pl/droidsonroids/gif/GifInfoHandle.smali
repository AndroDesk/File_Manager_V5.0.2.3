.class final Lpl/droidsonroids/gif/GifInfoHandle;
.super Ljava/lang/Object;
.source "GifInfoHandle.java"


# static fields
.field public static final synthetic b:I


# instance fields
.field public volatile a:J


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "pl_droidsonroids_gif"

    .line 3
    :try_start_2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    goto :goto_38

    .line 7
    :catch_6
    sget-object v0, Lpl/droidsonroids/gif/e;->a:Landroid/content/Context;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_2e

    .line 12
    :try_start_b
    const-string v0, "android.app.ActivityThread"

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    const-string v2, "currentApplication"

    .line 20
    const/4 v3, 0x0

    .line 21
    new-array v4, v3, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0

    .line 27
    new-array v2, v3, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/content/Context;

    .line 35
    sput-object v0, Lpl/droidsonroids/gif/e;->a:Landroid/content/Context;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_25

    .line 37
    goto :goto_2e

    .line 38
    :catch_25
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    const-string v2, "LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes."

    .line 43
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw v1

    .line 47
    :cond_2e
    :goto_2e
    sget-object v0, Lpl/droidsonroids/gif/e;->a:Landroid/content/Context;

    .line 49
    new-instance v1, Lr4/e;

    .line 51
    invoke-direct {v1}, Lr4/e;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Lr4/e;->b(Landroid/content/Context;)V

    .line 57
    :goto_38
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->m(Ljava/io/FileDescriptor;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 15
    :try_start_12
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    .line 16
    :catch_1a
    throw v0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->m(Ljava/io/FileDescriptor;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11
    invoke-static {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->openStream(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    return-void

    .line 12
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream does not support marking"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->openByteArray([B)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    return-void
.end method

.method public static native createTempNativeFileDescriptor()I
.end method

.method public static native extractNativeFileDescriptor(Ljava/io/FileDescriptor;Z)I
.end method

.method private static native free(J)V
.end method

.method private static native getAllocationByteCount(J)J
.end method

.method private static native getCurrentFrameIndex(J)I
.end method

.method private static native getCurrentLoop(J)I
.end method

.method private static native getCurrentPosition(J)I
.end method

.method private static native getDuration(J)I
.end method

.method private static native getHeight(J)I
.end method

.method private static native getLoopCount(J)I
.end method

.method private static native getMetadataByteCount(J)J
.end method

.method private static native getNativeErrorCode(J)I
.end method

.method private static native getNumberOfFrames(J)I
.end method

.method private static native getWidth(J)I
.end method

.method private static native isOpaque(J)Z
.end method

.method public static m(Ljava/io/FileDescriptor;JZ)J
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1b

    .line 5
    if-le v0, v1, :cond_2a

    .line 7
    :try_start_6
    invoke-static {}, Lpl/droidsonroids/gif/GifInfoHandle;->createTempNativeFileDescriptor()I

    .line 10
    move-result v0

    .line 11
    invoke-static {p0, v0}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_15

    .line 14
    if-eqz p3, :cond_2e

    .line 16
    :try_start_f
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 19
    goto :goto_2e

    .line 20
    :catch_13
    move-exception p0

    .line 21
    goto :goto_1c

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    if-eqz p3, :cond_1b

    .line 25
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 28
    :cond_1b
    throw p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_13

    .line 29
    :goto_1c
    new-instance p1, Lpl/droidsonroids/gif/GifIOException;

    .line 31
    sget-object p2, Lpl/droidsonroids/gif/GifError;->OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 33
    iget p2, p2, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, p2, p0}, Lpl/droidsonroids/gif/GifIOException;-><init>(ILjava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    invoke-static {p0, p3}, Lpl/droidsonroids/gif/GifInfoHandle;->extractNativeFileDescriptor(Ljava/io/FileDescriptor;Z)I

    .line 46
    move-result v0

    .line 47
    :cond_2e
    :goto_2e
    invoke-static {v0, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->openNativeFileDescriptor(IJ)J

    .line 50
    move-result-wide p0

    .line 51
    return-wide p0
.end method

.method public static native openByteArray([B)J
.end method

.method public static native openDirectByteBuffer(Ljava/nio/ByteBuffer;)J
.end method

.method public static native openFile(Ljava/lang/String;)J
.end method

.method public static native openNativeFileDescriptor(IJ)J
.end method

.method public static native openStream(Ljava/io/InputStream;)J
.end method

.method private static native renderFrame(JLandroid/graphics/Bitmap;)J
.end method

.method private static native reset(J)Z
.end method

.method private static native restoreRemainder(J)J
.end method

.method private static native saveRemainder(J)V
.end method

.method private static native seekToTime(JILandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getAllocationByteCount(J)J

    .line 7
    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentFrameIndex(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized c()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentLoop(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized d()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentPosition(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized e()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized f()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final finalize()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifInfoHandle;->n()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    throw v0
.end method

.method public final declared-synchronized g()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized h()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getMetadataByteCount(J)J

    .line 7
    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized i()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized j()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized k()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth(J)I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized l()Z
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->isOpaque(J)Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized n()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->free(J)V

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final declared-synchronized o(Landroid/graphics/Bitmap;)J
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(JLandroid/graphics/Bitmap;)J

    .line 7
    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public final declared-synchronized p()Z
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->reset(J)Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized q()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreRemainder(J)J

    .line 7
    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized r()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->saveRemainder(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized s(Landroid/graphics/Bitmap;I)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    .line 4
    invoke-static {v0, v1, p2, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToTime(JILandroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
