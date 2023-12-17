.class public Lmiuix/core/util/MiShadowUtils;
.super Ljava/lang/Object;
.source "MiShadowUtils.java"


# static fields
.field public static final SUPPORT_MI_SHADOW:Z

.field private static final TAG:Ljava/lang/String; = "MiShadowHelper"

.field private static sMethodSetMiShadow:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "persist.sys.mi_shadow_supported"

    .line 3
    const-string v1, "false"

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    .line 15
    if-nez v0, :cond_17

    .line 17
    const-string v0, "MiShadowHelper"

    .line 19
    const-string v1, "This device does not support mi shadow!"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    :try_start_4
    sget-object v1, Lmiuix/core/util/MiShadowUtils;->sMethodSetMiShadow:Ljava/lang/reflect/Method;

    .line 7
    if-nez v1, :cond_12

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object p2

    .line 17
    sput-object p2, Lmiuix/core/util/MiShadowUtils;->sMethodSetMiShadow:Ljava/lang/reflect/Method;

    .line 19
    :cond_12
    sget-object p2, Lmiuix/core/util/MiShadowUtils;->sMethodSetMiShadow:Ljava/lang/reflect/Method;

    .line 21
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 25
    return-object p0

    .line 26
    :catch_19
    move-exception p0

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string p3, "Failed to call method:"

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const-string p2, "MiShadowHelper"

    .line 46
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return-object v0
.end method

.method public static clearMiShadow(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1, v1, v1}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    .line 6
    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IF)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0, p2}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IFFF)V
    .registers 11

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFFF)V

    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IFFFF)V
    .registers 14

    .line 3
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v7

    const-string p1, "setMiShadow"

    .line 6
    invoke-static {p0, p1, v1, v0}, Lmiuix/core/util/MiShadowUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return-void
.end method
