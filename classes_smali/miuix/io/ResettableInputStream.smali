.class public Lmiuix/io/ResettableInputStream;
.super Ljava/io/InputStream;
.source "ResettableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/io/ResettableInputStream$Type;
    }
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetPath:Ljava/lang/String;

.field private final mByteArray:[B

.field private final mContext:Landroid/content/Context;

.field private final mFinalizeGuardian:Ljava/lang/Object;

.field private volatile mInputStream:Ljava/io/InputStream;

.field private mLastException:Ljava/io/IOException;

.field private mOpenStack:Ljava/lang/Throwable;

.field private final mPath:Ljava/lang/String;

.field private final mType:Lmiuix/io/ResettableInputStream$Type;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 13
    sget-object p1, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 14
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 16
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 17
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 18
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    goto :goto_3c

    .line 20
    :cond_2c
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Uri:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 21
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 23
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 25
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    :goto_3c
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 29
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Asset:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 30
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 31
    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 35
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 3
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 4
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 6
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 7
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 8
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->ByteArray:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 39
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 43
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 44
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 3
    return-object p0
.end method

.method private openStream()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 3
    if-nez v0, :cond_7a

    .line 5
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 15
    if-eqz v0, :cond_12

    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :cond_12
    sget-object v0, Lmiuix/io/ResettableInputStream$2;->$SwitchMap$miuix$io$ResettableInputStream$Type:[I

    .line 21
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v2

    .line 27
    aget v0, v0, v2

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v2, :cond_60

    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v0, v2, :cond_56

    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v0, v2, :cond_4b

    .line 38
    const/4 v2, 0x4

    .line 39
    if-ne v0, v2, :cond_32

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 43
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    .line 45
    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 50
    goto :goto_6e

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v3, "Unkown type "

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v3, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 76
    :cond_4b
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 78
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 86
    goto :goto_6e

    .line 87
    :cond_56
    new-instance v0, Ljava/io/FileInputStream;

    .line 89
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 91
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 96
    goto :goto_6e

    .line 97
    :cond_60
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 111
    :goto_6e
    new-instance v0, Ljava/lang/Throwable;

    .line 113
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 116
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_c .. :try_end_79} :catchall_77

    .line 122
    throw v0

    .line 123
    :cond_7a
    throw v0
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 11
    if-nez v1, :cond_e

    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_24

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :try_start_f
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1c

    .line 21
    :try_start_14
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 23
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 25
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v2

    .line 30
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 32
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 34
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 36
    throw v2

    .line 37
    :catchall_24
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    .line 39
    throw v1
.end method

.method public mark(I)V
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_c

    .line 10
    :catch_9
    move-exception p1

    .line 11
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 13
    :goto_c
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 9
    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10
    return v0

    .line 11
    :catch_a
    move-exception v0

    .line 12
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 14
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public read()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    .line 3
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    .line 5
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 6
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 4
    if-eqz v0, :cond_32

    .line 6
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 8
    instance-of v0, v0, Ljava/io/FileInputStream;

    .line 10
    if-eqz v0, :cond_1a

    .line 12
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 14
    check-cast v0, Ljava/io/FileInputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_34

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 29
    instance-of v0, v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 31
    if-nez v0, :cond_2b

    .line 33
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 35
    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    .line 37
    if-eqz v0, :cond_27

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_32
    :goto_32
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public skip(J)J
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method
