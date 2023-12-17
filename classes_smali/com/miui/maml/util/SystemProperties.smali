.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static classSystemProperties:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static isSupportGet:Z = false

.field private static isSupportGetBoolean:Z = false

.field private static isSupportGetInt:Z = false

.field private static isSupportGetLong:Z = false

.field private static isSupportSet:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 8

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
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 11
    goto :goto_e

    .line 12
    :catch_b
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 15
    :goto_e
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 17
    if-eqz v1, :cond_90

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_15
    const-string v5, "get"

    .line 24
    new-array v6, v2, [Ljava/lang/Class;

    .line 26
    aput-object v0, v6, v4

    .line 28
    aput-object v0, v6, v3

    .line 30
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_25

    .line 36
    move v1, v3

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v1, v4

    .line 39
    :goto_26
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29

    .line 41
    goto :goto_2b

    .line 42
    :catch_29
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    .line 44
    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 46
    const-string v5, "getInt"

    .line 48
    new-array v6, v2, [Ljava/lang/Class;

    .line 50
    aput-object v0, v6, v4

    .line 52
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    aput-object v7, v6, v3

    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3f

    .line 62
    move v1, v3

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v1, v4

    .line 65
    :goto_40
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_43

    .line 67
    goto :goto_45

    .line 68
    :catch_43
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 70
    :goto_45
    :try_start_45
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 72
    const-string v5, "getLong"

    .line 74
    new-array v6, v2, [Ljava/lang/Class;

    .line 76
    aput-object v0, v6, v4

    .line 78
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 80
    aput-object v7, v6, v3

    .line 82
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_59

    .line 88
    move v1, v3

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v1, v4

    .line 91
    :goto_5a
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5c} :catch_5d

    .line 93
    goto :goto_5f

    .line 94
    :catch_5d
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 96
    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 98
    const-string v5, "getBoolean"

    .line 100
    new-array v6, v2, [Ljava/lang/Class;

    .line 102
    aput-object v0, v6, v4

    .line 104
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 106
    aput-object v7, v6, v3

    .line 108
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_73

    .line 114
    move v1, v3

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v1, v4

    .line 117
    :goto_74
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_76} :catch_77

    .line 119
    goto :goto_79

    .line 120
    :catch_77
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 122
    :goto_79
    :try_start_79
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 124
    const-string v5, "set"

    .line 126
    new-array v2, v2, [Ljava/lang/Class;

    .line 128
    aput-object v0, v2, v4

    .line 130
    aput-object v0, v2, v3

    .line 132
    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_8a

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move v3, v4

    .line 140
    :goto_8b
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8d} :catch_8e

    .line 142
    goto :goto_90

    .line 143
    :catch_8e
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z

    .line 145
    :cond_90
    :goto_90
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result p1

    .line 9
    :cond_8
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 3

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result p1

    .line 9
    :cond_8
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 4

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 8
    move-result-wide p1

    .line 9
    :cond_8
    return-wide p1
.end method
