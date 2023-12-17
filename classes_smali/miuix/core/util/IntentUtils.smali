.class public Lmiuix/core/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiFlags(Landroid/content/Intent;)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    :try_start_4
    const-class v1, Landroid/content/Intent;

    .line 7
    const-string v2, "getMiuiFlags"

    .line 9
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    new-array v4, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {v1, p0, v2, v3, v4}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_16} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_16} :catch_17

    .line 23
    return p0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    goto :goto_1c

    .line 26
    :catch_19
    move-exception p0

    .line 27
    goto :goto_1c

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, " getMiuiFlags error: "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string v1, "IntentUtils"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method

.method public static isIntentFromSettingsSplit(Landroid/content/Intent;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/IntentUtils;->getMiuiFlags(Landroid/content/Intent;)I

    .line 4
    move-result p0

    .line 5
    and-int/lit8 p0, p0, 0x10

    .line 7
    if-eqz p0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method
