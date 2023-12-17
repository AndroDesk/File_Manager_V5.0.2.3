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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    sget-object p1, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    goto :goto_3c

    :cond_2c
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Uri:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    :goto_3c
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Asset:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->ByteArray:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    return-object p0
.end method

.method private openStream()V
    .registers 5

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    if-nez v0, :cond_7a

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    monitor-exit v1

    return-void

    :cond_12
    sget-object v0, Lmiuix/io/ResettableInputStream$2;->$SwitchMap$miuix$io$ResettableInputStream$Type:[I

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_60

    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_6e

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_6e

    :cond_56
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_6e

    :cond_60
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    :goto_6e
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    monitor-exit v1

    return-void

    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_c .. :try_end_79} :catchall_77

    throw v0

    :cond_7a
    throw v0
.end method


# virtual methods
.method public available()I
    .registers 2

    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_e

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_24

    return-void

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1c

    :try_start_14
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v2

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    throw v2

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public mark(I)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_c

    :catch_9
    move-exception p1

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    :goto_c
    return-void
.end method

.method public markSupported()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_34

    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V

    goto :goto_32

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    monitor-exit p0

    return-void

    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4

    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
