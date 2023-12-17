.class public Lcom/xiaomi/stat/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/e$b;,
        Lcom/xiaomi/stat/d/e$a;
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

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field private static J:Z = false

.field private static final a:Ljava/lang/String; = "DeviceUtil"

.field private static final b:I = 0xf

.field private static final c:I = 0xe

.field private static final d:Ljava/lang/String; = ""

.field private static final e:J = 0x1cf7c5800L

.field private static final f:Ljava/lang/String; = "mistat"

.field private static final g:Ljava/lang/String; = "device_id"

.field private static final h:Ljava/lang/String; = "anonymous_id"

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/Object;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

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
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

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
    new-array v4, v0, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    sput-object v2, Lcom/xiaomi/stat/d/e;->i:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_16

    .line 23
    :catch_16
    :try_start_16
    const-string v2, "miui.telephony.TelephonyManagerEx"

    .line 25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "getDefault"

    .line 31
    new-array v4, v1, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    new-array v5, v1, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    sput-object v3, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

    .line 46
    const-string v3, "getImeiList"

    .line 48
    new-array v4, v1, [Ljava/lang/Class;

    .line 50
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    move-result-object v3

    .line 54
    sput-object v3, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    .line 56
    const-string v3, "getMeidList"

    .line 58
    new-array v4, v1, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    move-result-object v2

    .line 64
    sput-object v2, Lcom/xiaomi/stat/d/e;->k:Ljava/lang/reflect/Method;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_41

    .line 66
    :catch_41
    :try_start_41
    const-string v2, "android.telephony.TelephonyManager"

    .line 68
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    move-result-object v2

    .line 72
    const-string v3, "getImei"

    .line 74
    new-array v0, v0, [Ljava/lang/Class;

    .line 76
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    aput-object v4, v0, v1

    .line 80
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_55} :catch_55

    .line 86
    :catch_55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/util/List;
    .registers 10
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
    invoke-static {}, Lcom/xiaomi/stat/d/e;->g()Z

    .line 16
    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_7b

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
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

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
    invoke-static {v5}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_71

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_71
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7a

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7a} :catch_7b

    .line 123
    :cond_7a
    return-object v0

    .line 124
    :catch_7b
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
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method private static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_88

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_17

    .line 16
    const-string p0, "02:00:00:00:00:00"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_88

    .line 24
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 27
    move-result-object p0

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_88

    .line 34
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/net/NetworkInterface;

    .line 40
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1b

    .line 46
    array-length v3, v2

    .line 47
    if-nez v3, :cond_31

    .line 49
    goto :goto_1b

    .line 50
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    array-length v4, v2

    .line 56
    const/4 v5, 0x0

    .line 57
    move v6, v5

    .line 58
    :goto_39
    const/4 v7, 0x1

    .line 59
    if-ge v6, v4, :cond_52

    .line 61
    aget-byte v8, v2, v6

    .line 63
    const-string v9, "%02x:"

    .line 65
    new-array v7, v7, [Ljava/lang/Object;

    .line 67
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 70
    move-result-object v8

    .line 71
    aput-object v8, v7, v5

    .line 73
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 82
    goto :goto_39

    .line 83
    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 86
    move-result v2

    .line 87
    if-lez v2, :cond_60

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 92
    move-result v2

    .line 93
    sub-int/2addr v2, v7

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 97
    :cond_60
    const-string v2, "wlan0"

    .line 99
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1b

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_70} :catch_71

    .line 113
    return-object p0

    .line 114
    :catch_71
    move-exception p0

    .line 115
    const-string v1, "queryMac failed ex: "

    .line 117
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    const-string v1, "DeviceUtil"

    .line 134
    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_88
    return-object v0
.end method

.method private static C(Landroid/content/Context;)Z
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

.method private static D(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->a(Landroid/content/Context;)Z

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

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 8
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 9
    :cond_9
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 10
    sget-object p0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 13
    sput-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    return-object v0

    .line 14
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->y(Landroid/content/Context;)Ljava/util/List;

    .line 15
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 16
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    return-object p0

    :cond_34
    return-object v1
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 4

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/b;->v()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide v2, 0x1cf7c5800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 4
    :goto_15
    invoke-static {}, Lcom/xiaomi/stat/b;->w()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v0, :cond_2c

    .line 6
    :cond_21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/stat/b;->i(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
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

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

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
    sget-object v1, Lcom/xiaomi/stat/d/e;->i:Ljava/lang/reflect/Method;

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

    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

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
    .registers 8

    .line 12
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 13
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    return-object v0

    .line 14
    :cond_b
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    .line 15
    invoke-static {}, Lcom/xiaomi/stat/b;->s()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    if-nez v0, :cond_1e

    .line 17
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    return-object v1

    .line 18
    :cond_1e
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    .line 19
    invoke-static {}, Lcom/xiaomi/stat/b;->v()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x1cf7c5800L

    cmp-long v4, v4, v6

    if-gtz v4, :cond_39

    .line 20
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Lcom/xiaomi/stat/b;->b(J)V

    .line 22
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    return-object v0

    :cond_39
    if-eqz v0, :cond_73

    .line 23
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/p;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 24
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Z)V

    const/4 v2, 0x0

    const-string v3, "mistat"

    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "anonymous_id"

    .line 27
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last version instance id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 30
    :cond_73
    sget-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 31
    invoke-static {}, Lcom/xiaomi/stat/d/e;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 32
    :cond_81
    sget-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->g(Ljava/lang/String;)V

    if-eqz v0, :cond_8f

    .line 33
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->b(J)V

    .line 34
    :cond_8f
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 2
    :cond_9
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    sget-object p0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 6
    sput-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->y(Landroid/content/Context;)Ljava/util/List;

    .line 8
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 9
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    return-object p0

    :cond_34
    return-object v1
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 11
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

.method private static e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->w()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/xiaomi/stat/b;->i(Ljava/lang/String;)V

    :cond_15
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 5
    sget-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    sget-object p0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 9
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static f()Ljava/util/List;
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
    sget-object v0, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/xiaomi/stat/d/e;->h()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 7
    :try_start_a
    sget-object v0, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

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

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->a(Ljava/util/List;)Z

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

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 2
    :cond_9
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    sget-object p0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 6
    sput-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 9
    sput-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    .line 10
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    return-object p0

    :cond_33
    return-object v1
.end method

.method private static g()Z
    .registers 3

    const-string v0, "persist.radio.multisim.config"

    .line 12
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 13
    :cond_10
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lcsh92_wet_jb9"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013022"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "armani"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2014011"

    .line 17
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

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string p0, ""

    .line 31
    return-object p0
.end method

.method private static h()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static i()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.os.Build"

    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_TABLET"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return v0

    :catch_18
    const/4 v1, 0x0

    :try_start_19
    const-string v2, "miui.util.FeatureParser"

    .line 8
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 9
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "is_pad"

    aput-object v4, v3, v1

    .line 10
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_45} :catch_46

    return v0

    :catch_46
    return v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_14

    .line 18
    sget-object p0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_21

    .line 31
    sput-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 33
    return-object v0

    .line 34
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->w(Landroid/content/Context;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2c

    .line 40
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    :goto_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3e

    .line 55
    sput-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 57
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 62
    return-object p0

    .line 63
    :cond_3e
    return-object v1
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string p0, ""

    .line 31
    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string p0, ""

    .line 31
    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_14

    .line 18
    sget-object p0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_21

    .line 31
    sput-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 33
    return-object v0

    .line 34
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_33

    .line 44
    sput-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 46
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 51
    return-object p0

    .line 52
    :cond_33
    return-object v1
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string p0, ""

    .line 31
    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string p0, ""

    .line 31
    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p0

    .line 16
    const-string v0, "android_id"

    .line 18
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1e

    .line 28
    sput-object p0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 30
    return-object p0

    .line 31
    :cond_1e
    const-string p0, ""

    .line 33
    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

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
    sput-object v0, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

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
    sput-object p0, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_54} :catch_55

    .line 85
    return-object p0

    .line 86
    :catch_55
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
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6c
    const-string p0, ""

    .line 111
    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_18

    .line 22
    sput-object p0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 24
    return-object p0

    .line 25
    :cond_18
    const-string p0, ""

    .line 27
    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9e

    .line 9
    sget-object v0, Lcom/xiaomi/stat/d/e;->k:Ljava/lang/reflect/Method;

    .line 11
    const-string v1, "DeviceUtil"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_46

    .line 16
    :try_start_f
    sget-object v3, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

    .line 18
    new-array v4, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 26
    if-eqz v0, :cond_46

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_46

    .line 34
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/util/List;)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_46

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_31

    .line 49
    return-object v0

    .line 50
    :catch_31
    move-exception v0

    .line 51
    const-string v3, "queryMeid failed ex: "

    .line 53
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_46
    :try_start_46
    const-string v0, "android.telephony.TelephonyManager"

    .line 73
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    move-result-object v0

    .line 77
    const-string v3, "phone"

    .line 79
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 85
    const/4 v3, 0x0

    .line 86
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/16 v5, 0x1a

    .line 90
    if-lt v4, v5, :cond_6f

    .line 92
    const-string v4, "getMeid"

    .line 94
    new-array v5, v2, [Ljava/lang/Class;

    .line 96
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_82

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 108
    move-object v3, p0

    .line 109
    check-cast v3, Ljava/lang/String;

    .line 111
    goto :goto_82

    .line 112
    :cond_6f
    const-string v4, "getDeviceId"

    .line 114
    new-array v5, v2, [Ljava/lang/Class;

    .line 116
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_82

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 128
    move-object v3, p0

    .line 129
    check-cast v3, Ljava/lang/String;

    .line 131
    :cond_82
    :goto_82
    invoke-static {v3}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z

    .line 134
    move-result p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_86} :catch_89

    .line 135
    if-eqz p0, :cond_9e

    .line 137
    return-object v3

    .line 138
    :catch_89
    move-exception p0

    .line 139
    const-string v0, "queryMeid->getMeid failed ex: "

    .line 141
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 156
    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9e
    const-string p0, ""

    .line 161
    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 6
    if-lt v0, v2, :cond_42

    .line 8
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 10
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_44

    .line 16
    :try_start_f
    const-string p0, "android.os.Build"

    .line 18
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    move-result-object p0

    .line 22
    const-string v0, "getSerial"

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Class;

    .line 27
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_44

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2a

    .line 41
    move-object v1, p0

    .line 42
    goto :goto_44

    .line 43
    :catch_2a
    move-exception p0

    .line 44
    const-string v0, "querySerial failed ex: "

    .line 46
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    const-string v0, "DeviceUtil"

    .line 63
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 69
    :cond_44
    :goto_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_55

    .line 75
    const-string p0, "unknown"

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_55

    .line 83
    sput-object v1, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 85
    return-object v1

    .line 86
    :cond_55
    const-string p0, ""

    .line 88
    return-object p0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
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

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object p0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {}, Lcom/xiaomi/stat/d/e;->i()Z

    .line 15
    move-result v0

    .line 16
    const-string v1, "Pad"

    .line 18
    if-eqz v0, :cond_16

    .line 20
    sput-object v1, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 22
    return-object v1

    .line 23
    :cond_16
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->C(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    sput-object v1, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 31
    return-object v1

    .line 32
    :cond_1f
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->D(Landroid/content/Context;)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2a

    .line 38
    const-string p0, "Tv"

    .line 40
    sput-object p0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 42
    return-object p0

    .line 43
    :cond_2a
    const-string p0, "Phone"

    .line 45
    return-object p0
.end method

.method public static w(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->a(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    .line 15
    :cond_e
    sget-object p0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-boolean v0, Lcom/xiaomi/stat/d/e;->J:Z

    .line 3
    if-nez v0, :cond_27

    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/xiaomi/stat/d/e;->J:Z

    .line 8
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->i(Landroid/content/Context;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_21

    .line 14
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Z)V

    .line 17
    const/4 v0, 0x0

    .line 18
    const-string v1, "mistat"

    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "device_id"

    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_21
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    sput-object p0, Lcom/xiaomi/stat/d/e;->I:Ljava/lang/String;

    .line 40
    :cond_27
    sget-object p0, Lcom/xiaomi/stat/d/e;->I:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method private static y(Landroid/content/Context;)Ljava/util/List;
    .registers 3
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
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/d/e;->f()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1a

    .line 21
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->z(Landroid/content/Context;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_3e

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_3e

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 38
    const/4 p0, 0x0

    .line 39
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 45
    sput-object p0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    move-result p0

    .line 51
    const/4 v1, 0x2

    .line 52
    if-lt p0, v1, :cond_3e

    .line 54
    const/4 p0, 0x1

    .line 55
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 61
    sput-object p0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    .line 63
    :cond_3e
    return-object v0
.end method

.method private static z(Landroid/content/Context;)Ljava/util/List;
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
    sget-object v0, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

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
    sget-object v1, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

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
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2c

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    invoke-static {}, Lcom/xiaomi/stat/d/e;->g()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4b

    .line 51
    sget-object v1, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

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
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

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
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_63
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method
