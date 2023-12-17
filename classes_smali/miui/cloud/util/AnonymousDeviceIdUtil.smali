.class public Lmiui/cloud/util/AnonymousDeviceIdUtil;
.super Ljava/lang/Object;
.source "AnonymousDeviceIdUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnonymousDeviceIdUtil"

.field private static sGetAAID:Ljava/lang/reflect/Method;

.field private static sGetOAID:Ljava/lang/reflect/Method;

.field private static sGetUDID:Ljava/lang/reflect/Method;

.field private static sGetVAID:Ljava/lang/reflect/Method;

.field private static sIdProivderImpl:Ljava/lang/Object;

.field private static sOAIDDeviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    const-string v0, "provider not avaliable"

    .line 3
    const-string v1, "AnonymousDeviceIdUtil"

    .line 5
    new-instance v2, Ljava/util/HashSet;

    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10
    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 12
    const-string v3, "cmi"

    .line 14
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 19
    const-string v3, "umi"

    .line 21
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 26
    const-string v3, "lmi"

    .line 28
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 33
    const-string v3, "picasso"

    .line 35
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 40
    const-string v3, "phoenix"

    .line 42
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 47
    const-string v3, "phoenixin"

    .line 49
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 54
    const-string v3, "vangogh"

    .line 56
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 61
    const-string v3, "monet"

    .line 63
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 68
    const-string v3, "toco"

    .line 70
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 75
    const-string v3, "merlin"

    .line 77
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 82
    const-string v3, "curtana"

    .line 84
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 89
    const-string v3, "durandal"

    .line 91
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 96
    const-string v3, "excalibur"

    .line 98
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 103
    const-string v3, "joyeuse"

    .line 105
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 110
    const-string v3, "gram"

    .line 112
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :try_start_72
    const-string v2, "com.android.id.impl.IdProviderImpl"

    .line 117
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 124
    move-result-object v3

    .line 125
    sput-object v3, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_72 .. :try_end_7e} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_72 .. :try_end_7e} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_72 .. :try_end_7e} :catch_d5

    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v4, 0x1

    .line 129
    :try_start_80
    const-string v5, "getUDID"

    .line 131
    new-array v6, v4, [Ljava/lang/Class;

    .line 133
    const-class v7, Landroid/content/Context;

    .line 135
    aput-object v7, v6, v3

    .line 137
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    move-result-object v5

    .line 141
    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;
    :try_end_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_80 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_8e} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_80 .. :try_end_8e} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_80 .. :try_end_8e} :catch_d5

    .line 143
    goto :goto_95

    .line 144
    :catch_8f
    move-exception v5

    .line 145
    :try_start_90
    const-string v6, "getUDID not avaliable"

    .line 147
    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_90 .. :try_end_95} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_90 .. :try_end_95} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_90 .. :try_end_95} :catch_d5

    .line 150
    :goto_95
    :try_start_95
    const-string v5, "getOAID"

    .line 152
    new-array v6, v4, [Ljava/lang/Class;

    .line 154
    const-class v7, Landroid/content/Context;

    .line 156
    aput-object v7, v6, v3

    .line 158
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    move-result-object v5

    .line 162
    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;
    :try_end_a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_95 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_a3} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_95 .. :try_end_a3} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_95 .. :try_end_a3} :catch_d5

    .line 164
    goto :goto_aa

    .line 165
    :catch_a4
    move-exception v5

    .line 166
    :try_start_a5
    const-string v6, "getOAID not avaliable"

    .line 168
    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_aa} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_a5 .. :try_end_aa} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_a5 .. :try_end_aa} :catch_d5

    .line 171
    :goto_aa
    :try_start_aa
    const-string v5, "getVAID"

    .line 173
    new-array v6, v4, [Ljava/lang/Class;

    .line 175
    const-class v7, Landroid/content/Context;

    .line 177
    aput-object v7, v6, v3

    .line 179
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 182
    move-result-object v5

    .line 183
    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;
    :try_end_b8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_aa .. :try_end_b8} :catch_b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_aa .. :try_end_b8} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_aa .. :try_end_b8} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_aa .. :try_end_b8} :catch_d5

    .line 185
    goto :goto_bf

    .line 186
    :catch_b9
    move-exception v5

    .line 187
    :try_start_ba
    const-string v6, "getVAID not avaliable"

    .line 189
    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ba .. :try_end_bf} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_ba .. :try_end_bf} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_ba .. :try_end_bf} :catch_d5

    .line 192
    :goto_bf
    :try_start_bf
    const-string v5, "getAAID"

    .line 194
    new-array v4, v4, [Ljava/lang/Class;

    .line 196
    const-class v6, Landroid/content/Context;

    .line 198
    aput-object v6, v4, v3

    .line 200
    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 203
    move-result-object v2

    .line 204
    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_bf .. :try_end_cd} :catch_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bf .. :try_end_cd} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_bf .. :try_end_cd} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_bf .. :try_end_cd} :catch_d5

    .line 206
    goto :goto_e3

    .line 207
    :catch_ce
    move-exception v2

    .line 208
    :try_start_cf
    const-string v3, "getAAID not avaliable"

    .line 210
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cf .. :try_end_d4} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_cf .. :try_end_d4} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_cf .. :try_end_d4} :catch_d5

    .line 213
    goto :goto_e3

    .line 214
    :catch_d5
    move-exception v2

    .line 215
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    goto :goto_e3

    .line 219
    :catch_da
    move-exception v2

    .line 220
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    goto :goto_e3

    .line 224
    :catch_df
    move-exception v2

    .line 225
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :goto_e3
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AnonymousDeviceIdUtil"

    .line 3
    const-string v1, "android id"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const-string v0, "android_id"

    .line 14
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "exception invoking "

    .line 3
    const-string v1, "AnonymousDeviceIdUtil"

    .line 5
    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    .line 7
    if-eqz v2, :cond_3e

    .line 9
    if-eqz p1, :cond_3e

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_b
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object p0, v3, v4

    .line 17
    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_16} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    goto :goto_3e

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isEnforced(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "AnonymousDeviceIdUtil"

    .line 6
    const/16 v2, 0x1d

    .line 8
    if-ge p0, v2, :cond_f

    .line 10
    const-string p0, "later than Q, not enforced"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v0

    .line 16
    :cond_f
    const-string v2, "ro.miui.restrict_imei"

    .line 18
    invoke-static {v2}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "1"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_24

    .line 31
    const-string p0, "enforced"

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v3

    .line 37
    :cond_24
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    .line 39
    if-eqz v2, :cond_32

    .line 41
    const/16 v2, 0x1e

    .line 43
    if-lt p0, v2, :cond_32

    .line 45
    const-string p0, "new pad, enforced"

    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v3

    .line 51
    :cond_32
    const/16 v2, 0x1f

    .line 53
    if-lt p0, v2, :cond_3c

    .line 55
    const-string p0, "greater than S, enforced"

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v3

    .line 61
    :cond_3c
    const-string p0, "not enforced"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 1

    .line 1
    sget-object p0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    .line 3
    if-eqz p0, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    :goto_7
    return p0
.end method

.method public static useOAID()Z
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    .line 3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method
