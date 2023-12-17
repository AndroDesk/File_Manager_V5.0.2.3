.class public Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;
.super Ljava/lang/Object;
.source "MemoryFileUtil.java"


# static fields
.field public static final KEY_FD:Ljava/lang/String; = "parcelFile"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "key_height"

.field public static final KEY_LENGTH:Ljava/lang/String; = "parcelFileLength"

.field public static final KEY_WIDTH:Ljava/lang/String; = "key_width"

.field private static final TAG:Ljava/lang/String; = "MemoryFileUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    const-string v0, "parcelFile"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    const-string v1, "parcelFileLength"

    .line 11
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    const-string v2, "key_width"

    .line 17
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    move-result v2

    .line 21
    const-string v3, "key_height"

    .line 23
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    move-result p0

    .line 27
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->readFromMemory(Ljava/util/HashMap;I)[B

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v3, "MemoryFileUtil"

    .line 34
    if-eqz v0, :cond_3f

    .line 36
    :try_start_23
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    invoke-static {v2, p0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_30} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_30} :catch_31

    .line 49
    goto :goto_3e

    .line 50
    :catch_31
    move-exception p0

    .line 51
    const-string v0, "catch oom exception"

    .line 53
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    goto :goto_3e

    .line 57
    :catch_38
    move-exception p0

    .line 58
    const-string v0, "catch illegal argument exception"

    .line 60
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_3e
    return-object v1

    .line 64
    :cond_3f
    const-string p0, "getSnapShot with data is null"

    .line 66
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v1
.end method

.method public static readFromMemory(Ljava/util/HashMap;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;I)[B"
        }
    .end annotation

    .line 1
    const-string v0, "catch close fd error"

    .line 3
    const-string v1, "MemoryFileUtil"

    .line 5
    const-string v2, "parcelFile"

    .line 7
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p0, :cond_49

    .line 16
    new-array p1, p1, [B

    .line 18
    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    .line 20
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_2a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_28

    .line 27
    :try_start_1a
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_26
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3c

    .line 30
    :try_start_1d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 33
    goto :goto_25

    .line 34
    :catch_21
    move-exception p0

    .line 35
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_25
    return-object p1

    .line 39
    :catch_26
    move-exception p1

    .line 40
    goto :goto_2c

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_3e

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    move-object v3, v2

    .line 45
    :goto_2c
    :try_start_2c
    const-string v4, "catch read from memory error"

    .line 47
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 50
    if-eqz v3, :cond_49

    .line 52
    :try_start_33
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 55
    goto :goto_49

    .line 56
    :catch_37
    move-exception p0

    .line 57
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    goto :goto_49

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    move-object v2, v3

    .line 63
    :goto_3e
    if-eqz v2, :cond_48

    .line 65
    :try_start_40
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 68
    goto :goto_48

    .line 69
    :catch_44
    move-exception p0

    .line 70
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_48
    :goto_48
    throw p1

    .line 74
    :cond_49
    :goto_49
    return-object v2
.end method

.method public static sendToFdServer(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;[BIIILjava/lang/String;I)V
    .registers 9

    .line 1
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->writeToMemory([BI)Landroid/os/ParcelFileDescriptor;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    const-string v1, "parcelFile"

    .line 13
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Landroid/os/Bundle;

    .line 18
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    const-string v0, "parcelFileLength"

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    const-string p2, "key_width"

    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string p2, "key_height"

    .line 36
    invoke-virtual {p1, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string p2, "key_task_id"

    .line 41
    invoke-virtual {p1, p2, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string p2, "key_request_identity"

    .line 46
    invoke-virtual {p1, p2, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p0, :cond_3f

    .line 51
    const/4 p2, 0x7

    .line 52
    :try_start_33
    invoke-interface {p0, p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 55
    goto :goto_3f

    .line 56
    :catch_37
    move-exception p0

    .line 57
    const-string p1, "MemoryFileUtil"

    .line 59
    const-string p2, "catch stash snapshot to service error"

    .line 61
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static writeToMemory([BI)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/os/MemoryFile;

    .line 4
    const-string v2, ""

    .line 6
    invoke-direct {v1, v2, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2e
    .catchall {:try_start_1 .. :try_end_8} :catchall_2c

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 13
    const-class p0, Landroid/os/MemoryFile;

    .line 15
    const-string p1, "getFileDescriptor"

    .line 17
    new-array v3, v2, [Ljava/lang/Class;

    .line 19
    invoke-virtual {p0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    new-array p1, v2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/io/FileDescriptor;

    .line 35
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 38
    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_26} :catch_2a
    .catchall {:try_start_9 .. :try_end_26} :catchall_3b

    .line 39
    :goto_26
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 42
    goto :goto_3a

    .line 43
    :catch_2a
    move-exception p0

    .line 44
    goto :goto_30

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_3d

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    move-object v1, v0

    .line 49
    :goto_30
    :try_start_30
    const-string p1, "MemoryFileUtil"

    .line 51
    const-string v2, "catch write to memory error"

    .line 53
    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 56
    if-eqz v1, :cond_3a

    .line 58
    goto :goto_26

    .line 59
    :cond_3a
    :goto_3a
    return-object v0

    .line 60
    :catchall_3b
    move-exception p0

    .line 61
    move-object v0, v1

    .line 62
    :goto_3d
    if-eqz v0, :cond_42

    .line 64
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 67
    :cond_42
    throw p0
.end method
