.class public Lcom/xiaomi/onetrack/util/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PermissionUtil"

.field private static final b:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static c:Ljava/util/Set;
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
    .registers 3

    .line 1
    const-string v0, "ro.miui.cust_variant"

    .line 3
    :try_start_2
    new-instance v1, Ljava/util/HashSet;

    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    sput-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 10
    const-string v2, "android"

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 17
    const-string v2, "com.miui.analytics"

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 24
    const-string v2, "com.miui.cit"

    .line 26
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 31
    const-string v2, "com.xiaomi.finddevice"

    .line 33
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 38
    const-string v2, "com.miui.securitycenter"

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 45
    const-string v2, "com.android.settings"

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 52
    const-string v2, "com.android.vending"

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 59
    const-string v2, "com.google.android.gms"

    .line 61
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 66
    const-string v2, "com.xiaomi.factory.mmi"

    .line 68
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 73
    const-string v2, "com.miui.qr"

    .line 75
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 80
    const-string v2, "com.android.contacts"

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 87
    const-string v2, "com.qualcomm.qti.autoregistration"

    .line 89
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 94
    const-string v2, "com.miui.tsmclient"

    .line 96
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 101
    const-string v2, "com.miui.sekeytool"

    .line 103
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 108
    const-string v2, "com.android.updater"

    .line 110
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "cn_chinamobile"

    .line 115
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_88

    .line 125
    const-string v1, "cn_chinatelecom"

    .line 127
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_a3

    .line 137
    :cond_88
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 139
    const-string v1, "com.mobiletools.systemhelper"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 146
    const-string v1, "com.miui.dmregservice"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_96} :catch_97

    .line 151
    goto :goto_a3

    .line 152
    :catch_97
    move-exception v0

    .line 153
    const-string v1, "static initializer: "

    .line 155
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-result-object v1

    .line 159
    const-string v2, "PermissionUtil"

    .line 161
    invoke-static {v0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 164
    :cond_a3
    :goto_a3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 4

    const/4 v0, 0x0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 8
    :cond_8
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "1"

    const-string v2, "ro.miui.restrict_imei"

    .line 9
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1e

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    :catch_1e
    move-exception v1

    const-string v2, "isRestrictIMEI "

    .line 10
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PermissionUtil"

    .line 11
    invoke-static {v1, v2, v3}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3
    :cond_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/u;->a()Z

    move-result v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    if-eqz v0, :cond_29

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0

    .line 6
    :cond_29
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
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

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ge v0, v1, :cond_d

    .line 7
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 9
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_d
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 16
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method
