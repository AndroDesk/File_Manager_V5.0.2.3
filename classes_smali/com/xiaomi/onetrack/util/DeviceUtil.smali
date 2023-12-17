.class public Lcom/xiaomi/onetrack/util/DeviceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/DeviceUtil$a;,
        Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Ljava/lang/String; = null

.field private static C:Ljava/lang/String; = null

.field private static D:Ljava/lang/String; = null

.field private static E:Ljava/lang/String; = null

.field private static F:Ljava/lang/Boolean; = null

.field private static G:Ljava/lang/String; = null

.field private static volatile H:Z = false

.field public static final a:I = 0xf

.field public static final b:I = 0x6

.field private static final c:Ljava/lang/String; = "DeviceUtil"

.field private static final d:Ljava/lang/String; = ""

.field private static final e:Ljava/lang/String; = "ro.build.description"

.field private static final f:I = 0xf

.field private static final g:I = 0xe

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/Object;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static volatile n:Ljava/lang/String;

.field private static volatile o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "DeviceUtil"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

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
    new-array v5, v1, [Ljava/lang/Class;

    .line 15
    const-class v6, Ljava/lang/String;

    .line 17
    aput-object v6, v5, v2

    .line 19
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v3

    .line 23
    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/reflect/Method;
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
    const-string v3, "miui.telephony.TelephonyManagerEx"

    .line 49
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    const-string v4, "getDefault"

    .line 55
    new-array v5, v2, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x0

    .line 62
    new-array v6, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    .line 70
    const-string v4, "getImeiList"

    .line 72
    new-array v5, v2, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    move-result-object v4

    .line 78
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    .line 80
    const-string v4, "getMeidList"

    .line 82
    new-array v5, v2, [Ljava/lang/Class;

    .line 84
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    move-result-object v4

    .line 88
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    .line 90
    const-string v4, "getSubscriberIdForSlot"

    .line 92
    new-array v5, v1, [Ljava/lang/Class;

    .line 94
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 96
    aput-object v6, v5, v2

    .line 98
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    move-result-object v3

    .line 102
    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;
    :try_end_67
    .catchall {:try_start_2e .. :try_end_67} :catchall_68

    .line 104
    goto :goto_7d

    .line 105
    :catchall_68
    move-exception v3

    .line 106
    const-string v4, "TelephonyManagerEx init failed ex: "

    .line 108
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_7d
    :try_start_7d
    const-string v3, "android.telephony.TelephonyManager"

    .line 128
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 131
    move-result-object v3

    .line 132
    const-string v4, "getImei"

    .line 134
    new-array v1, v1, [Ljava/lang/Class;

    .line 136
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 138
    aput-object v5, v1, v2

    .line 140
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 143
    move-result-object v1

    .line 144
    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_92

    .line 146
    goto :goto_a7

    .line 147
    :catchall_92
    move-exception v1

    .line 148
    const-string v2, "sGetImeiForSlot init failed ex: "

    .line 150
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_a7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->D(Landroid/content/Context;)Ljava/util/List;

    .line 15
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_19

    .line 23
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    .line 25
    return-object p0

    .line 26
    :cond_19
    const-string p0, ""

    .line 28
    return-object p0
.end method

.method private static B(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    .line 3
    if-eqz v0, :cond_63

    .line 5
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const-string v1, "phone"

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 18
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    .line 20
    const/4 v2, 0x1

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v3, v4

    .line 30
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2c

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4b

    .line 51
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    .line 53
    new-array v3, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v3, v4

    .line 61
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4b

    .line 73
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_4c

    .line 76
    :cond_4b
    return-object v0

    .line 77
    :catch_4c
    move-exception p0

    .line 78
    const-string v0, "getImeiListAboveLollipop failed ex: "

    .line 80
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    const-string v0, "DeviceUtil"

    .line 97
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_63
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method

.method private static C(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    const-string v1, "android.telephony.TelephonyManager"

    .line 9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    .line 16
    move-result v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_7b

    .line 17
    const-string v3, "getDefault"

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_31

    .line 22
    :try_start_15
    new-array v2, v4, [Ljava/lang/Class;

    .line 24
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v1

    .line 28
    new-array v2, v4, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_30

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    return-object v0

    .line 50
    :cond_31
    const/4 v2, 0x1

    .line 51
    new-array v5, v2, [Ljava/lang/Class;

    .line 53
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 55
    aput-object v6, v5, v4

    .line 57
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    move-result-object v5

    .line 61
    new-array v7, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v8

    .line 67
    aput-object v8, v7, v4

    .line 69
    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 75
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    new-array v7, v2, [Ljava/lang/Class;

    .line 81
    aput-object v6, v7, v4

    .line 83
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    move-result-object v1

    .line 87
    new-array v3, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v2

    .line 93
    aput-object v2, v3, v4

    .line 95
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 101
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_71

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_71
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7a

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_15 .. :try_end_7a} :catchall_7b

    .line 123
    :cond_7a
    return-object v0

    .line 124
    :catchall_7b
    move-exception v0

    .line 125
    const-string v1, "getImeiListBelowLollipop failed ex: "

    .line 127
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    const-string v1, "DeviceUtil"

    .line 144
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method private static D(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a8

    .line 8
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    .line 10
    const-string v2, "DeviceUtil"

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_47

    .line 15
    :try_start_e
    sget-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 25
    if-eqz v0, :cond_47

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result v4

    .line 31
    if-lez v4, :cond_47

    .line 33
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/util/List;)Z

    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_47

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 48
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    .line 50
    return-object v0

    .line 51
    :catch_32
    move-exception v0

    .line 52
    const-string v4, "queryMeidList failed ex: "

    .line 54
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_47
    :try_start_47
    const-string v0, "android.telephony.TelephonyManager"

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 77
    move-result-object v0

    .line 78
    const-string v4, "phone"

    .line 80
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 86
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/16 v5, 0x1a

    .line 90
    if-lt v4, v5, :cond_6e

    .line 92
    const-string v4, "getMeid"

    .line 94
    new-array v5, v3, [Ljava/lang/Class;

    .line 96
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_81

    .line 102
    new-array v3, v3, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/String;

    .line 110
    goto :goto_82

    .line 111
    :cond_6e
    const-string v4, "getDeviceId"

    .line 113
    new-array v5, v3, [Ljava/lang/Class;

    .line 115
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_81

    .line 121
    new-array v3, v3, [Ljava/lang/Object;

    .line 123
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/lang/String;

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move-object p0, v1

    .line 131
    :goto_82
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d(Ljava/lang/String;)Z

    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_a8

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    .line 139
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_47 .. :try_end_92} :catchall_93

    .line 147
    return-object v0

    .line 148
    :catchall_93
    move-exception p0

    .line 149
    const-string v0, "queryMeidList->getMeid failed ex: "

    .line 151
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_a8
    return-object v1
.end method

.method private static E(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 11
    and-int/lit8 p0, p0, 0xf

    .line 13
    const/4 v0, 0x3

    .line 14
    if-lt p0, v0, :cond_11

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    :goto_12
    return p0
.end method

.method private static F(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->a(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object p0

    .line 17
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    and-int/lit8 p0, p0, 0xf

    .line 21
    const/4 v0, 0x4

    .line 22
    if-ne p0, v0, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v1, 0x0

    .line 26
    :goto_19
    return v1
.end method

.method public static a(J)J
    .registers 8

    long-to-float p0, p0

    float-to-double v0, p0

    const-wide v2, 0x408c200000000000L  # 900.0

    cmpl-double p1, v0, v2

    const/high16 v0, 0x447a0000  # 1000.0f

    if-lez p1, :cond_e

    div-float/2addr p0, v0

    :cond_e
    float-to-double v4, p0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_14

    div-float/2addr p0, v0

    :cond_14
    float-to-double v4, p0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_1a

    div-float/2addr p0, v0

    :cond_1a
    float-to-long p0, p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    .line 5
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 6
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getSubscriberId"

    const-string v1, "getSubId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    :try_start_8
    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v4, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v6

    .line 11
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v6

    .line 12
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    sget-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_6e

    sget-object v7, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    if-eqz v7, :cond_6e

    new-array p0, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    invoke-virtual {v4, v7, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v6

    .line 14
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v3

    goto :goto_b6

    :cond_6e
    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v6

    .line 15
    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    new-array p3, v3, [Ljava/lang/Class;

    aput-object v5, p3, v6

    .line 16
    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v3, [Ljava/lang/Object;

    aget p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v6

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v3
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9e} :catch_9f

    goto :goto_b6

    :catch_9f
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImsiFromLToP: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceUtil"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b6
    return-object v2
.end method

.method private static b(J)J
    .registers 11

    const-wide v0, 0x1dcd65000L

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x3b9aca00

    if-ltz v0, :cond_24

    .line 22
    div-long v3, p0, v1

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    goto :goto_29

    .line 23
    :cond_24
    div-long v3, p0, v1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :goto_29
    mul-long/2addr v3, v1

    cmp-long v0, v3, p0

    if-gez v0, :cond_32

    .line 24
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(J)J

    move-result-wide v3

    .line 25
    :cond_32
    div-long/2addr v3, v1

    return-wide v3
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "ro.product.name"

    .line 21
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 6
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 7
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

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeviceUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-object v0
.end method

.method private static b(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getSubscriberId"

    const-string v1, "DeviceUtil"

    const-string v2, "getSubscriptionIds"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_b
    new-array v6, v4, [Ljava/lang/Class;

    .line 15
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, p3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_55

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v5

    .line 16
    invoke-virtual {p0, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_40

    goto :goto_55

    :catch_40
    move-exception v6

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get imsi1 above Android Q exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    :try_start_55
    new-array v6, v4, [Ljava/lang/Class;

    .line 18
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_9f

    new-array p3, v4, [Ljava/lang/Class;

    aput-object v7, p3, v5

    .line 19
    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v4, [Ljava/lang/Object;

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v4
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_89} :catch_8a

    goto :goto_9f

    :catch_8a
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get imsi2 above Android Q exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-object v3
.end method

.method private static c(J)J
    .registers 11

    const-wide/16 v0, 0x1

    move-wide v2, v0

    move-wide v4, v2

    :cond_4
    :goto_4
    mul-long v6, v2, v4

    cmp-long v8, v6, p0

    if-gez v8, :cond_17

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    const-wide/16 v6, 0x200

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    move-wide v2, v0

    goto :goto_4

    :cond_17
    return-wide v6
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_14

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "ro.product.marketname"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    .line 4
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 5
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_1b

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1b

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "ro.product.model.real"

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "DeviceUtil"

    const-string v2, "getModelReal Exception: "

    .line 9
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string v1, "ro.product.mod_device"

    .line 6
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    :cond_10
    return-object v1

    :catch_11
    move-exception v1

    const-string v2, "DeviceUtil"

    const-string v3, "getModDevice Exception: "

    .line 8
    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.build.description"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string v1, "ro.product.manufacturer"

    .line 6
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v1

    const-string v2, "DeviceUtil"

    .line 7
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProductManufacturer e"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static j()J
    .registers 5

    .line 6
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    const-wide/32 v0, 0x40000000

    .line 8
    div-long/2addr v3, v0

    return-wide v3
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static k()Ljava/lang/String;
    .registers 5

    .line 6
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%dGB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    return-object p0

    :cond_18
    const-string p0, ""

    return-object p0
.end method

.method public static l()J
    .registers 5

    .line 6
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 8
    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    return-object p0

    :cond_18
    const-string p0, ""

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static m()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->o()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 7
    :try_start_a
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/util/List;)Z

    move-result v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_26

    if-nez v1, :cond_3d

    return-object v0

    :catch_26
    move-exception v0

    const-string v1, "getImeiListFromMiui failed ex: "

    .line 9
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtil"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static n()Z
    .registers 3

    const-string v0, "persist.radio.multisim.config"

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 7
    :cond_10
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lcsh92_wet_jb9"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013022"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "armani"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2014011"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2014012"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "content://com.miui.analytics.server.AnalyticsProvider/aaid"

    .line 18
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_22

    .line 32
    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    .line 34
    return-object v0

    .line 35
    :cond_22
    const-string v0, "android.provider.MiuiSettings$Ad"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "getAaid"

    .line 43
    const/4 v2, 0x1

    .line 44
    new-array v3, v2, [Ljava/lang/Class;

    .line 46
    const-class v4, Landroid/content/ContentResolver;

    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v4, v3, v5

    .line 51
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object p0

    .line 62
    aput-object p0, v2, v5

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 68
    instance-of v0, p0, Ljava/lang/String;

    .line 70
    if-eqz v0, :cond_6c

    .line 72
    move-object v0, p0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6c

    .line 81
    check-cast p0, Ljava/lang/String;

    .line 83
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_55

    .line 85
    return-object p0

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    const-string v0, "getAaid failed ex: "

    .line 89
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    const-string v0, "DeviceUtil"

    .line 106
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6c
    const-string p0, ""

    .line 111
    return-object p0
.end method

.method private static o()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_14

    return-object v1

    .line 4
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 6
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-object p0

    :cond_21
    return-object v1
.end method

.method private static p()Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.os.Build"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_TABLET"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v1

    const-string v2, "get miui.os.Build Exception: "

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_30
    const-string v3, "miui.util.FeatureParser"

    .line 11
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getBoolean"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 12
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "is_pad"

    aput-object v5, v4, v1

    .line 13
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5d

    return v0

    :catchall_5d
    move-exception v0

    const-string v3, "get miui.util.FeatureParser Exception: "

    .line 14
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static q(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    if-eqz p0, :cond_34

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_34

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_34

    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_31

    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 43
    invoke-static {v2}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_12

    .line 53
    :cond_34
    return-object v0
.end method

.method public static r(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    sget-boolean v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->H:Z

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-object v2

    .line 14
    :cond_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->m()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1c

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    move-object v2, v0

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->B(Landroid/content/Context;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    move-object v2, p0

    .line 34
    :goto_21
    sput-boolean v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->H:Z

    .line 36
    :cond_23
    if-eqz v2, :cond_46

    .line 38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_46

    .line 44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    const/4 p0, 0x0

    .line 48
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/String;

    .line 54
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    move-result p0

    .line 60
    const/4 v0, 0x2

    .line 61
    if-lt p0, v0, :cond_46

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/String;

    .line 69
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    .line 71
    :cond_46
    return-object v2
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->D(Landroid/content/Context;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_32

    .line 7
    new-instance v0, Lcom/xiaomi/onetrack/util/h;

    .line 9
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/h;-><init>()V

    .line 12
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    if-ge v0, v1, :cond_25

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_f

    .line 38
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 42
    return-object p0

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    const-string v0, "DeviceUtil"

    .line 46
    const-string v1, "getMeidListMd5 e"

    .line 48
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_32
    const-string p0, ""

    .line 53
    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "DeviceUtil"

    .line 3
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->b(Landroid/content/Context;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_98

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :try_start_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    .line 17
    move-result v2
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_93
    .catchall {:try_start_d .. :try_end_11} :catchall_7d

    .line 18
    const-string v3, "phone"

    .line 20
    if-eqz v2, :cond_69

    .line 22
    :try_start_15
    const-string v2, "android.telephony.TelephonyManager"

    .line 24
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 36
    const-string v5, "telephony_subscription_service"

    .line 38
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 44
    const-string v5, "android.telephony.SubscriptionManager"

    .line 46
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    move-result-object v5

    .line 50
    const/16 v6, 0x1d

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    if-ge v4, v6, :cond_44

    .line 56
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    aget-object v4, v4, v8

    .line 62
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    aget-object p0, p0, v7

    .line 68
    goto :goto_50

    .line 69
    :cond_44
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    aget-object v4, v4, v8

    .line 75
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    aget-object p0, p0, v7

    .line 81
    :goto_50
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    .line 84
    move-result v2
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_54} :catch_93
    .catchall {:try_start_15 .. :try_end_54} :catchall_7d

    .line 85
    const-string v3, ""

    .line 87
    if-eqz v2, :cond_59

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move-object v4, v3

    .line 91
    :goto_5a
    :try_start_5a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_64

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move-object p0, v3

    .line 102
    :goto_65
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v1

    .line 106
    :cond_69
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7c

    .line 122
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_7c} :catch_93
    .catchall {:try_start_5a .. :try_end_7c} :catchall_7d

    .line 125
    :cond_7c
    return-object v1

    .line 126
    :catchall_7d
    move-exception p0

    .line 127
    const-string v1, "getImsiList failed: "

    .line 129
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    goto :goto_98

    .line 148
    :catch_93
    const-string p0, "getImsiList failed with on permission"

    .line 150
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_98
    :goto_98
    const/4 p0, 0x0

    .line 154
    return-object p0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 6
    if-lt v0, v2, :cond_40

    .line 8
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->b(Landroid/content/Context;)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_42

    .line 14
    :try_start_d
    const-string p0, "android.os.Build"

    .line 16
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    move-result-object p0

    .line 20
    const-string v0, "getSerial"

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Class;

    .line 25
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_42

    .line 31
    new-array v0, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    .line 39
    move-object v1, p0

    .line 40
    goto :goto_42

    .line 41
    :catchall_28
    move-exception p0

    .line 42
    const-string v0, "querySerial failed ex: "

    .line 44
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    const-string v0, "DeviceUtil"

    .line 61
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 67
    :cond_42
    :goto_42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_53

    .line 73
    const-string p0, "unknown"

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_53

    .line 81
    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    .line 83
    return-object v1

    .line 84
    :cond_53
    const-string p0, ""

    .line 86
    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->t(Landroid/content/Context;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2e

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1d

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 34
    return-object p0

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    const-string v0, "DeviceUtil"

    .line 38
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "getImeiListMd5 failed!"

    .line 44
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_2e
    const-string p0, ""

    .line 49
    return-object p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->p()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_16

    .line 18
    const-string p0, "Pad"

    .line 20
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 22
    return-object p0

    .line 23
    :cond_16
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->F(Landroid/content/Context;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_21

    .line 29
    const-string p0, "Tv"

    .line 31
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 33
    return-object p0

    .line 34
    :cond_21
    const-string p0, "Phone"

    .line 36
    return-object p0
.end method

.method public static x(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->a(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    .line 15
    :cond_e
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/graphics/Point;

    .line 15
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 21
    const/4 p0, 0x2

    .line 22
    new-array p0, p0, [Ljava/lang/Object;

    .line 24
    const/4 v1, 0x0

    .line 25
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    aput-object v2, p0, v1

    .line 33
    const/4 v1, 0x1

    .line 34
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    aput-object v0, p0, v1

    .line 42
    const-string v0, "%d*%d"

    .line 44
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
