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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x3

    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    iput-object v1, p0, Landroidx/emoji2/text/f;->f:Landroidx/emoji2/text/f$g;

    iget v2, p1, Landroidx/emoji2/text/f$c;->b:I

    iput v2, p0, Landroidx/emoji2/text/f;->g:I

    iget-object p1, p1, Landroidx/emoji2/text/f$c;->c:Landroidx/emoji2/text/d;

    iput-object p1, p0, Landroidx/emoji2/text/f;->h:Landroidx/emoji2/text/d;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    new-instance p1, Landroidx/collection/b;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Landroidx/collection/b;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    new-instance p1, Landroidx/emoji2/text/f$a;

    invoke-direct {p1, p0}, Landroidx/emoji2/text/f$a;-><init>(Landroidx/emoji2/text/f;)V

    iput-object p1, p0, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v2, :cond_4a

    :try_start_3c
    iput v3, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_3f

    goto :goto_4a

    :catchall_3f
    move-exception p1

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->b()I

    move-result v0

    if-nez v0, :cond_66

    :try_start_57
    new-instance v0, Landroidx/emoji2/text/e;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f$a;)V

    invoke-interface {v1, v0}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_60

    goto :goto_66

    :catchall_60
    move-exception v0

    iget-object p1, p1, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    invoke-virtual {p1, v0}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public static a()Landroidx/emoji2/text/f;
    .registers 4

    sget-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    if-eqz v2, :cond_10

    monitor-exit v0

    return-object v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final b()I
    .registers 3

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_15
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c()V
    .registers 4

    iget v0, p0, Landroidx/emoji2/text/f;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->b()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1f
    iget v0, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_51

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2d
    :try_start_2d
    iput v2, p0, Landroidx/emoji2/text/f;->c:I
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_51

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3d
    new-instance v1, Landroidx/emoji2/text/e;

    invoke-direct {v1, v0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f$a;)V

    iget-object v2, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    iget-object v2, v2, Landroidx/emoji2/text/f;->f:Landroidx/emoji2/text/f$g;

    invoke-interface {v2, v1}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4a

    goto :goto_50

    :catchall_4a
    move-exception v1

    iget-object v0, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    :goto_50
    return-void

    :catchall_51
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/f$f;

    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_31
    move-exception p1

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final e()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/f;->c:I

    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_32

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/f$f;

    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_32
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 20

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/emoji2/text/f;->b()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f

    move v3, v5

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_1a2

    if-ltz v0, :cond_198

    if-ltz v1, :cond_18e

    if-gt v0, v1, :cond_1a

    move v3, v5

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    const-string v6, "start should be <= than end"

    invoke-static {v3, v6}, La/b;->m(ZLjava/lang/String;)V

    const/4 v3, 0x0

    if-nez v2, :cond_24

    return-object v3

    :cond_24
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v0, v6, :cond_2c

    move v6, v5

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    :goto_2d
    const-string v7, "start should be < than charSequence length"

    invoke-static {v6, v7}, La/b;->m(ZLjava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v1, v6, :cond_3a

    move v6, v5

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    :goto_3b
    const-string v7, "end should be < than charSequence length"

    invoke-static {v6, v7}, La/b;->m(ZLjava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_18b

    if-ne v0, v1, :cond_4a

    goto/16 :goto_18b

    :cond_4a
    move-object/from16 v6, p0

    iget-object v7, v6, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    iget-object v7, v7, Landroidx/emoji2/text/f$a;->b:Landroidx/emoji2/text/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v2, Landroidx/emoji2/text/p;

    if-eqz v8, :cond_5d

    move-object v9, v2

    check-cast v9, Landroidx/emoji2/text/p;

    invoke-virtual {v9}, Landroidx/emoji2/text/p;->a()V

    :cond_5d
    if-nez v8, :cond_7d

    :try_start_5f
    instance-of v9, v2, Landroid/text/Spannable;

    if-eqz v9, :cond_64

    goto :goto_7d

    :cond_64
    instance-of v9, v2, Landroid/text/Spanned;

    if-eqz v9, :cond_85

    move-object v9, v2

    check-cast v9, Landroid/text/Spanned;

    add-int/lit8 v10, v0, -0x1

    add-int/lit8 v11, v1, 0x1

    const-class v12, Landroidx/emoji2/text/k;

    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    if-gt v9, v1, :cond_85

    new-instance v3, Landroidx/emoji2/text/r;

    invoke-direct {v3, v2}, Landroidx/emoji2/text/r;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_85

    :cond_7d
    :goto_7d
    new-instance v3, Landroidx/emoji2/text/r;

    move-object v9, v2

    check-cast v9, Landroid/text/Spannable;

    invoke-direct {v3, v9}, Landroidx/emoji2/text/r;-><init>(Landroid/text/Spannable;)V

    :cond_85
    :goto_85
    if-eqz v3, :cond_b2

    const-class v9, Landroidx/emoji2/text/k;

    invoke-virtual {v3, v0, v1, v9}, Landroidx/emoji2/text/r;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroidx/emoji2/text/k;

    if-eqz v9, :cond_b2

    array-length v10, v9

    if-lez v10, :cond_b2

    array-length v10, v9

    const/4 v11, 0x0

    :goto_96
    if-ge v11, v10, :cond_b2

    aget-object v12, v9, v11

    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    if-eq v13, v1, :cond_a7

    invoke-virtual {v3, v12}, Landroidx/emoji2/text/r;->removeSpan(Ljava/lang/Object;)V

    :cond_a7
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    :cond_b2
    if-eq v0, v1, :cond_177

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v0, v9, :cond_bc

    goto/16 :goto_177

    :cond_bc
    const v9, 0x7fffffff

    new-instance v10, Landroidx/emoji2/text/j$a;

    iget-object v11, v7, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/o;

    iget-object v11, v11, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/o$a;

    invoke-direct {v10, v11}, Landroidx/emoji2/text/j$a;-><init>(Landroidx/emoji2/text/o$a;)V

    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    const/4 v12, 0x0

    :goto_cd
    move v13, v11

    :cond_ce
    :goto_ce
    move v11, v0

    :cond_cf
    :goto_cf
    const/4 v14, 0x2

    const/16 v15, 0x21

    if-ge v0, v1, :cond_129

    if-ge v12, v9, :cond_129

    invoke-virtual {v10, v13}, Landroidx/emoji2/text/j$a;->a(I)I

    move-result v4

    if-eq v4, v5, :cond_119

    if-eq v4, v14, :cond_10d

    const/4 v14, 0x3

    if-eq v4, v14, :cond_e2

    goto :goto_cf

    :cond_e2
    iget-object v4, v10, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    iget-object v4, v4, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    invoke-virtual {v7, v2, v11, v0, v4}, Landroidx/emoji2/text/j;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z

    move-result v4

    if-nez v4, :cond_10b

    if-nez v3, :cond_f8

    new-instance v3, Landroidx/emoji2/text/r;

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v4}, Landroidx/emoji2/text/r;-><init>(Landroid/text/Spannable;)V

    :cond_f8
    iget-object v4, v10, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    iget-object v4, v4, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    iget-object v14, v7, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroidx/emoji2/text/q;

    invoke-direct {v14, v4}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/i;)V

    invoke-virtual {v3, v14, v11, v0, v15}, Landroidx/emoji2/text/r;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v12, v12, 0x1

    :cond_10b
    move v11, v13

    goto :goto_cd

    :cond_10d
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    if-ge v0, v1, :cond_cf

    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v13

    goto :goto_cf

    :cond_119
    invoke-static {v2, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v11

    if-ge v0, v1, :cond_ce

    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v13

    goto :goto_ce

    :cond_129
    iget v1, v10, Landroidx/emoji2/text/j$a;->a:I

    if-ne v1, v14, :cond_13f

    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    if-eqz v1, :cond_13f

    iget v1, v10, Landroidx/emoji2/text/j$a;->f:I

    if-gt v1, v5, :cond_13d

    invoke-virtual {v10}, Landroidx/emoji2/text/j$a;->c()Z

    move-result v1

    if-eqz v1, :cond_13f

    :cond_13d
    move v4, v5

    goto :goto_140

    :cond_13f
    const/4 v4, 0x0

    :goto_140
    if-eqz v4, :cond_167

    if-ge v12, v9, :cond_167

    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    invoke-virtual {v7, v2, v11, v0, v1}, Landroidx/emoji2/text/j;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z

    move-result v1

    if-nez v1, :cond_167

    if-nez v3, :cond_156

    new-instance v1, Landroidx/emoji2/text/r;

    invoke-direct {v1, v2}, Landroidx/emoji2/text/r;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v1

    :cond_156
    iget-object v1, v10, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v1, v1, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    iget-object v4, v7, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/emoji2/text/q;

    invoke-direct {v4, v1}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/i;)V

    invoke-virtual {v3, v4, v11, v0, v15}, Landroidx/emoji2/text/r;->setSpan(Ljava/lang/Object;III)V

    :cond_167
    if-eqz v3, :cond_174

    iget-object v0, v3, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;
    :try_end_16b
    .catchall {:try_start_5f .. :try_end_16b} :catchall_181

    if-eqz v8, :cond_180

    move-object v1, v2

    check-cast v1, Landroidx/emoji2/text/p;

    invoke-virtual {v1}, Landroidx/emoji2/text/p;->b()V

    goto :goto_180

    :cond_174
    if-eqz v8, :cond_17f

    goto :goto_179

    :cond_177
    :goto_177
    if-eqz v8, :cond_17f

    :goto_179
    move-object v0, v2

    check-cast v0, Landroidx/emoji2/text/p;

    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()V

    :cond_17f
    move-object v0, v2

    :cond_180
    :goto_180
    return-object v0

    :catchall_181
    move-exception v0

    if-eqz v8, :cond_18a

    move-object v1, v2

    check-cast v1, Landroidx/emoji2/text/p;

    invoke-virtual {v1}, Landroidx/emoji2/text/p;->b()V

    :cond_18a
    throw v0

    :cond_18b
    :goto_18b
    move-object/from16 v6, p0

    return-object v2

    :cond_18e
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_198
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a2
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Landroidx/emoji2/text/f$e;)V
    .registers 7

    if-eqz p1, :cond_47

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    iget v0, p0, Landroidx/emoji2/text/f;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    iget v0, p0, Landroidx/emoji2/text/f;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroidx/emoji2/text/f;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/f$f;

    iget v3, p0, Landroidx/emoji2/text/f;->c:I

    new-array v1, v1, [Landroidx/emoji2/text/f$e;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v2, p1, v3, v1}, Landroidx/emoji2/text/f$f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_3c

    :goto_32
    iget-object p1, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3c
    move-exception p1

    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "initCallback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
