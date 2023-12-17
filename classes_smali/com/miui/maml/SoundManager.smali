.class public Lcom/miui/maml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/SoundManager$SoundOptions;,
        Lcom/miui/maml/SoundManager$Command;
    }
.end annotation


# static fields
.field private static final ADVANCE:Ljava/lang/String; = "advance/"

.field private static final LOCKSCREEN_AUDIO:Ljava/lang/String; = "lockscreen_audio/"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/maml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 32
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 34
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 36
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/miui/maml/SoundManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 3
    return p1
.end method

.method private init()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 27
    move-result-wide v2

    .line 28
    cmp-long v0, v0, v2

    .line 30
    if-nez v0, :cond_32

    .line 32
    new-instance v0, Landroid/media/SoundPool;

    .line 34
    const/16 v1, 0x8

    .line 36
    const/4 v2, 0x3

    .line 37
    const/16 v3, 0x64

    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 42
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 44
    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 50
    goto :goto_44

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v1, Lcom/miui/maml/SoundManager$1;

    .line 55
    invoke-direct {v1, p0}, Lcom/miui/maml/SoundManager$1;-><init>(Lcom/miui/maml/SoundManager;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 63
    monitor-enter v0

    .line 64
    :catch_3f
    :goto_3f
    :try_start_3f
    iget-boolean v1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 66
    if-eqz v1, :cond_45

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 69
    :goto_44
    return-void

    .line 70
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_3f
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    .line 75
    goto :goto_3f

    .line 76
    :catchall_4b
    move-exception v1

    .line 77
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .line 78
    throw v1
.end method

.method private declared-synchronized playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_8

    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    iget-boolean v0, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 11
    if-nez v0, :cond_f

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_42

    .line 16
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 18
    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_36
    .catchall {:try_start_f .. :try_end_12} :catchall_42

    .line 19
    :try_start_12
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 21
    iget v5, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 23
    const/4 v6, 0x1

    .line 24
    iget-boolean p2, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    .line 26
    if-eqz p2, :cond_1e

    .line 28
    const/4 p2, -0x1

    .line 29
    move v7, p2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v7, v1

    .line 32
    :goto_1f
    const/high16 v8, 0x3f800000  # 1.0f

    .line 34
    move v3, p1

    .line 35
    move v4, v5

    .line 36
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 39
    move-result p1

    .line 40
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_33

    .line 50
    monitor-exit p0

    .line 51
    return p1

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .line 54
    :try_start_35
    throw p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_42

    .line 55
    :catch_36
    move-exception p1

    .line 56
    :try_start_37
    const-string p2, "MamlSoundManager"

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_42

    .line 65
    monitor-exit p0

    .line 66
    return v1

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 4

    .line 1
    if-nez p3, :cond_11

    .line 3
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/miui/maml/SoundManager$SoundOptions;

    .line 15
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public pause()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    .line 4
    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .registers 14

    monitor-enter p0

    .line 13
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_132

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 16
    monitor-exit p0

    return v1

    .line 17
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_128

    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/16 v5, 0x200

    const/4 v6, 0x2

    if-ge v2, v3, :cond_82

    .line 19
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    if-nez v0, :cond_43

    const-string p2, "MamlSoundManager"

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_132

    .line 21
    monitor-exit p0

    return v1

    .line 22
    :cond_43
    :try_start_43
    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v2

    const/high16 v3, 0x80000

    if-le v2, v3, :cond_62

    const-string p2, "MamlSoundManager"

    const-string v0, "the sound file is larger than %d KB: %s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_132

    .line 24
    monitor-exit p0

    return v1

    .line 25
    :cond_62
    :try_start_62
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MemoryFile_getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    goto/16 :goto_121

    .line 28
    :cond_82
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "lockscreen_audio/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "advance/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c0

    const-string p2, "MamlSoundManager"

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_62 .. :try_end_be} :catchall_132

    .line 31
    monitor-exit p0

    return v1

    .line 32
    :cond_c0
    :try_start_c0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x80000

    cmp-long v3, v7, v9

    if-lez v3, :cond_e2

    const-string p2, "MamlSoundManager"

    const-string v0, "the sound file is larger than %d KB: %s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_c0 .. :try_end_e0} :catchall_132

    .line 34
    monitor-exit p0

    return v1

    :cond_e2
    const/high16 v3, 0x10000000

    .line 35
    :try_start_e4
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e8} :catch_118
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_132

    if-eqz v3, :cond_111

    .line 36
    :try_start_ea
    iget-object v4, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_104
    .catchall {:try_start_ea .. :try_end_104} :catchall_105

    goto :goto_111

    :catchall_105
    move-exception p1

    .line 38
    :try_start_106
    throw p1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v2

    .line 39
    :try_start_108
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_10c

    goto :goto_110

    :catchall_10c
    move-exception v3

    :try_start_10d
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_110
    throw v2

    :cond_111
    :goto_111
    if-eqz v3, :cond_116

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_116} :catch_118
    .catchall {:try_start_10d .. :try_end_116} :catchall_132

    :cond_116
    :goto_116
    move-object v2, v0

    goto :goto_121

    :catch_118
    move-exception p1

    :try_start_119
    const-string v2, "MamlSoundManager"

    const-string v3, "fail to load sound. "

    .line 40
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116

    .line 41
    :goto_121
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_126
    .catchall {:try_start_119 .. :try_end_126} :catchall_132

    .line 42
    monitor-exit p0

    return v1

    .line 43
    :cond_128
    :try_start_128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1
    :try_end_130
    .catchall {:try_start_128 .. :try_end_130} :catchall_132

    monitor-exit p0

    return p1

    :catchall_132
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playSound(ILcom/miui/maml/SoundManager$Command;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_44

    if-gtz p1, :cond_f

    goto :goto_44

    .line 4
    :cond_f
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_37

    const/4 v0, 0x4

    if-eq p2, v0, :cond_21

    goto :goto_42

    .line 5
    :cond_21
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 6
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    monitor-enter p2
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_46

    .line 7
    :try_start_29
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p2

    goto :goto_42

    :catchall_34
    move-exception p1

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    :try_start_36
    throw p1

    .line 9
    :cond_37
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_42

    .line 10
    :cond_3d
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_46

    .line 11
    :goto_42
    monitor-exit p0

    return-void

    .line 12
    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    .line 4
    if-nez v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    .line 11
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 13
    if-eqz v0, :cond_20

    .line 15
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 20
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 26
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 28
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 31
    iput-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_25

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public stopAllPlaying()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 15
    if-eqz v1, :cond_2c

    .line 17
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2c

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 35
    iget-object v3, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 44
    goto :goto_16

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_33
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    .line 54
    throw v1
.end method
