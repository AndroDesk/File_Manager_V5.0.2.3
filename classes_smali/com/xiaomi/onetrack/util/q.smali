.class public Lcom/xiaomi/onetrack/util/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1d

.field public static final b:I = 0x19

.field public static final c:I = 0x18

.field public static final d:I = 0x17

.field public static final e:I = 0x16

.field public static final f:I = 0x15

.field public static final g:I = 0x13

.field public static final h:I = 0x11

.field public static final i:I = 0x1c

.field private static final j:Ljava/lang/String; = "OsUtil"

.field private static k:Ljava/lang/Class; = null

.field private static l:Ljava/lang/reflect/Method; = null

.field private static m:Ljava/lang/Boolean; = null

.field private static final n:Ljava/lang/String; = ""

.field private static o:Ljava/lang/reflect/Method; = null

.field private static p:Z = false

.field private static q:Ljava/lang/String; = null

.field private static r:Z = false

.field private static s:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "OsUtil"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_4
    const-string v3, "android.os.SystemProperties"

    .line 7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v3

    .line 11
    const-string v4, "get"

    .line 13
    new-array v5, v2, [Ljava/lang/Class;

    .line 15
    const-class v6, Ljava/lang/String;

    .line 17
    aput-object v6, v5, v1

    .line 19
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v3

    .line 23
    sput-object v3, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    .line 25
    goto :goto_2e

    .line 26
    :catchall_19
    move-exception v3

    .line 27
    const-string v4, "sGetProp init failed ex: "

    .line 29
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_2e
    :try_start_2e
    const-string v3, "miui.os.Build"

    .line 49
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    sput-object v3, Lcom/xiaomi/onetrack/util/q;->k:Ljava/lang/Class;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    .line 55
    goto :goto_4c

    .line 56
    :catchall_37
    move-exception v3

    .line 57
    const-string v4, "sMiuiBuild init failed ex: "

    .line 59
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_4c
    :try_start_4c
    const-string v3, "android.provider.MiuiSettings$Secure"

    .line 79
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    move-result-object v3

    .line 83
    const-string v4, "isUserExperienceProgramEnable"

    .line 85
    new-array v5, v2, [Ljava/lang/Class;

    .line 87
    const-class v6, Landroid/content/ContentResolver;

    .line 89
    aput-object v6, v5, v1

    .line 91
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    move-result-object v1

    .line 95
    sput-object v1, Lcom/xiaomi/onetrack/util/q;->l:Ljava/lang/reflect/Method;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_64

    .line 100
    goto :goto_79

    .line 101
    :catchall_64
    move-exception v1

    .line 102
    const-string v2, "sMiuiUEPMethod init failed ex: "

    .line 104
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_79
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

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/StringBuilder;I)V

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    const-string p0, ""

    return-object p0
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

.method public static a(Z)V
    .registers 1

    .line 44
    sput-boolean p0, Lcom/xiaomi/onetrack/util/q;->r:Z

    return-void
.end method

.method public static a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V
    .registers 4

    .line 37
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_6

    const/4 p2, 0x3

    goto :goto_13

    .line 38
    :cond_6
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_c

    const/4 p2, 0x2

    goto :goto_13

    .line 39
    :cond_c
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    .line 40
    :goto_13
    sget v0, Lcom/xiaomi/onetrack/util/q;->s:I

    if-gt v0, p2, :cond_1d

    .line 41
    sput-boolean p0, Lcom/xiaomi/onetrack/util/q;->p:Z

    .line 42
    sput-object p1, Lcom/xiaomi/onetrack/util/q;->q:Ljava/lang/String;

    .line 43
    sput p2, Lcom/xiaomi/onetrack/util/q;->s:I

    :cond_1d
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->m:Ljava/lang/Boolean;

    goto :goto_1e

    .line 6
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->m:Ljava/lang/Boolean;

    .line 7
    :goto_1e
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 20
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    const-string v0, "isUserExperiencePlanEnabled failed: "

    .line 22
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "OsUtil"

    .line 23
    invoke-static {p0, v0, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 31
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const-string v1, "should not access network or location, cta"

    const/4 v2, 0x1

    if-nez v0, :cond_28

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_28

    .line 32
    :cond_10
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "should not access network or location, not provisioned"

    .line 33
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 34
    :cond_1c
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_26

    .line 35
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_26
    const/4 p0, 0x0

    return p0

    .line 36
    :cond_28
    :goto_28
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 8
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 2
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

    .line 3
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OsUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->k:Ljava/lang/Class;

    .line 3
    if-eqz v0, :cond_65

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
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->k:Ljava/lang/Class;

    .line 29
    const-string v2, "IS_STABLE_VERSION"

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
    const-string v0, "S"

    .line 49
    return-object v0

    .line 50
    :cond_31
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 52
    const-string v2, ".DEV"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v0

    .line 58
    sget-object v2, Lcom/xiaomi/onetrack/util/q;->k:Ljava/lang/Class;

    .line 60
    const-string v3, "IS_DEVELOPMENT_VERSION"

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_52

    .line 78
    if-nez v0, :cond_52

    .line 80
    const-string v0, "D"

    .line 82
    return-object v0

    .line 83
    :cond_52
    if-eqz v1, :cond_65

    .line 85
    if-eqz v0, :cond_65

    .line 87
    const-string v0, "X"
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_59

    .line 89
    return-object v0

    .line 90
    :catch_59
    move-exception v0

    .line 91
    const-string v1, "getRomBuildCode failed: "

    .line 93
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v1

    .line 97
    const-string v2, "OsUtil"

    .line 99
    invoke-static {v0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    :cond_65
    const-string v0, ""

    .line 104
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
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static f()I
    .registers 9

    .line 1
    const-string v0, "OsUtil"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_4
    const-string v3, "android.os.UserHandle"

    .line 7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v3

    .line 11
    const-string v4, "getUserId"

    .line 13
    const/4 v5, 0x1

    .line 14
    new-array v6, v5, [Ljava/lang/Class;

    .line 16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    aput-object v7, v6, v2

    .line 20
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 30
    move-result v4

    .line 31
    new-array v6, v5, [Ljava/lang/Object;

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v7

    .line 37
    aput-object v7, v6, v2

    .line 39
    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Integer;
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_43

    .line 45
    :try_start_2c
    const-string v1, "getUserId, uid:%d, userId:%d"

    .line 47
    const/4 v6, 0x2

    .line 48
    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 54
    aput-object v4, v6, v2

    .line 56
    aput-object v3, v6, v5

    .line 58
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_41

    .line 65
    goto :goto_5f

    .line 66
    :catchall_41
    move-exception v1

    .line 67
    goto :goto_47

    .line 68
    :catchall_43
    move-exception v3

    .line 69
    move-object v8, v3

    .line 70
    move-object v3, v1

    .line 71
    move-object v1, v8

    .line 72
    :goto_47
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    const-string v4, "getUserId exception: "

    .line 78
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_5f
    if-nez v3, :cond_65

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v3

    .line 102
    :cond_65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v0

    .line 106
    return v0
.end method

.method public static g()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    const-string v0, "OsUtil"

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v2

    .line 12
    const-string v3, "device_provisioned"

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_15

    .line 21
    move v4, v1

    .line 22
    :cond_15
    if-nez v4, :cond_2b

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v3, "Provisioned: "

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    .line 44
    :cond_2b
    return v4

    .line 45
    :catch_2c
    move-exception v2

    .line 46
    const-string v3, "isDeviceProvisioned exception"

    .line 48
    invoke-static {v0, v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return v1
.end method

.method public static h()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->r:Z

    .line 9
    if-nez v0, :cond_f

    .line 11
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->l()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->p:Z

    .line 18
    return v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->r:Z

    .line 9
    if-nez v0, :cond_f

    .line 11
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->q:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1a

    .line 24
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->q:Ljava/lang/String;

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :goto_1e
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    const-string v1, "ro.miui.region"

    .line 5
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_14

    .line 15
    const-string v1, "ro.product.locale.region"

    .line 17
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_84

    .line 27
    const-string v2, "android.os.LocaleList"

    .line 29
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    move-result-object v2

    .line 33
    const-string v3, "getDefault"

    .line 35
    const/4 v4, 0x0

    .line 36
    new-array v5, v4, [Ljava/lang/Class;

    .line 38
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    new-array v5, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    const-string v5, "size"

    .line 55
    new-array v6, v4, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    move-result-object v3

    .line 61
    new-array v5, v4, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    instance-of v5, v3, Ljava/lang/Integer;

    .line 69
    if-eqz v5, :cond_84

    .line 71
    check-cast v3, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v3

    .line 77
    if-lez v3, :cond_84

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object v3

    .line 83
    const-string v5, "get"

    .line 85
    const/4 v6, 0x1

    .line 86
    new-array v7, v6, [Ljava/lang/Class;

    .line 88
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 90
    aput-object v8, v7, v4

    .line 92
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    move-result-object v3

    .line 96
    new-array v5, v6, [Ljava/lang/Object;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v6

    .line 102
    aput-object v6, v5, v4

    .line 104
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    move-result-object v3

    .line 112
    const-string v5, "getCountry"

    .line 114
    new-array v6, v4, [Ljava/lang/Class;

    .line 116
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 119
    move-result-object v3

    .line 120
    new-array v4, v4, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    instance-of v3, v2, Ljava/lang/String;

    .line 128
    if-eqz v3, :cond_84

    .line 130
    move-object v1, v2

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 133
    :cond_84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_92

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    :cond_92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_b4

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    move-result-object v0
    :try_end_9c
    .catchall {:try_start_2 .. :try_end_9c} :catchall_9d

    .line 157
    return-object v0

    .line 158
    :catchall_9d
    move-exception v1

    .line 159
    const-string v2, "getRegion Exception: "

    .line 161
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    const-string v2, "OsUtil"

    .line 178
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_b4
    return-object v0
.end method

.method private static l()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->k:Ljava/lang/Class;

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
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2d

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "CN"

    .line 39
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    xor-int/lit8 v0, v0, 0x1

    .line 45
    return v0

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    return v0
.end method
