.class public Lcom/xiaomi/stat/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ClientConfigMoniter"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static g:Landroid/content/Context;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/xiaomi/stat/c/a;->g:Landroid/content/Context;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    sput-object v0, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    .line 49
    const/16 v1, 0x8

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    .line 60
    const/4 v1, 0x5

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v1

    .line 65
    const/16 v2, 0x10

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lcom/xiaomi/stat/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-static {v3, p0}, Lcom/xiaomi/stat/c/a;->a(ILjava/lang/String;)Z

    move-result v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_33

    if-eqz v3, :cond_b

    or-int/2addr v0, v2

    goto :goto_b

    :catch_33
    move-exception p0

    const-string v1, "ClientConfigMoniter"

    const-string v2, "getClientConfiguration exception"

    .line 7
    invoke-static {v1, v2, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    return v0
.end method

.method private static a(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 p1, 0x3

    if-eq p0, p1, :cond_13

    const/4 p1, 0x5

    if-eq p0, p1, :cond_e

    goto :goto_2a

    .line 8
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/xiaomi/stat/b;->g()Z

    move-result v1

    goto :goto_2a

    .line 9
    :cond_13
    invoke-static {}, Lcom/xiaomi/stat/d/k;->a()Z

    move-result v1

    goto :goto_2a

    .line 10
    :cond_18
    invoke-static {p1}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2a

    .line 11
    :cond_1d
    invoke-static {}, Lcom/xiaomi/stat/b;->u()Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    const-string p1, "ClientConfigMoniter"

    const-string v0, "checkSetting exception"

    .line 12
    invoke-static {p1, v0, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return v1
.end method
