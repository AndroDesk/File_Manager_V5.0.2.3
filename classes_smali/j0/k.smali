.class public final Lj0/k;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/k$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final c:Ljava/lang/Object;

.field public static final d:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ll0/a<",
            "Lj0/k$a;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Landroidx/collection/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/e;-><init>(I)V

    sput-object v0, Lj0/k;->a:Landroidx/collection/e;

    new-instance v9, Lj0/n;

    invoke-direct {v9}, Lj0/n;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x2710

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj0/k;->c:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    sput-object v0, Lj0/k;->d:Landroidx/collection/f;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)Lj0/k$a;
    .registers 10

    sget-object v0, Lj0/k;->a:Landroidx/collection/e;

    invoke-virtual {v0, p0}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_10

    new-instance p0, Lj0/k$a;

    invoke-direct {p0, v0}, Lj0/k$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_10
    :try_start_10
    invoke-static {p1, p2}, Lj0/e;->a(Landroid/content/Context;Lj0/f;)Lj0/l;

    move-result-object p2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_14} :catch_60

    iget v0, p2, Lj0/l;->a:I

    const/4 v1, -0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    if-eq v0, v2, :cond_1d

    goto :goto_34

    :cond_1d
    const/4 v0, -0x2

    goto :goto_3d

    :cond_1f
    iget-object v0, p2, Lj0/l;->b:[Lj0/m;

    if-eqz v0, :cond_3c

    array-length v3, v0

    if-nez v3, :cond_27

    goto :goto_3c

    :cond_27
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    if-ge v4, v2, :cond_3b

    aget-object v5, v0, v4

    iget v5, v5, Lj0/m;->e:I

    if-eqz v5, :cond_38

    if-gez v5, :cond_36

    :goto_34
    move v0, v1

    goto :goto_3d

    :cond_36
    move v0, v5

    goto :goto_3d

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_3b
    move v2, v3

    :cond_3c
    :goto_3c
    move v0, v2

    :goto_3d
    if-eqz v0, :cond_45

    new-instance p0, Lj0/k$a;

    invoke-direct {p0, v0}, Lj0/k$a;-><init>(I)V

    return-object p0

    :cond_45
    iget-object p2, p2, Lj0/l;->b:[Lj0/m;

    sget-object v0, Lf0/i;->a:Lf0/p;

    invoke-virtual {v0, p1, p2, p3}, Lf0/p;->b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_5a

    sget-object p2, Lj0/k;->a:Landroidx/collection/e;

    invoke-virtual {p2, p0, p1}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lj0/k$a;

    invoke-direct {p0, p1}, Lj0/k$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_5a
    new-instance p0, Lj0/k$a;

    invoke-direct {p0, v1}, Lj0/k$a;-><init>(I)V

    return-object p0

    :catch_60
    new-instance p0, Lj0/k$a;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lj0/k$a;-><init>(I)V

    return-object p0
.end method
