.class public Lcom/xiaomi/onetrack/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:J = 0x0L

.field public static final b:J = 0x1L

.field public static final c:J = 0x2L

.field public static final d:Ljava/lang/String; = "eventName"

.field public static final e:Ljava/lang/String; = "data"

.field private static final f:Ljava/lang/String; = "NetworkAccessManager"

.field private static final g:Ljava/lang/String; = "networkAccess"

.field private static h:Ljava/lang/String; = "onetrack_netaccess_%s"

.field private static i:Ljava/text/SimpleDateFormat;

.field private static j:Z

.field private static volatile k:Z

.field private static volatile l:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyyMMdd"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/xiaomi/onetrack/c/i;->j:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    sput-boolean v1, Lcom/xiaomi/onetrack/c/i;->k:Z

    .line 16
    sput-boolean v0, Lcom/xiaomi/onetrack/c/i;->l:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/xiaomi/onetrack/api/e;)V
    .registers 3

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->d()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_23

    if-nez v1, :cond_b

    .line 5
    monitor-exit v0

    return-void

    :cond_b
    if-eqz p0, :cond_21

    .line 6
    :try_start_d
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_21

    :cond_14
    const/4 v1, 0x1

    .line 7
    sput-boolean v1, Lcom/xiaomi/onetrack/c/i;->l:Z

    .line 8
    new-instance v1, Lcom/xiaomi/onetrack/c/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/c/k;-><init>(Lcom/xiaomi/onetrack/api/e;)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    new-instance v0, Lcom/xiaomi/onetrack/c/j;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 2
    sput-boolean p0, Lcom/xiaomi/onetrack/c/i;->j:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->j:Z

    return v0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .registers 5

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_allowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".ot_net_disallowed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_2d

    .line 6
    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_56

    .line 9
    :cond_2d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_39} :catch_3a

    goto :goto_56

    :catch_3a
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkAccessStateEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "failed "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkAccessManager"

    invoke-static {v1, p0, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public static b()Z
    .registers 3

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_disallowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static declared-synchronized c()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_b2

    const/4 v4, 0x0

    if-nez v1, :cond_2c

    .line 50
    monitor-exit v0

    return-object v4

    .line 51
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_b2

    .line 52
    :try_start_31
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_65
    .catchall {:try_start_31 .. :try_end_36} :catchall_62

    .line 53
    :try_start_36
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_5d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_5b

    .line 54
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 55
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 56
    invoke-static {v4}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 57
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_59
    .catchall {:try_start_3b .. :try_end_51} :catchall_a9

    goto :goto_3b

    .line 59
    :cond_52
    :try_start_52
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 60
    :goto_55
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_b2

    goto :goto_8a

    :catch_59
    move-exception v4

    goto :goto_69

    :catchall_5b
    move-exception v1

    goto :goto_ab

    :catch_5d
    move-exception v2

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_69

    :catchall_62
    move-exception v1

    move-object v5, v4

    goto :goto_ab

    :catch_65
    move-exception v2

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    :goto_69
    :try_start_69
    const-string v6, "NetworkAccessManager"

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cta getCacheData error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_a9

    .line 63
    :try_start_86
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    goto :goto_55

    .line 64
    :goto_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_9f

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 66
    :cond_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a7

    .line 67
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_a7
    .catchall {:try_start_86 .. :try_end_a7} :catchall_b2

    .line 68
    :cond_a7
    monitor-exit v0

    return-object v1

    :catchall_a9
    move-exception v1

    move-object v4, v2

    .line 69
    :goto_ab
    :try_start_ab
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 70
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 71
    throw v1
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_b7

    const/4 v1, 0x0

    .line 4
    :try_start_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_4b

    .line 7
    :cond_38
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 10
    :cond_4b
    :goto_4b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "eventName"

    .line 11
    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data"

    .line 12
    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 14
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_67} :catch_8a
    .catchall {:try_start_24 .. :try_end_67} :catchall_87

    .line 15
    :try_start_67
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_85
    .catchall {:try_start_67 .. :try_end_6c} :catchall_af

    .line 16
    :try_start_6c
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 19
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_78} :catch_82
    .catchall {:try_start_6c .. :try_end_78} :catchall_7f

    .line 20
    :try_start_78
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 21
    :goto_7b
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_b7

    goto :goto_ad

    :catchall_7f
    move-exception p0

    move-object v1, v2

    goto :goto_b0

    :catch_82
    move-exception p0

    move-object v1, v2

    goto :goto_8c

    :catch_85
    move-exception p0

    goto :goto_8c

    :catchall_87
    move-exception p0

    move-object p1, v1

    goto :goto_b0

    :catch_8a
    move-exception p0

    move-object p1, v1

    :goto_8c
    :try_start_8c
    const-string v2, "NetworkAccessManager"

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cta doSaveData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_8c .. :try_end_a9} :catchall_af

    .line 24
    :try_start_a9
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b7

    goto :goto_7b

    .line 25
    :goto_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p0

    .line 26
    :goto_b0
    :try_start_b0
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 27
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 28
    throw p0
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Z)V
    .registers 8

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 29
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_61

    .line 31
    :cond_1a
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v4, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v5, v3

    .line 34
    :goto_35
    array-length v6, v4

    if-ge v5, v6, :cond_57

    .line 35
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_54

    if-nez p0, :cond_4f

    .line 36
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_54

    .line 37
    :cond_4f
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_54
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 38
    :cond_57
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 39
    array-length p0, p0

    if-nez p0, :cond_85

    .line 40
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z

    goto :goto_85

    .line 41
    :cond_61
    :goto_61
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_67
    .catchall {:try_start_3 .. :try_end_63} :catchall_65

    .line 42
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    goto :goto_87

    :catch_67
    move-exception p0

    :try_start_68
    const-string v1, "NetworkAccessManager"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cta removeObsoleteEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_65

    .line 45
    :cond_85
    :goto_85
    monitor-exit v0

    return-void

    :goto_87
    monitor-exit v0

    throw p0
.end method

.method public static d()Z
    .registers 1

    .line 2
    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->l:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->k:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic d(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lcom/xiaomi/onetrack/c/i;->l:Z

    return p0
.end method

.method private static e()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 23
    const-string v2, "networkAccess"

    .line 25
    invoke-static {v1, v0, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
