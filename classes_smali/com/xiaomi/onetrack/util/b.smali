.class public Lcom/xiaomi/onetrack/util/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "2.0.2"

.field public static final b:Ljava/lang/String; = "OneTrack 2.0.2"

.field public static final c:Ljava/lang/String; = "CrashUtil"

.field public static final d:Ljava/lang/String; = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

.field public static final e:Ljava/lang/String; = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"

.field public static final f:Ljava/lang/String; = "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++"

.field public static final g:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field public static final h:Ljava/lang/String; = "java"

.field public static final i:Ljava/lang/String; = "tombstone"

.field public static final j:Ljava/lang/String; = ".java.xcrash"

.field private static final k:Ljava/lang/String; = "%21s %8s\n"

.field private static final l:Ljava/lang/String; = "%21s %8s %21s %8s\n"

.field private static final m:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    const-string v0, "/data/local/su"

    .line 3
    const-string v1, "/data/local/bin/su"

    .line 5
    const-string v2, "/data/local/xbin/su"

    .line 7
    const-string v3, "/system/xbin/su"

    .line 9
    const-string v4, "/system/bin/su"

    .line 11
    const-string v5, "/system/bin/.ext/su"

    .line 13
    const-string v6, "/system/bin/failsafe/su"

    .line 15
    const-string v7, "/system/sd/xbin/su"

    .line 17
    const-string v8, "/system/usr/we-need-root/su"

    .line 19
    const-string v9, "/sbin/su"

    .line 21
    const-string v10, "/su/bin/su"

    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/xiaomi/onetrack/util/b;->m:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 4

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_11} :catch_12

    return-wide v0

    :catch_12
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(III)Ljava/lang/String;
    .registers 7

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "logcat:\n"

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p0, :cond_13

    const/16 v2, 0x44

    const-string v3, "main"

    .line 54
    invoke-static {v0, v1, v3, p0, v2}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_13
    if-lez p1, :cond_1c

    const/16 p0, 0x57

    const-string v2, "system"

    .line 55
    invoke-static {v0, v1, v2, p1, p0}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_1c
    if-lez p2, :cond_25

    const/16 p0, 0x49

    const-string p2, "events"

    .line 56
    invoke-static {v0, v1, p2, p1, p0}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_25
    const-string p0, "\n"

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p0, 0x0

    .line 17
    :goto_11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "unknown"

    :cond_19
    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_2f

    .line 2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_14

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 5
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    :cond_2f
    const/4 p0, 0x0

    .line 6
    :try_start_30
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_50} :catch_77
    .catchall {:try_start_30 .. :try_end_50} :catchall_6e

    .line 7
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_78
    .catchall {:try_start_50 .. :try_end_62} :catchall_6c

    if-nez v1, :cond_68

    .line 11
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_67

    :catch_67
    return-object p1

    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_7b

    goto :goto_7b

    :catchall_6c
    move-exception p0

    goto :goto_71

    :catchall_6e
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_71
    if-eqz v0, :cond_76

    :try_start_73
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_76

    .line 12
    :catch_76
    :cond_76
    throw p0

    :catch_77
    move-object v0, p0

    :catch_78
    if-eqz v0, :cond_7b

    goto :goto_68

    :catch_7b
    :cond_7b
    :goto_7b
    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 19
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_57
    .catchall {:try_start_6 .. :try_end_10} :catchall_55

    const/4 v1, 0x0

    .line 20
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    add-int/lit8 v1, v1, 0x1

    if-eqz p1, :cond_27

    if-gt v1, p1, :cond_11

    :cond_27
    const-string v4, "  "

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_35
    if-lez p1, :cond_4b

    if-le v1, p1, :cond_4b

    const-string p1, "  ......\n"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  (number of records: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_52
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4f

    .line 25
    :cond_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_78

    goto :goto_78

    :catchall_4f
    move-exception p0

    move-object v1, v2

    goto :goto_7d

    :catch_52
    move-exception p1

    move-object v1, v2

    goto :goto_58

    :catchall_55
    move-exception p0

    goto :goto_7d

    :catch_57
    move-exception p1

    :goto_58
    :try_start_58
    const-string v2, "CrashUtil"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashUtil getInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") failed"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    if-eqz v1, :cond_78

    .line 27
    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_78

    .line 28
    :catch_78
    :cond_78
    :goto_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_7d
    if-eqz v1, :cond_82

    .line 29
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_82

    .line 30
    :catch_82
    :cond_82
    throw p0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nTombstone maker: \'OneTrack 2.0.2\'\nCrash type: \'"

    const-string v2, "\'\nStart time: \'"

    .line 32
    invoke-static {v1, p2, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 33
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nCrash time: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nApp ID: \'"

    const-string p1, "\'\nApp version: \'"

    .line 35
    invoke-static {p2, p0, p3, p1, p4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\'\nRooted: \'"

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->a()Z

    move-result p0

    if-eqz p0, :cond_39

    const-string p0, "Yes"

    goto :goto_3b

    :cond_39
    const-string p0, "No"

    :goto_3b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nAPI level: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\'\nOS version: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nABI list: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nManufacturer: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nBrand: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nModel: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\nBuild fingerprint: \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string p1, "\'\n"

    .line 39
    invoke-static {p2, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V
    .registers 8

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/system/bin/logcat"

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-b"

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-d"

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-v"

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "threadtime"

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-t"

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "--pid"

    .line 73
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const-string p3, "--------- tail end of log "

    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 79
    :try_start_7b
    new-instance p2, Ljava/lang/ProcessBuilder;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 80
    new-instance p3, Ljava/io/BufferedReader;

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_99} :catch_b2
    .catchall {:try_start_7b .. :try_end_99} :catchall_ae

    .line 81
    :goto_99
    :try_start_99
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a8

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a7} :catch_ac
    .catchall {:try_start_99 .. :try_end_a7} :catchall_c0

    goto :goto_99

    .line 83
    :cond_a8
    :goto_a8
    :try_start_a8
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_bf

    goto :goto_bf

    :catch_ac
    move-exception p0

    goto :goto_b5

    :catchall_ae
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    goto :goto_c1

    :catch_b2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    :goto_b5
    :try_start_b5
    const-string p1, "CrashUtil"

    const-string p2, "CrashUtil run logcat command failed"

    .line 84
    invoke-static {p1, p2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_c0

    if-eqz p3, :cond_bf

    goto :goto_a8

    :catch_bf
    :cond_bf
    :goto_bf
    return-void

    :catchall_c0
    move-exception p0

    :goto_c1
    if-eqz p3, :cond_c6

    .line 85
    :try_start_c3
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c6

    .line 86
    :catch_c6
    :cond_c6
    throw p0
.end method

.method public static a()Z
    .registers 6

    const/4 v0, 0x0

    .line 13
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/util/b;->m:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 14
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_19
    :cond_19
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, " Process Summary (From: android.os.Debug.MemoryInfo)\n"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, ""

    .line 15
    aput-object v5, v3, v4

    .line 17
    const-string v6, "Pss(KB)"

    .line 19
    const/4 v7, 0x1

    .line 20
    aput-object v6, v3, v7

    .line 22
    const-string v6, "%21s %8s\n"

    .line 24
    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    aput-object v5, v3, v4

    .line 35
    const-string v5, "------"

    .line 37
    aput-object v5, v3, v7

    .line 39
    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :try_start_2d
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    .line 48
    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 51
    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 54
    new-array v5, v2, [Ljava/lang/Object;

    .line 56
    const-string v8, "Java Heap:"

    .line 58
    aput-object v8, v5, v4

    .line 60
    const-string v8, "summary.java-heap"

    .line 62
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v8

    .line 66
    aput-object v8, v5, v7

    .line 68
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-array v5, v2, [Ljava/lang/Object;

    .line 77
    const-string v8, "Native Heap:"

    .line 79
    aput-object v8, v5, v4

    .line 81
    const-string v8, "summary.native-heap"

    .line 83
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v8

    .line 87
    aput-object v8, v5, v7

    .line 89
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-array v5, v2, [Ljava/lang/Object;

    .line 98
    const-string v8, "Code:"

    .line 100
    aput-object v8, v5, v4

    .line 102
    const-string v8, "summary.code"

    .line 104
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v8

    .line 108
    aput-object v8, v5, v7

    .line 110
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-array v5, v2, [Ljava/lang/Object;

    .line 119
    const-string v8, "Stack:"

    .line 121
    aput-object v8, v5, v4

    .line 123
    const-string v8, "summary.stack"

    .line 125
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v8

    .line 129
    aput-object v8, v5, v7

    .line 131
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-array v5, v2, [Ljava/lang/Object;

    .line 140
    const-string v8, "Graphics:"

    .line 142
    aput-object v8, v5, v4

    .line 144
    const-string v8, "summary.graphics"

    .line 146
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v8

    .line 150
    aput-object v8, v5, v7

    .line 152
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-array v5, v2, [Ljava/lang/Object;

    .line 161
    const-string v8, "Private Other:"

    .line 163
    aput-object v8, v5, v4

    .line 165
    const-string v8, "summary.private-other"

    .line 167
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v8

    .line 171
    aput-object v8, v5, v7

    .line 173
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-array v5, v2, [Ljava/lang/Object;

    .line 182
    const-string v8, "System:"

    .line 184
    aput-object v8, v5, v4

    .line 186
    const-string v8, "summary.system"

    .line 188
    invoke-virtual {v3, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v8

    .line 192
    aput-object v8, v5, v7

    .line 194
    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v5, "%21s %8s %21s %8s\n"

    .line 203
    const/4 v6, 0x4

    .line 204
    new-array v6, v6, [Ljava/lang/Object;

    .line 206
    const-string v8, "TOTAL:"

    .line 208
    aput-object v8, v6, v4

    .line 210
    const-string v4, "summary.total-pss"

    .line 212
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v4

    .line 216
    aput-object v4, v6, v7

    .line 218
    const-string v4, "TOTAL SWAP:"

    .line 220
    aput-object v4, v6, v2

    .line 222
    const/4 v2, 0x3

    .line 223
    const-string v4, "summary.total-swap"

    .line 225
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    aput-object v3, v6, v2

    .line 231
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_ed} :catch_ee

    .line 238
    goto :goto_f6

    .line 239
    :catch_ee
    move-exception v1

    .line 240
    const-string v2, "CrashUtil"

    .line 242
    const-string v3, "CrashUtil getProcessMemoryInfo failed"

    .line 244
    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :goto_f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "memory info:\n System Summary (From: /proc/meminfo)\n"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "/proc/meminfo"

    .line 9
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "-\n Process Status (From: /proc/PID/status)\n"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "/proc/self/status"

    .line 23
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "-\n Process Limits (From: /proc/PID/limits)\n"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "/proc/self/limits"

    .line 37
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "-\n"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->c()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "\n"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    const-string v0, "network info:\nNot supported on Android Q (API level 29) and later.\n\n"

    .line 9
    return-object v0

    .line 10
    :cond_9
    const-string v0, "network info:\n TCP over IPv4 (From: /proc/PID/net/tcp)\n"

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "/proc/self/net/tcp"

    .line 18
    const/16 v2, 0x400

    .line 20
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "-\n TCP over IPv6 (From: /proc/PID/net/tcp6)\n"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "/proc/self/net/tcp6"

    .line 34
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "-\n UDP over IPv4 (From: /proc/PID/net/udp)\n"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "/proc/self/net/udp"

    .line 48
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "-\n UDP over IPv6 (From: /proc/PID/net/udp6)\n"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "/proc/self/net/udp6"

    .line 62
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "-\n ICMP in IPv4 (From: /proc/PID/net/icmp)\n"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "/proc/self/net/icmp"

    .line 76
    const/16 v2, 0x100

    .line 78
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "-\n ICMP in IPv6 (From: /proc/PID/net/icmp6)\n"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "/proc/self/net/icmp6"

    .line 92
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "-\n UNIX domain (From: /proc/PID/net/unix)\n"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "/proc/self/net/unix"

    .line 106
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    const-string v2, "\n"

    .line 112
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "open files:\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/16 v1, 0xa

    .line 10
    :try_start_9
    new-instance v2, Ljava/io/File;

    .line 12
    const-string v3, "/proc/self/fd"

    .line 14
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v3, Lcom/xiaomi/onetrack/util/c;

    .line 19
    invoke-direct {v3}, Lcom/xiaomi/onetrack/util/c;-><init>()V

    .line 22
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_6f

    .line 28
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    move v5, v4

    .line 31
    :goto_1e
    const/16 v6, 0x400

    .line 33
    if-ge v4, v3, :cond_59

    .line 35
    aget-object v7, v2, v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_6f

    .line 37
    const/4 v8, 0x0

    .line 38
    :try_start_25
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    move-result-object v9

    .line 42
    invoke-static {v9}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v8
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_2d

    .line 46
    :catch_2d
    :try_start_2d
    const-string v9, "    fd "

    .line 48
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v7, ": "

    .line 60
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_47

    .line 69
    const-string v7, "???"

    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    :goto_4b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 84
    if-le v5, v6, :cond_56

    .line 86
    goto :goto_59

    .line 87
    :cond_56
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_1e

    .line 90
    :cond_59
    :goto_59
    array-length v3, v2

    .line 91
    if-le v3, v6, :cond_61

    .line 93
    const-string v3, "    ......\n"

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_61
    const-string v3, "    (number of FDs: "

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    array-length v2, v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, ")\n"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6f} :catch_6f

    .line 112
    :catch_6f
    :cond_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
