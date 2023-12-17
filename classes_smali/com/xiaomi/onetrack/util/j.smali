.class public Lcom/xiaomi/onetrack/util/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "FbeUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FbeUtil"

    if-eqz v0, :cond_e

    const-string v0, "getSafeContext return origin ctx"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_e
    const-string v0, "getSafeContext , create the safe ctx"

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/preference/PreferenceManager;)V
    .registers 7

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ne v0, v3, :cond_10

    invoke-static {}, Lcom/xiaomi/onetrack/util/j;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    const/16 v4, 0x19

    if-ne v0, v4, :cond_1d

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/util/j;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    move v5, v2

    :goto_1e
    if-le v0, v4, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    if-nez v3, :cond_28

    if-nez v5, :cond_28

    if-eqz v1, :cond_2b

    .line 13
    :cond_28
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    :cond_2b
    return-void
.end method

.method public static a()Z
    .registers 6

    const-string v0, "isFileEncryptedNativeOrEmulated"

    const/4 v1, 0x0

    .line 5
    :try_start_3
    const-class v2, Landroid/os/storage/StorageManager;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2e

    return v0

    :catch_2e
    move-exception v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FbeUtil"

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "keyguard"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/app/KeyguardManager;

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/util/j;->a()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_18

    .line 16
    if-eqz p0, :cond_18

    .line 18
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 21
    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    .line 22
    if-eqz p0, :cond_18

    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_18
    return v0

    .line 26
    :catch_19
    move-exception p0

    .line 27
    const-string v1, "FBEDeviceAndSetedUpScreenLock Exception: "

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    const-string v1, "FbeUtil"

    .line 46
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->b(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "user"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/UserManager;

    .line 10
    if-eqz p0, :cond_12

    .line 12
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 15
    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    .line 16
    if-eqz p0, :cond_12

    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_12
    return v0

    .line 20
    :catch_13
    move-exception p0

    .line 21
    const-string v1, "isUserUnlocked Exception: "

    .line 23
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    const-string v1, "FbeUtil"

    .line 40
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x18

    .line 7
    if-eq v0, v3, :cond_11

    .line 9
    const/16 v3, 0x19

    .line 11
    if-ne v0, v3, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    if-le v0, v3, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    return v2

    .line 18
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1d

    .line 24
    invoke-static {}, Lcom/xiaomi/onetrack/util/j;->a()Z

    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1e

    .line 30
    :cond_1d
    move v1, v2

    .line 31
    :cond_1e
    return v1
.end method
