.class public Lcom/xiaomi/onetrack/util/oaid/helpers/i;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "OnePlusDeviceIDHelper"


# instance fields
.field public a:Lcom/xiaomi/onetrack/util/oaid/a/d;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/ServiceConnection;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/i;)V

    .line 17
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    .line 19
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const-string v0, "OnePlusDeviceIDHelper"

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    if-nez v2, :cond_66

    const/4 v2, 0x0

    .line 18
    :try_start_b
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v3, 0x40

    invoke-virtual {p2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_21

    :catch_18
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v2

    :goto_21
    if-eqz p2, :cond_64

    .line 20
    array-length v3, p2

    if-lez v3, :cond_64

    const/4 v3, 0x0

    .line 21
    aget-object p2, p2, v3

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    :try_start_2d
    const-string v4, "SHA1"

    .line 22
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 23
    invoke-virtual {v4, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    array-length v5, p2

    :goto_3f
    if-ge v3, v5, :cond_57

    aget-byte v6, p2, v3

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 27
    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_64
    :goto_64
    iput-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    .line 30
    :cond_66
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a:Lcom/xiaomi/onetrack/util/oaid/a/d;

    check-cast p2, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;

    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    invoke-virtual {p2, v1, v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.heytap.openid"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_18

    .line 17
    int-to-long v2, p1

    .line 18
    const-wide/16 v4, 0x1

    .line 20
    cmp-long p1, v2, v4

    .line 22
    if-gez p1, :cond_22

    .line 24
    return v1

    .line 25
    :catch_18
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "OnePlusDeviceIDHelper"

    .line 32
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "OnePlusDeviceIDHelper"

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_7d

    .line 5
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_60
    .catchall {:try_start_23 .. :try_end_2f} :catchall_5e

    if-nez v1, :cond_40

    .line 6
    :try_start_31
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-object v2

    .line 8
    :cond_40
    :try_start_40
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/oaid/a/d$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a:Lcom/xiaomi/onetrack/util/oaid/a/d;

    if-eqz v1, :cond_4f

    const-string v1, "OUID"

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4e} :catch_60
    .catchall {:try_start_40 .. :try_end_4e} :catchall_5e

    move-object v2, v1

    .line 10
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_7d

    :catch_55
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :catchall_5e
    move-exception v1

    goto :goto_6e

    :catch_60
    move-exception v1

    .line 12
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    .line 13
    :try_start_68
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_55

    goto :goto_7d

    :goto_6e
    :try_start_6e
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_74

    goto :goto_7c

    :catch_74
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_7c
    throw v1

    :cond_7d
    :goto_7d
    return-object v2
.end method
