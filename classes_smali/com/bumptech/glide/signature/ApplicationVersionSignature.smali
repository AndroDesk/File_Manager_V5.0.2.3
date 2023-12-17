.class public final Lcom/bumptech/glide/signature/ApplicationVersionSignature;
.super Ljava/lang/Object;
.source "ApplicationVersionSignature.java"


# static fields
.field private static final PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppVersionSignature"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return-object p0

    .line 15
    :catch_e
    move-exception v0

    .line 16
    const-string v1, "Cannot resolve info for"

    .line 18
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string v1, "AppVersionSignature"

    .line 35
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method private static getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    if-eqz p0, :cond_9

    .line 3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    :goto_11
    return-object p0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/bumptech/glide/load/Key;

    .line 13
    if-nez v2, :cond_1c

    .line 15
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/bumptech/glide/load/Key;

    .line 25
    if-nez p0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move-object v2, p0

    .line 29
    :cond_1c
    :goto_1c
    return-object v2
.end method

.method private static obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 11
    invoke-direct {v0, p0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 14
    return-object v0
.end method

.method public static reset()V
    .registers 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method
