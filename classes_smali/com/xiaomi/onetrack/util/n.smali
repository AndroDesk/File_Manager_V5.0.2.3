.class public Lcom/xiaomi/onetrack/util/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "IdentifierManager"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 17
    const-string v1, "getUDID"

    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v3, v2, [Ljava/lang/Class;

    .line 22
    const-class v4, Landroid/content/Context;

    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v4, v3, v5

    .line 27
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->d:Ljava/lang/reflect/Method;

    .line 33
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 35
    const-string v1, "getOAID"

    .line 37
    new-array v3, v2, [Ljava/lang/Class;

    .line 39
    const-class v4, Landroid/content/Context;

    .line 41
    aput-object v4, v3, v5

    .line 43
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    .line 49
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 51
    const-string v1, "getVAID"

    .line 53
    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    const-class v4, Landroid/content/Context;

    .line 57
    aput-object v4, v3, v5

    .line 59
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->f:Ljava/lang/reflect/Method;

    .line 65
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 67
    const-string v1, "getAAID"

    .line 69
    new-array v2, v2, [Ljava/lang/Class;

    .line 71
    const-class v3, Landroid/content/Context;

    .line 73
    aput-object v3, v2, v5

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/xiaomi/onetrack/util/n;->g:Ljava/lang/reflect/Method;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 81
    goto :goto_59

    .line 82
    :catch_51
    move-exception v0

    .line 83
    const-string v1, "IdentifierManager"

    .line 85
    const-string v2, "reflect exception!"

    .line 87
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->d:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 5
    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "IdentifierManager"

    const-string v0, "invoke exception!"

    .line 6
    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    const-string p0, ""

    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->f:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->g:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
