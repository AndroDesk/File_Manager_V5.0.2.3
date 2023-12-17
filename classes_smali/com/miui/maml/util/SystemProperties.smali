.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static classSystemProperties:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static isSupportGet:Z

.field private static isSupportGetBoolean:Z

.field private static isSupportGetInt:Z

.field private static isSupportGetLong:Z

.field private static isSupportSet:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    :goto_e
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    if-eqz v1, :cond_90

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_15
    const-string v5, "get"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    aput-object v0, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    move v1, v4

    :goto_26
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_2b

    :catch_29
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getInt"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3f

    move v1, v3

    goto :goto_40

    :cond_3f
    move v1, v4

    :goto_40
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_43

    goto :goto_45

    :catch_43
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    :goto_45
    :try_start_45
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getLong"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_59

    move v1, v3

    goto :goto_5a

    :cond_59
    move v1, v4

    :goto_5a
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5c} :catch_5d

    goto :goto_5f

    :catch_5d
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getBoolean"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_73

    move v1, v3

    goto :goto_74

    :cond_73
    move v1, v4

    :goto_74
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_76} :catch_77

    goto :goto_79

    :catch_77
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    :goto_79
    :try_start_79
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "set"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_8a

    goto :goto_8b

    :cond_8a
    move v3, v4

    :goto_8b
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8d} :catch_8e

    goto :goto_90

    :catch_8e
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z

    :cond_90
    :goto_90
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

    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :cond_8
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 3

    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_8
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 4

    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_8
    return-wide p1
.end method
