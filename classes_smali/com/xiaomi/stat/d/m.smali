.class public Lcom/xiaomi/stat/d/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1c

.field private static final b:Ljava/lang/String; = "OSUtil"

.field private static final c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/Class;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_2
    const-string v2, "android.os.SystemProperties"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "get"

    .line 11
    new-array v4, v1, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v0

    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    sput-object v2, Lcom/xiaomi/stat/d/m;->d:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_16

    .line 23
    :catch_16
    :try_start_16
    const-string v2, "miui.os.Build"

    .line 25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    :try_start_1e
    const-string v2, "android.provider.MiuiSettings$Secure"

    .line 33
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v2

    .line 37
    const-string v3, "isUserExperienceProgramEnable"

    .line 39
    new-array v4, v1, [Ljava/lang/Class;

    .line 41
    const-class v5, Landroid/content/ContentResolver;

    .line 43
    aput-object v5, v4, v0

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_35

    .line 54
    :catch_35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    const v0, 0xea60

    .line 8
    :try_start_3
    div-int/2addr p0, v0

    const/16 v0, 0x2b

    if-gez p0, :cond_b

    const/16 v0, 0x2d

    neg-int p0, p0

    .line 9
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GMT"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    div-int/lit8 v0, p0, 0x3c

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/StringBuilder;I)V

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "gsm.operator.numeric"

    .line 20
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, ","

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    array-length v3, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_3a

    aget-object v5, v0, v4

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "00000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_34

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 29
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v0, "phone"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 32
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_50
    if-nez v0, :cond_54

    const-string v0, ""

    :cond_54
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 33
    :try_start_1
    sget-object v1, Lcom/xiaomi/stat/d/m;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 34
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string v1, "getProp failed ex: "

    .line 35
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OSUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 17
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_15

    const/16 v1, 0x30

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 19
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    goto :goto_1e

    .line 6
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    .line 7
    :goto_1e
    sget-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "Android"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v2, 0x0

    .line 8
    :try_start_7
    new-array v3, v1, [Ljava/lang/Object;

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 15
    aput-object p0, v3, v4

    .line 17
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 27
    return p0

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    const-string v0, "isUserExperiencePlanEnabled failed: "

    .line 31
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v0

    .line 35
    const-string v2, "OSUtil"

    .line 37
    invoke-static {p0, v0, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    return v1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    .line 9
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_9} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 10
    goto :goto_2b

    .line 11
    :catch_a
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_2b

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    :goto_2b
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "_"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "ro.miui.region"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_14

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    if-nez v0, :cond_18

    .line 23
    const-string v0, ""

    .line 25
    :cond_18
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    .line 3
    if-eqz v0, :cond_54

    .line 5
    :try_start_4
    const-string v1, "IS_ALPHA_BUILD"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const-string v0, "A"

    .line 26
    return-object v0

    .line 27
    :cond_1a
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    .line 29
    const-string v2, "IS_DEVELOPMENT_VERSION"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_31

    .line 47
    const-string v0, "D"

    .line 49
    return-object v0

    .line 50
    :cond_31
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    .line 52
    const-string v2, "IS_STABLE_VERSION"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_54

    .line 70
    const-string v0, "S"
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48

    .line 72
    return-object v0

    .line 73
    :catch_48
    move-exception v0

    .line 74
    const-string v1, "getRomBuildCode failed: "

    .line 76
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v1

    .line 80
    const-string v2, "OSUtil"

    .line 82
    invoke-static {v0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    :cond_54
    const-string v0, ""

    .line 87
    return-object v0
.end method

.method public static i()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    :try_start_4
    const-string v1, "IS_INTERNATIONAL_BUILD"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 22
    return v0

    .line 23
    :catch_16
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method
