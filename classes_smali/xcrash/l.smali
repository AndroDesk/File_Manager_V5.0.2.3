.class public final Lxcrash/l;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[Ljava/lang/String;


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
    sput-object v0, Lxcrash/l;->a:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 p0, 0x0

    .line 7
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1d

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    const/4 p0, 0x1

    .line 29
    :cond_1c
    return p0

    .line 30
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 33
    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_21

    .line 34
    :catch_21
    return p0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    .line 9
    new-instance v3, Ljava/io/FileReader;

    .line 11
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_56
    .catchall {:try_start_6 .. :try_end_10} :catchall_54

    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_35

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 31
    move-result v4

    .line 32
    if-lez v4, :cond_11

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    if-eqz p0, :cond_27

    .line 38
    if-gt v1, p0, :cond_11

    .line 40
    :cond_27
    const-string v4, "  "

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "\n"

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_11

    .line 54
    :cond_35
    if-lez p0, :cond_4b

    .line 56
    if-le v1, p0, :cond_4b

    .line 58
    const-string p0, "  ......\n"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p0, "  (number of records: "

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, ")\n"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_51
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4f

    .line 76
    :cond_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_7e

    .line 79
    goto :goto_7e

    .line 80
    :catchall_4f
    move-exception p0

    .line 81
    goto :goto_84

    .line 82
    :catch_51
    move-exception p0

    .line 83
    move-object v1, v2

    .line 84
    goto :goto_57

    .line 85
    :catchall_54
    move-exception p0

    .line 86
    goto :goto_83

    .line 87
    :catch_56
    move-exception p0

    .line 88
    :goto_57
    :try_start_57
    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 90
    const-string v3, "xcrash"

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v5, "Util getInfo("

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string p1, ") failed"

    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    check-cast v2, La/b;

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {v3, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_57 .. :try_end_79} :catchall_54

    .line 122
    if-eqz v1, :cond_7e

    .line 124
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7e

    .line 127
    :catch_7e
    :cond_7e
    :goto_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :goto_83
    move-object v2, v1

    .line 133
    :goto_84
    if-eqz v2, :cond_89

    .line 135
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_89

    .line 138
    :catch_89
    :cond_89
    throw p0
.end method

.method public static c(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 7
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    const-string v1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nTombstone maker: \'xCrash 2.4.9\'\nCrash type: \'"

    .line 12
    const-string v2, "\'\nStart time: \'"

    .line 14
    invoke-static {v1, p2, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, "\'\nCrash time: \'"

    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, "\'\nApp ID: \'"

    .line 39
    const-string p1, "\'\nApp version: \'"

    .line 41
    invoke-static {p2, p0, p3, p1, p4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string p0, "\'\nRooted: \'"

    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 p0, 0x0

    .line 50
    :try_start_31
    sget-object p1, Lxcrash/l;->a:[Ljava/lang/String;

    .line 52
    const/16 p3, 0xb

    .line 54
    move p4, p0

    .line 55
    :goto_36
    if-ge p4, p3, :cond_4a

    .line 57
    aget-object v0, p1, p4

    .line 59
    new-instance v1, Ljava/io/File;

    .line 61
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 67
    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_43} :catch_4a

    .line 68
    if-eqz v0, :cond_47

    .line 70
    const/4 p0, 0x1

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    add-int/lit8 p4, p4, 0x1

    .line 74
    goto :goto_36

    .line 75
    :catch_4a
    :cond_4a
    :goto_4a
    if-eqz p0, :cond_4f

    .line 77
    const-string p0, "Yes"

    .line 79
    goto :goto_51

    .line 80
    :cond_4f
    const-string p0, "No"

    .line 82
    :goto_51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, "\'\nAPI level: \'"

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string p0, "\'\nOS version: \'"

    .line 97
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 102
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string p0, "\'\nABI list: \'"

    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 112
    const-string p1, ","

    .line 114
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string p0, "\'\nManufacturer: \'"

    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 128
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string p0, "\'\nBrand: \'"

    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 138
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string p0, "\'\nModel: \'"

    .line 143
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 148
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string p0, "\'\nBuild fingerprint: \'"

    .line 153
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 158
    const-string p1, "\'\n"

    .line 160
    invoke-static {p2, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method

.method public static d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V
    .registers 7

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const-string v1, "/system/bin/logcat"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v1, "-b"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "-d"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "-v"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "threadtime"

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "-t"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string p3, "--pid"

    .line 52
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string p3, "*:"

    .line 65
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    const-string p3, "--------- tail end of log "

    .line 84
    const-string p4, " ("

    .line 86
    invoke-static {p1, p3, p2, p4}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p2, " "

    .line 91
    invoke-static {p2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p0, ")\n"

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 p0, 0x0

    .line 104
    :try_start_67
    new-instance p2, Ljava/lang/ProcessBuilder;

    .line 106
    const/4 p3, 0x0

    .line 107
    new-array p3, p3, [Ljava/lang/String;

    .line 109
    invoke-direct {p2, p3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 119
    move-result-object p2

    .line 120
    new-instance p3, Ljava/io/BufferedReader;

    .line 122
    new-instance p4, Ljava/io/InputStreamReader;

    .line 124
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 131
    invoke-direct {p3, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_85} :catch_98
    .catchall {:try_start_67 .. :try_end_85} :catchall_96

    .line 134
    :goto_85
    :try_start_85
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_ab

    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string p0, "\n"

    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_93} :catch_94
    .catchall {:try_start_85 .. :try_end_93} :catchall_af

    .line 148
    goto :goto_85

    .line 149
    :catch_94
    move-exception p0

    .line 150
    goto :goto_9b

    .line 151
    :catchall_96
    move-exception p1

    .line 152
    goto :goto_b2

    .line 153
    :catch_98
    move-exception p1

    .line 154
    move-object p3, p0

    .line 155
    move-object p0, p1

    .line 156
    :goto_9b
    :try_start_9b
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 158
    const-string p2, "xcrash"

    .line 160
    const-string p4, "Util run logcat command failed"

    .line 162
    check-cast p1, La/b;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-static {p2, p4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_af

    .line 170
    if-eqz p3, :cond_ae

    .line 172
    :cond_ab
    :try_start_ab
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_ae

    .line 175
    :catch_ae
    :cond_ae
    return-void

    .line 176
    :catchall_af
    move-exception p0

    .line 177
    move-object p1, p0

    .line 178
    move-object p0, p3

    .line 179
    :goto_b2
    if-eqz p0, :cond_b7

    .line 181
    :try_start_b4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b7

    .line 184
    :catch_b7
    :cond_b7
    throw p1
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "memory info:\n System Summary (From: /proc/meminfo)\n"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "/proc/meminfo"

    .line 10
    invoke-static {v1, v2}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "-\n Process Status (From: /proc/PID/status)\n"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "/proc/self/status"

    .line 24
    invoke-static {v1, v2}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "-\n Process Limits (From: /proc/PID/limits)\n"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "/proc/self/limits"

    .line 38
    invoke-static {v1, v2}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "-\n"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Lxcrash/l;->f()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "\n"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public static f()Ljava/lang/String;
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
    goto :goto_fd

    .line 239
    :catch_ee
    move-exception v1

    .line 240
    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 242
    check-cast v2, La/b;

    .line 244
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    const-string v2, "xcrash"

    .line 249
    const-string v3, "Util getProcessMemoryInfo failed"

    .line 251
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_fd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    return-object v0
.end method

.method public static g(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 9
    if-eqz p0, :cond_2f

    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2f

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2f

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 33
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 35
    if-ne v1, p1, :cond_14

    .line 37
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_14

    .line 45
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 47
    return-object p0

    .line 48
    :catch_2f
    :cond_2f
    const/4 p0, 0x0

    .line 49
    :try_start_30
    new-instance v0, Ljava/io/BufferedReader;

    .line 51
    new-instance v1, Ljava/io/FileReader;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v3, "/proc/"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, "/cmdline"

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_50} :catch_73
    .catchall {:try_start_30 .. :try_end_50} :catchall_6c

    .line 81
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_76

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_74
    .catchall {:try_start_50 .. :try_end_62} :catchall_68

    .line 99
    if-nez v1, :cond_76

    .line 101
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_67

    .line 104
    :catch_67
    return-object p1

    .line 105
    :catchall_68
    move-exception p0

    .line 106
    move-object p1, p0

    .line 107
    move-object p0, v0

    .line 108
    goto :goto_6d

    .line 109
    :catchall_6c
    move-exception p1

    .line 110
    :goto_6d
    if-eqz p0, :cond_72

    .line 112
    :try_start_6f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_72

    .line 115
    :catch_72
    :cond_72
    throw p1

    .line 116
    :catch_73
    move-object v0, p0

    .line 117
    :catch_74
    if-eqz v0, :cond_79

    .line 119
    :cond_76
    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_79

    .line 122
    :catch_79
    :cond_79
    return-object p0
.end method
