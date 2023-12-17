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

    .line 1
    new-instance v0, Landroidx/collection/e;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/e;-><init>(I)V

    .line 8
    sput-object v0, Lj0/k;->a:Landroidx/collection/e;

    .line 10
    new-instance v9, Lj0/n;

    .line 12
    invoke-direct {v9}, Lj0/n;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    const/16 v1, 0x2710

    .line 19
    int-to-long v5, v1

    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 24
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 37
    sput-object v0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput-object v0, Lj0/k;->c:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroidx/collection/f;

    .line 48
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 51
    sput-object v0, Lj0/k;->d:Landroidx/collection/f;

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)Lj0/k$a;
    .registers 10

    .line 1
    sget-object v0, Lj0/k;->a:Landroidx/collection/e;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Typeface;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    new-instance p0, Lj0/k$a;

    .line 13
    invoke-direct {p0, v0}, Lj0/k$a;-><init>(Landroid/graphics/Typeface;)V

    .line 16
    return-object p0

    .line 17
    :cond_10
    :try_start_10
    invoke-static {p1, p2}, Lj0/e;->a(Landroid/content/Context;Lj0/f;)Lj0/l;

    .line 20
    move-result-object p2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_14} :catch_60

    .line 21
    iget v0, p2, Lj0/l;->a:I

    .line 23
    const/4 v1, -0x3

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    if-eq v0, v2, :cond_1d

    .line 29
    goto :goto_34

    .line 30
    :cond_1d
    const/4 v0, -0x2

    .line 31
    goto :goto_3d

    .line 32
    :cond_1f
    iget-object v0, p2, Lj0/l;->b:[Lj0/m;

    .line 34
    if-eqz v0, :cond_3c

    .line 36
    array-length v3, v0

    .line 37
    if-nez v3, :cond_27

    .line 39
    goto :goto_3c

    .line 40
    :cond_27
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_2a
    if-ge v4, v2, :cond_3b

    .line 45
    aget-object v5, v0, v4

    .line 47
    iget v5, v5, Lj0/m;->e:I

    .line 49
    if-eqz v5, :cond_38

    .line 51
    if-gez v5, :cond_36

    .line 53
    :goto_34
    move v0, v1

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    move v0, v5

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_2a

    .line 60
    :cond_3b
    move v2, v3

    .line 61
    :cond_3c
    :goto_3c
    move v0, v2

    .line 62
    :goto_3d
    if-eqz v0, :cond_45

    .line 64
    new-instance p0, Lj0/k$a;

    .line 66
    invoke-direct {p0, v0}, Lj0/k$a;-><init>(I)V

    .line 69
    return-object p0

    .line 70
    :cond_45
    iget-object p2, p2, Lj0/l;->b:[Lj0/m;

    .line 72
    sget-object v0, Lf0/i;->a:Lf0/p;

    .line 74
    invoke-virtual {v0, p1, p2, p3}, Lf0/p;->b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;

    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_5a

    .line 80
    sget-object p2, Lj0/k;->a:Landroidx/collection/e;

    .line 82
    invoke-virtual {p2, p0, p1}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance p0, Lj0/k$a;

    .line 87
    invoke-direct {p0, p1}, Lj0/k$a;-><init>(Landroid/graphics/Typeface;)V

    .line 90
    return-object p0

    .line 91
    :cond_5a
    new-instance p0, Lj0/k$a;

    .line 93
    invoke-direct {p0, v1}, Lj0/k$a;-><init>(I)V

    .line 96
    return-object p0

    .line 97
    :catch_60
    new-instance p0, Lj0/k$a;

    .line 99
    const/4 p1, -0x1

    .line 100
    invoke-direct {p0, p1}, Lj0/k$a;-><init>(I)V

    .line 103
    return-object p0
.end method
