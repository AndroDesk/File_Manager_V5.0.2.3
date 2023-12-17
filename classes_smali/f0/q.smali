.class public final Lf0/q;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/q$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 6
    :catch_5
    :cond_5
    return-void
.end method

.method public static b(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 4
    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_e

    .line 5
    :try_start_4
    invoke-static {p1, p0}, Lf0/q;->c(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 8
    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 9
    invoke-static {p1}, Lf0/q;->a(Ljava/io/Closeable;)V

    .line 12
    return p0

    .line 13
    :catchall_c
    move-exception p0

    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception p0

    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_10
    invoke-static {p1}, Lf0/q;->a(Ljava/io/Closeable;)V

    .line 20
    throw p0
.end method

.method public static c(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    .line 9
    invoke-direct {v3, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_29
    .catchall {:try_start_6 .. :try_end_b} :catchall_27

    .line 12
    const/16 p1, 0x400

    .line 14
    :try_start_d
    new-array p1, p1, [B

    .line 16
    :goto_f
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-eq v2, v4, :cond_1a

    .line 23
    invoke-virtual {v3, p1, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_24
    .catchall {:try_start_d .. :try_end_19} :catchall_22

    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    const/4 p0, 0x1

    .line 28
    invoke-static {v3}, Lf0/q;->a(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 34
    return p0

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    goto :goto_4c

    .line 37
    :catch_24
    move-exception p0

    .line 38
    move-object v2, v3

    .line 39
    goto :goto_2a

    .line 40
    :catchall_27
    move-exception p0

    .line 41
    goto :goto_4b

    .line 42
    :catch_29
    move-exception p0

    .line 43
    :goto_2a
    :try_start_2a
    const-string p1, "TypefaceCompatUtil"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v4, "Error copying resource contents to temp file: "

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_27

    .line 69
    invoke-static {v2}, Lf0/q;->a(Ljava/io/Closeable;)V

    .line 72
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 75
    return v1

    .line 76
    :goto_4b
    move-object v3, v2

    .line 77
    :goto_4c
    invoke-static {v3}, Lf0/q;->a(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 83
    throw p0
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    const-string v1, ".font"

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "-"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_29
    const/16 v3, 0x64

    .line 44
    if-ge v2, v3, :cond_40

    .line 46
    new-instance v3, Ljava/io/File;

    .line 48
    invoke-static {v1, v2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    :try_start_36
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 58
    move-result v4
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3d

    .line 59
    if-eqz v4, :cond_3d

    .line 61
    return-object v3

    .line 62
    :catch_3d
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_29

    .line 65
    :cond_40
    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_5
    const-string v1, "r"

    .line 8
    invoke-static {p0, p1, v1, v0}, Lf0/q$a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_13

    .line 14
    if-eqz p0, :cond_12

    .line 16
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_47

    .line 19
    :cond_12
    return-object v0

    .line 20
    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    .line 22
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_3d

    .line 29
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 36
    move-result-wide v6

    .line 37
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 39
    const-wide/16 v4, 0x0

    .line 41
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 44
    move-result-object v1
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_33

    .line 45
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    .line 48
    :try_start_2f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_47

    .line 51
    return-object v1

    .line 52
    :catchall_33
    move-exception v1

    .line 53
    :try_start_34
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    .line 56
    goto :goto_3c

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    :try_start_39
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    :goto_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 62
    :catchall_3d
    move-exception p1

    .line 63
    :try_start_3e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    .line 66
    goto :goto_46

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    :try_start_43
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :goto_46
    throw p1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_47

    .line 72
    :catch_47
    return-object v0
.end method
