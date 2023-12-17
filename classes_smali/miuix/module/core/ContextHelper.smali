.class Lmiuix/module/core/ContextHelper;
.super Ljava/lang/Object;
.source "ContextHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/module/core/ContextHelper;->getDexPath(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 7
    invoke-direct {v0, p0, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 10
    return-object v0
.end method

.method private static getDexPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 9
    move-result-object p0

    .line 10
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 12
    and-int/lit8 v1, v1, 0x4

    .line 14
    if-eqz v1, :cond_14

    .line 16
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_14
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 23
    if-eqz p0, :cond_1b

    .line 25
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p0, v1, :cond_2a

    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;

    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    sget-object p0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 45
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    :goto_30
    return-object p0
.end method
