.class public final Lf0/i;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/i$a;
    }
.end annotation


# static fields
.field public static final a:Lf0/p;

.field public static final b:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    new-instance v0, Lf0/n;

    invoke-direct {v0}, Lf0/n;-><init>()V

    sput-object v0, Lf0/i;->a:Lf0/p;

    goto :goto_47

    :cond_e
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1a

    new-instance v0, Lf0/m;

    invoke-direct {v0}, Lf0/m;-><init>()V

    sput-object v0, Lf0/i;->a:Lf0/p;

    goto :goto_47

    :cond_1a
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    new-instance v0, Lf0/l;

    invoke-direct {v0}, Lf0/l;-><init>()V

    sput-object v0, Lf0/i;->a:Lf0/p;

    goto :goto_47

    :cond_26
    sget-object v0, Lf0/k;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_31

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_40

    new-instance v0, Lf0/k;

    invoke-direct {v0}, Lf0/k;-><init>()V

    sput-object v0, Lf0/i;->a:Lf0/p;

    goto :goto_47

    :cond_40
    new-instance v0, Lf0/j;

    invoke-direct {v0}, Lf0/j;-><init>()V

    sput-object v0, Lf0/i;->a:Lf0/p;

    :goto_47
    new-instance v0, Landroidx/collection/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/e;-><init>(I)V

    sput-object v0, Lf0/i;->b:Landroidx/collection/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .registers 16

    instance-of v0, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    const/4 v1, -0x3

    if-eqz v0, :cond_14c

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_29

    :cond_16
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v0, :cond_29

    invoke-virtual {v0, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_2a

    :cond_29
    :goto_29
    move-object v0, v2

    :goto_2a
    if-eqz v0, :cond_32

    if-eqz p7, :cond_31

    invoke-virtual {p7, v0, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_31
    return-object v0

    :cond_32
    const/4 v0, 0x1

    if-eqz p9, :cond_3c

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_3e

    :cond_3c
    if-nez p7, :cond_3f

    :goto_3e
    move v3, v0

    :cond_3f
    const/4 v0, -0x1

    if-eqz p9, :cond_47

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result p9

    goto :goto_48

    :cond_47
    move p9, v0

    :goto_48
    invoke-static {p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p8

    new-instance v4, Lf0/i$a;

    invoke-direct {v4, p7}, Lf0/i$a;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Lj0/f;

    move-result-object p1

    new-instance p7, Lj0/c;

    invoke-direct {p7, v4, p8}, Lj0/c;-><init>(Lf0/i$a;Landroid/os/Handler;)V

    if-eqz v3, :cond_d0

    sget-object v3, Lj0/k;->a:Landroidx/collection/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lj0/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lj0/k;->a:Landroidx/collection/e;

    invoke-virtual {v5, v3}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_89

    new-instance p0, Lj0/a;

    invoke-direct {p0, v4, v5}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    invoke-virtual {p8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v5

    goto/16 :goto_15f

    :cond_89
    if-ne p9, v0, :cond_96

    invoke-static {v3, p0, p1, p6}, Lj0/k;->a(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)Lj0/k$a;

    move-result-object p0

    invoke-virtual {p7, p0}, Lj0/c;->a(Lj0/k$a;)V

    iget-object v2, p0, Lj0/k$a;->a:Landroid/graphics/Typeface;

    goto/16 :goto_15f

    :cond_96
    new-instance p8, Lj0/g;

    invoke-direct {p8, v3, p0, p1, p6}, Lj0/g;-><init>(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)V

    :try_start_9b
    sget-object p0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, p8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_a1} :catch_c2

    int-to-long p8, p9

    :try_start_a2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p8, p9, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a2 .. :try_end_a8} :catch_bb
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a8} :catch_b9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a2 .. :try_end_a8} :catch_b1

    :try_start_a8
    check-cast p0, Lj0/k$a;

    invoke-virtual {p7, p0}, Lj0/c;->a(Lj0/k$a;)V

    iget-object v2, p0, Lj0/k$a;->a:Landroid/graphics/Typeface;

    goto/16 :goto_15f

    :catch_b1
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_b9
    move-exception p0

    throw p0

    :catch_bb
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_c2} :catch_c2

    :catch_c2
    iget-object p0, p7, Lj0/c;->a:La/b;

    iget-object p1, p7, Lj0/c;->b:Landroid/os/Handler;

    new-instance p7, Lj0/b;

    invoke-direct {p7, p0, v1}, Lj0/b;-><init>(La/b;I)V

    invoke-virtual {p1, p7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15f

    :cond_d0
    sget-object p9, Lj0/k;->a:Landroidx/collection/e;

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lj0/f;->e:Ljava/lang/String;

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    sget-object v0, Lj0/k;->a:Landroidx/collection/e;

    invoke-virtual {v0, p9}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_fc

    new-instance p0, Lj0/a;

    invoke-direct {p0, v4, v0}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    invoke-virtual {p8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v0

    goto :goto_15f

    :cond_fc
    new-instance p8, Lj0/h;

    invoke-direct {p8, p7}, Lj0/h;-><init>(Lj0/c;)V

    sget-object v0, Lj0/k;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_104
    sget-object p7, Lj0/k;->d:Landroidx/collection/f;

    invoke-virtual {p7, p9}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_113

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_15f

    :cond_113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p9, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_11f
    .catchall {:try_start_104 .. :try_end_11f} :catchall_149

    new-instance p7, Lj0/i;

    invoke-direct {p7, p9, p0, p1, p6}, Lj0/i;-><init>(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)V

    sget-object p0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Lj0/j;

    invoke-direct {p1, p9}, Lj0/j;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p8

    if-nez p8, :cond_13b

    new-instance p8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p9

    invoke-direct {p8, p9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_140

    :cond_13b
    new-instance p8, Landroid/os/Handler;

    invoke-direct {p8}, Landroid/os/Handler;-><init>()V

    :goto_140
    new-instance p9, Lj0/o;

    invoke-direct {p9, p8, p7, p1}, Lj0/o;-><init>(Landroid/os/Handler;Lj0/i;Lj0/j;)V

    invoke-virtual {p0, p9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15f

    :catchall_149
    move-exception p0

    :try_start_14a
    monitor-exit v0
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw p0

    :cond_14c
    sget-object p9, Lf0/i;->a:Lf0/p;

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-virtual {p9, p0, p1, p2, p6}, Lf0/p;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz p7, :cond_15f

    if-eqz v2, :cond_15c

    invoke-virtual {p7, v2, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_15f

    :cond_15c
    invoke-virtual {p7, v1, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_15f
    :goto_15f
    if-eqz v2, :cond_16a

    sget-object p0, Lf0/i;->b:Landroidx/collection/e;

    invoke-static {p2, p3, p4, p5, p6}, Lf0/i;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16a
    return-object v2
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
