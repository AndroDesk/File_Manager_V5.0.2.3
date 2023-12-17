.class public final Landroidx/emoji2/text/f;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/f$a;,
        Landroidx/emoji2/text/f$b;,
        Landroidx/emoji2/text/f$f;,
        Landroidx/emoji2/text/f$c;,
        Landroidx/emoji2/text/f$h;,
        Landroidx/emoji2/text/f$d;,
        Landroidx/emoji2/text/f$g;,
        Landroidx/emoji2/text/f$e;,
        Landroidx/emoji2/text/f$i;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/Object;

.field public static volatile j:Landroidx/emoji2/text/f;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Landroidx/collection/b;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroidx/emoji2/text/f$a;

.field public final f:Landroidx/emoji2/text/f$g;

.field public final g:I

.field public final h:Landroidx/emoji2/text/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$a;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    .line 14
    iget-object v1, p1, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    .line 16
    iput-object v1, p0, Landroidx/emoji2/text/f;->f:Landroidx/emoji2/text/f$g;

    .line 18
    iget v2, p1, Landroidx/emoji2/text/f$c;->b:I

    .line 20
    iput v2, p0, Landroidx/emoji2/text/f;->g:I

    .line 22
    iget-object p1, p1, Landroidx/emoji2/text/f$c;->c:Landroidx/emoji2/text/d;

    .line 24
    iput-object p1, p0, Landroidx/emoji2/text/f;->h:Landroidx/emoji2/text/d;

    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    move-result-object v3

    .line 32
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    iput-object p1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    .line 37
    new-instance p1, Landroidx/collection/b;

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {p1, v3}, Landroidx/collection/b;-><init>(I)V

    .line 43
    iput-object p1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 45
    new-instance p1, Landroidx/emoji2/text/f$a;

    .line 47
    invoke-direct {p1, p0}, Landroidx/emoji2/text/f$a;-><init>(Landroidx/emoji2/text/f;)V

    .line 50
    iput-object p1, p0, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    if-nez v2, :cond_4a

    .line 61
    :try_start_3c
    iput v3, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_3f

    .line 63
    goto :goto_4a

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    throw p1

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    invoke-virtual {p0}, Landroidx/emoji2/text/f;->b()I

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_66

    .line 88
    :try_start_57
    new-instance v0, Landroidx/emoji2/text/e;

    .line 90
    invoke-direct {v0, p1}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f$a;)V

    .line 93
    invoke-interface {v1, v0}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_60

    .line 96
    goto :goto_66

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    iget-object p1, p1, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 100
    invoke-virtual {p1, v0}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method public static a()Landroidx/emoji2/text/f;
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 6
    if-eqz v1, :cond_9

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v2, 0x0

    .line 11
    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 13
    if-eqz v2, :cond_10

    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v1

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw v1
.end method


# virtual methods
.method public final b()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 12
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    return v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    throw v0
.end method

.method public final c()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/emoji2/text/f;->g:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    move v0, v1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v2

    .line 10
    :goto_9
    if-eqz v0, :cond_5c

    .line 12
    invoke-virtual {p0}, Landroidx/emoji2/text/f;->b()I

    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v1, v2

    .line 20
    :goto_13
    if-eqz v1, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    :try_start_1f
    iget v0, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_51

    .line 34
    if-nez v0, :cond_2d

    .line 36
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    return-void

    .line 46
    :cond_2d
    :try_start_2d
    iput v2, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_51

    .line 48
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    iget-object v0, p0, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    :try_start_3d
    new-instance v1, Landroidx/emoji2/text/e;

    .line 64
    invoke-direct {v1, v0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f$a;)V

    .line 67
    iget-object v2, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 69
    iget-object v2, v2, Landroidx/emoji2/text/f;->f:Landroidx/emoji2/text/f$g;

    .line 71
    invoke-interface {v2, v1}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4a

    .line 74
    goto :goto_50

    .line 75
    :catchall_4a
    move-exception v1

    .line 76
    iget-object v0, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 78
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    .line 81
    :goto_50
    return-void

    .line 82
    :catchall_51
    move-exception v0

    .line 83
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    throw v0

    .line 93
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    const-string v1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    .line 18
    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 25
    invoke-virtual {v1}, Landroidx/collection/b;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    .line 28
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    iget-object v1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    .line 39
    new-instance v2, Landroidx/emoji2/text/f$f;

    .line 41
    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    .line 43
    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    throw p1
.end method

.method public final e()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    const/4 v1, 0x1

    .line 16
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    .line 18
    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 25
    invoke-virtual {v1}, Landroidx/collection/b;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_32

    .line 28
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    iget-object v1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    .line 39
    new-instance v2, Landroidx/emoji2/text/f$f;

    .line 41
    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v2, v0, v3, v4}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 54
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    throw v0
.end method

.method public final f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 20

    .line 1
    move/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/emoji2/text/f;->b()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v3, v5, :cond_f

    .line 14
    move v3, v5

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v3, 0x0

    .line 17
    :goto_10
    if-eqz v3, :cond_1a2

    .line 19
    if-ltz v0, :cond_198

    .line 21
    if-ltz v1, :cond_18e

    .line 23
    if-gt v0, v1, :cond_1a

    .line 25
    move v3, v5

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v3, 0x0

    .line 28
    :goto_1b
    const-string v6, "start should be <= than end"

    .line 30
    invoke-static {v3, v6}, La/b;->m(ZLjava/lang/String;)V

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v2, :cond_24

    .line 36
    return-object v3

    .line 37
    :cond_24
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result v6

    .line 41
    if-gt v0, v6, :cond_2c

    .line 43
    move v6, v5

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v6, 0x0

    .line 46
    :goto_2d
    const-string v7, "start should be < than charSequence length"

    .line 48
    invoke-static {v6, v7}, La/b;->m(ZLjava/lang/String;)V

    .line 51
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 54
    move-result v6

    .line 55
    if-gt v1, v6, :cond_3a

    .line 57
    move v6, v5

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v6, 0x0

    .line 60
    :goto_3b
    const-string v7, "end should be < than charSequence length"

    .line 62
    invoke-static {v6, v7}, La/b;->m(ZLjava/lang/String;)V

    .line 65
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_18b

    .line 71
    if-ne v0, v1, :cond_4a

    .line 73
    goto/16 :goto_18b

    .line 75
    :cond_4a
    move-object/from16 v6, p0

    .line 77
    iget-object v7, v6, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    .line 79
    iget-object v7, v7, Landroidx/emoji2/text/f$a;->b:Landroidx/emoji2/text/j;

    .line 81
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    instance-of v8, v2, Landroidx/emoji2/text/p;

    .line 86
    if-eqz v8, :cond_5d

    .line 88
    move-object v9, v2

    .line 89
    check-cast v9, Landroidx/emoji2/text/p;

    .line 91
    invoke-virtual {v9}, Landroidx/emoji2/text/p;->a()V

    .line 94
    :cond_5d
    if-nez v8, :cond_7d

    .line 96
    :try_start_5f
    instance-of v9, v2, Landroid/text/Spannable;

    .line 98
    if-eqz v9, :cond_64

    .line 100
    goto :goto_7d

    .line 101
    :cond_64
    instance-of v9, v2, Landroid/text/Spanned;

    .line 103
    if-eqz v9, :cond_85

    .line 105
    move-object v9, v2

    .line 106
    check-cast v9, Landroid/text/Spanned;

    .line 108
    add-int/lit8 v10, v0, -0x1

    .line 110
    add-int/lit8 v11, v1, 0x1

    .line 112
    const-class v12, Landroidx/emoji2/text/k;

    .line 114
    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 117
    move-result v9

    .line 118
    if-gt v9, v1, :cond_85

    .line 120
    new-instance v3, Landroidx/emoji2/text/r;

    .line 122
    invoke-direct {v3, v2}, Landroidx/emoji2/text/r;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    goto :goto_85

    .line 126
    :cond_7d
    :goto_7d
    new-instance v3, Landroidx/emoji2/text/r;

    .line 128
    move-object v9, v2

    .line 129
    check-cast v9, Landroid/text/Spannable;

    .line 131
    invoke-direct {v3, v9}, Landroidx/emoji2/text/r;-><init>(Landroid/text/Spannable;)V

    .line 134
    :cond_85
    :goto_85
    if-eqz v3, :cond_b2

    .line 136
    const-class v9, Landroidx/emoji2/text/k;

    .line 138
    invoke-virtual {v3, v0, v1, v9}, Landroidx/emoji2/text/r;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 141
    move-result-object v9

    .line 142
    check-cast v9, [Landroidx/emoji2/text/k;

    .line 144
    if-eqz v9, :cond_b2

    .line 146
    array-length v10, v9

    .line 147
    if-lez v10, :cond_b2

    .line 149
    array-length v10, v9

    .line 150
    const/4 v11, 0x0

    .line 151
    :goto_96
    if-ge v11, v10, :cond_b2

    .line 153
    aget-object v12, v9, v11

    .line 155
    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->getSpanStart(Ljava/lang/Object;)I

    .line 158
    move-result v13

    .line 159
    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->getSpanEnd(Ljava/lang/Object;)I

    .line 162
    move-result v14

    .line 163
    if-eq v13, v1, :cond_a7

    .line 165
    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->removeSpan(Ljava/lang/Object;)V

    .line 168
    :cond_a7
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    .line 171
    move-result v0

    .line 172
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 175
    move-result v1

    .line 176
    add-int/lit8 v11, v11, 0x1

    .line 178
    goto :goto_96

    .line 179
    :cond_b2
    if-eq v0, v1, :cond_177

    .line 181
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 184
    move-result v9

    .line 185
    if-lt v0, v9, :cond_bc

    .line 187
    goto/16 :goto_177

    .line 189
    :cond_bc
    const v9, 0x7fffffff

    .line 192
    new-instance v10, Landroidx/emoji2/text/j$a;

    .line 194
    iget-object v11, v7, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/o;

    .line 196
    iget-object v11, v11, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/o$a;

    .line 198
    invoke-direct {v10, v11}, Landroidx/emoji2/text/j$a;-><init>(Landroidx/emoji2/text/o$a;)V

    .line 201
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 204
    move-result v11

    .line 205
    const/4 v12, 0x0

    .line 206
    :goto_cd
    move v13, v11

    .line 207
    :cond_ce
    :goto_ce
    move v11, v0

    .line 208
    :cond_cf
    :goto_cf
    const/4 v14, 0x2

    .line 209
    const/16 v15, 0x21

    .line 211
    if-ge v0, v1, :cond_129

    .line 213
    if-ge v12, v9, :cond_129

    .line 215
    invoke-virtual {v10, v13}, Landroidx/emoji2/text/j$a;->a(I)I

    .line 218
    move-result v4

    .line 219
    if-eq v4, v5, :cond_119

    .line 221
    if-eq v4, v14, :cond_10d

    .line 223
    const/4 v14, 0x3

    .line 224
    if-eq v4, v14, :cond_e2

    .line 226
    goto :goto_cf

    .line 227
    :cond_e2
    iget-object v4, v10, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    .line 229
    iget-object v4, v4, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 231
    invoke-virtual {v7, v2, v11, v0, v4}, Landroidx/emoji2/text/j;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z

    .line 234
    move-result v4

    .line 235
    if-nez v4, :cond_10b

    .line 237
    if-nez v3, :cond_f8

    .line 239
    new-instance v3, Landroidx/emoji2/text/r;

    .line 241
    new-instance v4, Landroid/text/SpannableString;

    .line 243
    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {v3, v4}, Landroidx/emoji2/text/r;-><init>(Landroid/text/Spannable;)V

    .line 249
    :cond_f8
    iget-object v4, v10, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    .line 251
    iget-object v4, v4, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 253
    iget-object v14, v7, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    .line 255
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    new-instance v14, Landroidx/emoji2/text/q;

    .line 260
    invoke-direct {v14, v4}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/i;)V

    .line 263
    invoke-virtual {v3, v14, v11, v0, v15}, Landroidx/emoji2/text/r;->setSpan(Ljava/lang/Object;III)V

    .line 266
    add-int/lit8 v12, v12, 0x1

    .line 268
    :cond_10b
    move v11, v13

    .line 269
    goto :goto_cd

    .line 270
    :cond_10d
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    .line 273
    move-result v4

    .line 274
    add-int/2addr v0, v4

    .line 275
    if-ge v0, v1, :cond_cf

    .line 277
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 280
    move-result v13

    .line 281
    goto :goto_cf

    .line 282
    :cond_119
    invoke-static {v2, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 285
    move-result v0

    .line 286
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 289
    move-result v0

    .line 290
    add-int/2addr v0, v11

    .line 291
    if-ge v0, v1, :cond_ce

    .line 293
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 296
    move-result v13

    .line 297
    goto :goto_ce

    .line 298
    :cond_129
    iget v1, v10, Landroidx/emoji2/text/j$a;->a:I

    .line 300
    if-ne v1, v14, :cond_13f

    .line 302
    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 304
    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 306
    if-eqz v1, :cond_13f

    .line 308
    iget v1, v10, Landroidx/emoji2/text/j$a;->f:I

    .line 310
    if-gt v1, v5, :cond_13d

    .line 312
    invoke-virtual {v10}, Landroidx/emoji2/text/j$a;->c()Z

    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_13f

    .line 318
    :cond_13d
    move v4, v5

    .line 319
    goto :goto_140

    .line 320
    :cond_13f
    const/4 v4, 0x0

    .line 321
    :goto_140
    if-eqz v4, :cond_167

    .line 323
    if-ge v12, v9, :cond_167

    .line 325
    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 327
    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 329
    invoke-virtual {v7, v2, v11, v0, v1}, Landroidx/emoji2/text/j;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z

    .line 332
    move-result v1

    .line 333
    if-nez v1, :cond_167

    .line 335
    if-nez v3, :cond_156

    .line 337
    new-instance v1, Landroidx/emoji2/text/r;

    .line 339
    invoke-direct {v1, v2}, Landroidx/emoji2/text/r;-><init>(Ljava/lang/CharSequence;)V

    .line 342
    move-object v3, v1

    .line 343
    :cond_156
    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 345
    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 347
    iget-object v4, v7, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    .line 349
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    new-instance v4, Landroidx/emoji2/text/q;

    .line 354
    invoke-direct {v4, v1}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/i;)V

    .line 357
    invoke-virtual {v3, v4, v11, v0, v15}, Landroidx/emoji2/text/r;->setSpan(Ljava/lang/Object;III)V

    .line 360
    :cond_167
    if-eqz v3, :cond_174

    .line 362
    iget-object v0, v3, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;
    :try_end_16b
    .catchall {:try_start_5f .. :try_end_16b} :catchall_181

    .line 364
    if-eqz v8, :cond_180

    .line 366
    move-object v1, v2

    .line 367
    check-cast v1, Landroidx/emoji2/text/p;

    .line 369
    invoke-virtual {v1}, Landroidx/emoji2/text/p;->b()V

    .line 372
    goto :goto_180

    .line 373
    :cond_174
    if-eqz v8, :cond_17f

    .line 375
    goto :goto_179

    .line 376
    :cond_177
    :goto_177
    if-eqz v8, :cond_17f

    .line 378
    :goto_179
    move-object v0, v2

    .line 379
    check-cast v0, Landroidx/emoji2/text/p;

    .line 381
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()V

    .line 384
    :cond_17f
    move-object v0, v2

    .line 385
    :cond_180
    :goto_180
    return-object v0

    .line 386
    :catchall_181
    move-exception v0

    .line 387
    if-eqz v8, :cond_18a

    .line 389
    move-object v1, v2

    .line 390
    check-cast v1, Landroidx/emoji2/text/p;

    .line 392
    invoke-virtual {v1}, Landroidx/emoji2/text/p;->b()V

    .line 395
    :cond_18a
    throw v0

    .line 396
    :cond_18b
    :goto_18b
    move-object/from16 v6, p0

    .line 398
    return-object v2

    .line 399
    :cond_18e
    move-object/from16 v6, p0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 403
    const-string v1, "end cannot be negative"

    .line 405
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    throw v0

    .line 409
    :cond_198
    move-object/from16 v6, p0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 413
    const-string v1, "start cannot be negative"

    .line 415
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 418
    throw v0

    .line 419
    :cond_1a2
    move-object/from16 v6, p0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 423
    const-string v1, "Not initialized yet"

    .line 425
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 428
    throw v0
.end method

.method public final g(Landroidx/emoji2/text/f$e;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_47

    .line 3
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    :try_start_b
    iget v0, p0, Landroidx/emoji2/text/f;->c:I

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_1c

    .line 17
    iget v0, p0, Landroidx/emoji2/text/f;->c:I

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v0, v2, :cond_16

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 25
    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_32

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    .line 31
    new-instance v2, Landroidx/emoji2/text/f$f;

    .line 33
    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    .line 35
    new-array v1, v1, [Landroidx/emoji2/text/f$e;

    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object p1, v1, v4

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v2, p1, v3, v1}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_3c

    .line 51
    :goto_32
    iget-object p1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    return-void

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    throw p1

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    .line 74
    const-string v0, "initCallback cannot be null"

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method
