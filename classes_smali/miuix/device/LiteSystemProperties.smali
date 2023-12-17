.class Lmiuix/device/LiteSystemProperties;
.super Ljava/lang/Object;
.source "LiteSystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteSystemProperties"

.field private static pClassSystemProperties:Ljava/lang/Class;

.field private static pGet:Ljava/lang/reflect/Method;

.field private static pGetInt:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lmiuix/device/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 11
    goto :goto_e

    .line 12
    :catch_b
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lmiuix/device/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    .line 15
    :goto_e
    sget-object v1, Lmiuix/device/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    .line 17
    if-eqz v1, :cond_3b

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    :try_start_15
    const-string v5, "get"

    .line 24
    new-array v6, v3, [Ljava/lang/Class;

    .line 26
    aput-object v0, v6, v2

    .line 28
    aput-object v0, v6, v4

    .line 30
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lmiuix/device/LiteSystemProperties;->pGet:Ljava/lang/reflect/Method;

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_26

    .line 39
    :catch_26
    :try_start_26
    sget-object v1, Lmiuix/device/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    .line 41
    const-string v5, "getInt"

    .line 43
    new-array v3, v3, [Ljava/lang/Class;

    .line 45
    aput-object v0, v3, v2

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    aput-object v0, v3, v4

    .line 51
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lmiuix/device/LiteSystemProperties;->pGetInt:Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    :cond_3b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 4
    invoke-static {p0, v0}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/device/LiteSystemProperties;->pGet:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LiteSystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-object p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 7

    .line 1
    sget-object v0, Lmiuix/device/LiteSystemProperties;->pGetInt:Ljava/lang/reflect/Method;

    .line 3
    if-eqz v0, :cond_3c

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p0, v2, v3

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v4

    .line 17
    aput-object v4, v2, v3

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1d

    .line 29
    return p0

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "key: "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p0, " detail:"

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string v0, "LiteSystemProperties"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3c
    return p1
.end method
