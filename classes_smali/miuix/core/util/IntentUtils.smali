.class public Lmiuix/core/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiFlags(Landroid/content/Intent;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-class v1, Landroid/content/Intent;

    const-string v2, "getMiuiFlags"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_16} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    goto :goto_1c

    :catch_19
    move-exception p0

    goto :goto_1c

    :catch_1b
    move-exception p0

    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getMiuiFlags error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IntentUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isIntentFromSettingsSplit(Landroid/content/Intent;)Z
    .registers 1

    invoke-static {p0}, Lmiuix/core/util/IntentUtils;->getMiuiFlags(Landroid/content/Intent;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
