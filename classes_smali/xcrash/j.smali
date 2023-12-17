.class public final Lxcrash/j;
.super Ljava/lang/Object;
.source "JavaCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final q:Lxcrash/j;


# instance fields
.field public final a:Ljava/util/Date;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:[Ljava/lang/String;

.field public p:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lxcrash/j;

    .line 3
    invoke-direct {v0}, Lxcrash/j;-><init>()V

    .line 6
    sput-object v0, Lxcrash/j;->q:Lxcrash/j;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Date;

    .line 6
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 9
    iput-object v0, p0, Lxcrash/j;->a:Ljava/util/Date;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lxcrash/j;->a:Ljava/util/Date;

    .line 8
    iget-object v2, p0, Lxcrash/j;->d:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lxcrash/j;->e:Ljava/lang/String;

    .line 12
    const-string v4, "java"

    .line 14
    invoke-static {v1, p1, v4, v2, v3}, Lxcrash/l;->c(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "pid: "

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget p1, p0, Lxcrash/j;->b:I

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ", tid: "

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, ", name: "

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p1, "  >>> "

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Lxcrash/j;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, " <<<\n\njava stacktrace:\n"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, "\n"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final b(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lxcrash/j;->o:[Ljava/lang/String;

    .line 5
    if-eqz v0, :cond_2e

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, v1, Lxcrash/j;->o:[Ljava/lang/String;

    .line 14
    array-length v4, v3

    .line 15
    const/4 v0, 0x0

    .line 16
    move v5, v0

    .line 17
    :goto_10
    if-ge v5, v4, :cond_2f

    .line 19
    aget-object v0, v3, v5

    .line 21
    :try_start_14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_2b

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 32
    check-cast v6, La/b;

    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-string v6, "xcrash"

    .line 39
    const-string v7, "JavaCrashHandler pattern compile failed"

    .line 41
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_2b
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_10

    .line 47
    :cond_2e
    const/4 v2, 0x0

    .line 48
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v4

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v8

    .line 72
    const-string v9, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    .line 74
    const-string v10, "\n"

    .line 76
    const/4 v11, 0x1

    .line 77
    if-eqz v8, :cond_f1

    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    move-result-object v12

    .line 89
    check-cast v12, Ljava/lang/Thread;

    .line 91
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object v8

    .line 95
    check-cast v8, [Ljava/lang/StackTraceElement;

    .line 97
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 100
    move-result-object v13

    .line 101
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 104
    move-result-object v14

    .line 105
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_6f

    .line 111
    goto :goto_43

    .line 112
    :cond_6f
    if-eqz v2, :cond_94

    .line 114
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v14

    .line 122
    :cond_79
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v15

    .line 126
    if-eqz v15, :cond_90

    .line 128
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v15

    .line 132
    check-cast v15, Ljava/util/regex/Pattern;

    .line 134
    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 137
    move-result-object v15

    .line 138
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 141
    move-result v15

    .line 142
    if-eqz v15, :cond_79

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    const/4 v11, 0x0

    .line 146
    :goto_91
    if-nez v11, :cond_94

    .line 148
    goto :goto_43

    .line 149
    :cond_94
    add-int/lit8 v6, v6, 0x1

    .line 151
    iget v11, v1, Lxcrash/j;->n:I

    .line 153
    if-lez v11, :cond_9f

    .line 155
    if-lt v5, v11, :cond_9f

    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 159
    goto :goto_43

    .line 160
    :cond_9f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v9, "pid: "

    .line 165
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v9, v1, Lxcrash/j;->b:I

    .line 170
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v9, ", tid: "

    .line 175
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    .line 181
    move-result-wide v13

    .line 182
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    const-string v9, ", name: "

    .line 187
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 193
    move-result-object v9

    .line 194
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v9, "  >>> "

    .line 199
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v9, v1, Lxcrash/j;->c:Ljava/lang/String;

    .line 204
    const-string v11, " <<<\n"

    .line 206
    const-string v12, "java stacktrace:\n"

    .line 208
    invoke-static {v0, v9, v11, v10, v12}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    array-length v9, v8

    .line 212
    const/4 v11, 0x0

    .line 213
    :goto_d4
    if-ge v11, v9, :cond_ea

    .line 215
    aget-object v12, v8, v11

    .line 217
    const-string v13, "    at "

    .line 219
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v11, v11, 0x1

    .line 234
    goto :goto_d4

    .line 235
    :cond_ea
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v5, v5, 0x1

    .line 240
    goto/16 :goto_43

    .line 242
    :cond_f1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 245
    move-result v4

    .line 246
    if-le v4, v11, :cond_138

    .line 248
    if-nez v5, :cond_fc

    .line 250
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_fc
    const-string v4, "total JVM threads (exclude the crashed thread): "

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 261
    move-result v3

    .line 262
    sub-int/2addr v3, v11

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    if-eqz v2, :cond_119

    .line 271
    const-string v2, "JVM threads matched whitelist: "

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_119
    iget v2, v1, Lxcrash/j;->n:I

    .line 284
    if-lez v2, :cond_128

    .line 286
    const-string v2, "JVM threads ignored by max count limit: "

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_128
    const-string v2, "dumped JVM threads:"

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v2, "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n"

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 317
    return-object v0
.end method

.method public final c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 16

    .line 1
    const-string v0, "\n\n"

    .line 3
    const-string v1, "xcrash"

    .line 5
    const-string v2, "UTF-8"

    .line 7
    new-instance v3, Ljava/util/Date;

    .line 9
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 12
    sget-object v4, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    .line 14
    invoke-virtual {v4}, Lxcrash/NativeHandler;->c()V

    .line 17
    sget-object v4, Lxcrash/c;->a:Lxcrash/c;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    :try_start_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    const-string v7, "%s/%s_%020d_%s__%s%s"

    .line 28
    const/4 v8, 0x6

    .line 29
    new-array v8, v8, [Ljava/lang/Object;

    .line 31
    iget-object v9, p0, Lxcrash/j;->g:Ljava/lang/String;

    .line 33
    aput-object v9, v8, v4

    .line 35
    const-string v4, "tombstone"

    .line 37
    aput-object v4, v8, v5

    .line 39
    const/4 v4, 0x2

    .line 40
    iget-object v5, p0, Lxcrash/j;->a:Ljava/util/Date;

    .line 42
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 45
    move-result-wide v9

    .line 46
    const-wide/16 v11, 0x3e8

    .line 48
    mul-long/2addr v9, v11

    .line 49
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    move-result-object v5

    .line 53
    aput-object v5, v8, v4

    .line 55
    const/4 v4, 0x3

    .line 56
    iget-object v5, p0, Lxcrash/j;->e:Ljava/lang/String;

    .line 58
    aput-object v5, v8, v4

    .line 60
    const/4 v4, 0x4

    .line 61
    iget-object v5, p0, Lxcrash/j;->c:Ljava/lang/String;

    .line 63
    aput-object v5, v8, v4

    .line 65
    const/4 v4, 0x5

    .line 66
    const-string v5, ".java.xcrash"

    .line 68
    aput-object v5, v8, v4

    .line 70
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Lxcrash/d;->i:Lxcrash/d;

    .line 76
    invoke-virtual {v5, v4}, Lxcrash/d;->b(Ljava/lang/String;)Ljava/io/File;

    .line 79
    move-result-object v4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_50

    .line 80
    goto :goto_5e

    .line 81
    :catch_50
    move-exception v4

    .line 82
    sget-object v5, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 84
    check-cast v5, La/b;

    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    const-string v5, "JavaCrashHandler createLogFile failed"

    .line 91
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v4, 0x0

    .line 95
    :goto_5e
    :try_start_5e
    new-instance v5, Ljava/io/StringWriter;

    .line 97
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 100
    new-instance v6, Ljava/io/PrintWriter;

    .line 102
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 105
    invoke-virtual {p2, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 111
    move-result-object v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_76

    .line 112
    :try_start_6f
    invoke-virtual {p0, v3, p1, v5}, Lxcrash/j;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_73} :catch_74

    .line 116
    goto :goto_85

    .line 117
    :catch_74
    move-exception v3

    .line 118
    goto :goto_78

    .line 119
    :catch_76
    move-exception v3

    .line 120
    const/4 v5, 0x0

    .line 121
    :goto_78
    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 123
    check-cast v6, La/b;

    .line 125
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-string v6, "JavaCrashHandler getEmergency failed"

    .line 130
    invoke-static {v1, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v3, 0x0

    .line 134
    :goto_85
    if-eqz v4, :cond_28a

    .line 136
    :try_start_87
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 138
    const-string v7, "rws"

    .line 140
    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_273
    .catchall {:try_start_87 .. :try_end_8e} :catchall_270

    .line 143
    :try_start_8e
    invoke-static {v5}, Lcom/xiaomi/digest/DigestUtil;->calcuateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string v7, "backtrace feature id:\n\t"

    .line 154
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v5, "error reason:\n\t"

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 205
    if-eqz v3, :cond_d5

    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 214
    :cond_d5
    iget p2, p0, Lxcrash/j;->j:I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_d7} :catch_26e
    .catchall {:try_start_8e .. :try_end_d7} :catchall_26c

    .line 216
    const-string v3, "\n"

    .line 218
    if-gtz p2, :cond_e3

    .line 220
    :try_start_db
    iget v4, p0, Lxcrash/j;->h:I

    .line 222
    if-gtz v4, :cond_e3

    .line 224
    iget v4, p0, Lxcrash/j;->i:I

    .line 226
    if-lez v4, :cond_11e

    .line 228
    :cond_e3
    iget v4, p0, Lxcrash/j;->h:I

    .line 230
    iget v5, p0, Lxcrash/j;->i:I

    .line 232
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 235
    move-result v7

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string v9, "logcat:\n"

    .line 243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    if-lez p2, :cond_fe

    .line 248
    const/16 v9, 0x44

    .line 250
    const-string v10, "main"

    .line 252
    invoke-static {v7, v8, v10, p2, v9}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    .line 255
    :cond_fe
    if-lez v4, :cond_107

    .line 257
    const/16 p2, 0x57

    .line 259
    const-string v9, "system"

    .line 261
    invoke-static {v7, v8, v9, v4, p2}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    .line 264
    :cond_107
    if-lez v5, :cond_110

    .line 266
    const/16 p2, 0x49

    .line 268
    const-string v5, "events"

    .line 270
    invoke-static {v7, v8, v5, v4, p2}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    .line 273
    :cond_110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p2

    .line 280
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 283
    move-result-object p2

    .line 284
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 287
    :cond_11e
    iget-boolean p2, p0, Lxcrash/j;->k:Z

    .line 289
    if-eqz p2, :cond_1a2

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    .line 293
    const-string v4, "open files:\n"

    .line 295
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_129} :catch_26e
    .catchall {:try_start_db .. :try_end_129} :catchall_26c

    .line 298
    const/16 v4, 0xa

    .line 300
    :try_start_12b
    new-instance v5, Ljava/io/File;

    .line 302
    const-string v7, "/proc/self/fd"

    .line 304
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v7, Lxcrash/k;

    .line 309
    invoke-direct {v7}, Lxcrash/k;-><init>()V

    .line 312
    invoke-virtual {v5, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 315
    move-result-object v5

    .line 316
    if-eqz v5, :cond_194

    .line 318
    array-length v7, v5

    .line 319
    const/4 v8, 0x0

    .line 320
    const/4 v9, 0x0

    .line 321
    :goto_140
    if-ge v8, v7, :cond_17c

    .line 323
    aget-object v10, v5, v8
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_144} :catch_194
    .catchall {:try_start_12b .. :try_end_144} :catchall_26c

    .line 325
    :try_start_144
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 328
    move-result-object v11

    .line 329
    invoke-static {v11}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    move-result-object v11
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14c} :catch_14d
    .catchall {:try_start_144 .. :try_end_14c} :catchall_26c

    .line 333
    goto :goto_14e

    .line 334
    :catch_14d
    const/4 v11, 0x0

    .line 335
    :goto_14e
    :try_start_14e
    const-string v12, "    fd "

    .line 337
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 343
    move-result-object v10

    .line 344
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v10, ": "

    .line 349
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    move-result v10

    .line 356
    if-eqz v10, :cond_168

    .line 358
    const-string v10, "???"

    .line 360
    goto :goto_16c

    .line 361
    :cond_168
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 364
    move-result-object v10

    .line 365
    :goto_16c
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v9, v9, 0x1

    .line 373
    const/16 v10, 0x400

    .line 375
    if-le v9, v10, :cond_179

    .line 377
    goto :goto_17c

    .line 378
    :cond_179
    add-int/lit8 v8, v8, 0x1

    .line 380
    goto :goto_140

    .line 381
    :cond_17c
    :goto_17c
    array-length v7, v5

    .line 382
    const/16 v8, 0x400

    .line 384
    if-le v7, v8, :cond_186

    .line 386
    const-string v7, "    ......\n"

    .line 388
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_186
    const-string v7, "    (number of FDs: "

    .line 393
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    array-length v5, v5

    .line 397
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    const-string v5, ")\n"

    .line 402
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_194} :catch_194
    .catchall {:try_start_14e .. :try_end_194} :catchall_26c

    .line 405
    :catch_194
    :cond_194
    :try_start_194
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object p2

    .line 412
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 415
    move-result-object p2

    .line 416
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 419
    :cond_1a2
    iget-boolean p2, p0, Lxcrash/j;->l:Z

    .line 421
    if-eqz p2, :cond_228

    .line 423
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 425
    const/16 v4, 0x1d

    .line 427
    if-lt p2, v4, :cond_1af

    .line 429
    const-string p2, "network info:\nNot supported on Android Q (API level 29) and later.\n\n"

    .line 431
    goto :goto_221

    .line 432
    :cond_1af
    new-instance p2, Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    const-string v4, "network info:\n TCP over IPv4 (From: /proc/PID/net/tcp)\n"

    .line 439
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v4, "/proc/self/net/tcp"

    .line 444
    const/16 v5, 0x400

    .line 446
    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v4, "-\n TCP over IPv6 (From: /proc/PID/net/tcp6)\n"

    .line 455
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v4, "/proc/self/net/tcp6"

    .line 460
    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v4, "-\n UDP over IPv4 (From: /proc/PID/net/udp)\n"

    .line 469
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v4, "/proc/self/net/udp"

    .line 474
    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v4, "-\n UDP over IPv6 (From: /proc/PID/net/udp6)\n"

    .line 483
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v4, "/proc/self/net/udp6"

    .line 488
    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v4, "-\n ICMP in IPv4 (From: /proc/PID/net/icmp)\n"

    .line 497
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/16 v4, 0x100

    .line 502
    const-string v5, "/proc/self/net/icmp"

    .line 504
    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 507
    move-result-object v5

    .line 508
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v5, "-\n ICMP in IPv6 (From: /proc/PID/net/icmp6)\n"

    .line 513
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v5, "/proc/self/net/icmp6"

    .line 518
    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v5, "-\n UNIX domain (From: /proc/PID/net/unix)\n"

    .line 527
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v5, "/proc/self/net/unix"

    .line 532
    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object p2

    .line 546
    :goto_221
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 549
    move-result-object p2

    .line 550
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 553
    :cond_228
    invoke-static {}, Lxcrash/l;->e()Ljava/lang/String;

    .line 556
    move-result-object p2

    .line 557
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 560
    move-result-object p2

    .line 561
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 564
    new-instance p2, Ljava/lang/StringBuilder;

    .line 566
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    const-string v3, "foreground:\n"

    .line 571
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    sget-object v3, Lxcrash/b;->c:Lxcrash/b;

    .line 576
    iget-boolean v3, v3, Lxcrash/b;->b:Z

    .line 578
    if-eqz v3, :cond_246

    .line 580
    const-string v3, "yes"

    .line 582
    goto :goto_248

    .line 583
    :cond_246
    const-string v3, "no"

    .line 585
    :goto_248
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object p2

    .line 595
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 598
    move-result-object p2

    .line 599
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 602
    iget-boolean p2, p0, Lxcrash/j;->m:Z

    .line 604
    if-eqz p2, :cond_268

    .line 606
    invoke-virtual {p0, p1}, Lxcrash/j;->b(Ljava/lang/Thread;)Ljava/lang/String;

    .line 609
    move-result-object p1

    .line 610
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 613
    move-result-object p1

    .line 614
    invoke-virtual {v6, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_268} :catch_26e
    .catchall {:try_start_194 .. :try_end_268} :catchall_26c

    .line 617
    :cond_268
    :goto_268
    :try_start_268
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26b} :catch_28a

    .line 620
    goto :goto_28a

    .line 621
    :catchall_26c
    move-exception p1

    .line 622
    goto :goto_284

    .line 623
    :catch_26e
    move-exception p1

    .line 624
    goto :goto_275

    .line 625
    :catchall_270
    move-exception p1

    .line 626
    const/4 v6, 0x0

    .line 627
    goto :goto_284

    .line 628
    :catch_273
    move-exception p1

    .line 629
    const/4 v6, 0x0

    .line 630
    :goto_275
    :try_start_275
    sget-object p2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 632
    const-string v0, "JavaCrashHandler write log file failed"

    .line 634
    check-cast p2, La/b;

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_281
    .catchall {:try_start_275 .. :try_end_281} :catchall_26c

    .line 642
    if-eqz v6, :cond_28a

    .line 644
    goto :goto_268

    .line 645
    :goto_284
    if-eqz v6, :cond_289

    .line 647
    :try_start_286
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_289} :catch_289

    .line 650
    :catch_289
    :cond_289
    throw p1

    .line 651
    :catch_28a
    :cond_28a
    :goto_28a
    return-void
.end method

.method public final d(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/g;)V
    .registers 21

    move-object v1, p0

    move v0, p1

    .line 1
    iput v0, v1, Lxcrash/j;->b:I

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "unknown"

    goto :goto_e

    :cond_d
    move-object v0, p2

    :goto_e
    iput-object v0, v1, Lxcrash/j;->c:Ljava/lang/String;

    move-object v0, p4

    .line 3
    iput-object v0, v1, Lxcrash/j;->d:Ljava/lang/String;

    move-object v0, p5

    .line 4
    iput-object v0, v1, Lxcrash/j;->e:Ljava/lang/String;

    move v0, p7

    .line 5
    iput-boolean v0, v1, Lxcrash/j;->f:Z

    move-object v0, p6

    .line 6
    iput-object v0, v1, Lxcrash/j;->g:Ljava/lang/String;

    move v0, p8

    .line 7
    iput v0, v1, Lxcrash/j;->h:I

    move v0, p9

    .line 8
    iput v0, v1, Lxcrash/j;->i:I

    move v0, p10

    .line 9
    iput v0, v1, Lxcrash/j;->j:I

    move v0, p11

    .line 10
    iput-boolean v0, v1, Lxcrash/j;->k:Z

    move/from16 v0, p12

    .line 11
    iput-boolean v0, v1, Lxcrash/j;->l:Z

    move/from16 v0, p13

    .line 12
    iput-boolean v0, v1, Lxcrash/j;->m:Z

    move/from16 v0, p14

    .line 13
    iput v0, v1, Lxcrash/j;->n:I

    move-object/from16 v0, p15

    .line 14
    iput-object v0, v1, Lxcrash/j;->o:[Ljava/lang/String;

    if-nez p3, :cond_54

    .line 15
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, v1, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 16
    :try_start_40
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_54

    :catch_44
    move-exception v0

    move-object v2, v0

    .line 17
    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 18
    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "xcrash"

    const-string v3, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    .line 19
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lxcrash/j;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 11
    goto :goto_1a

    .line 12
    :catch_b
    move-exception v0

    .line 13
    sget-object v1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 15
    check-cast v1, La/b;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v1, "xcrash"

    .line 22
    const-string v2, "JavaCrashHandler handleException failed"

    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_1a
    iget-boolean v0, p0, Lxcrash/j;->f:Z

    .line 29
    if-eqz v0, :cond_26

    .line 31
    iget-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 33
    if-eqz v0, :cond_35

    .line 35
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    goto :goto_35

    .line 39
    :cond_26
    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    .line 41
    invoke-virtual {p1}, Lxcrash/b;->a()V

    .line 44
    iget p1, p0, Lxcrash/j;->b:I

    .line 46
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 49
    const/16 p1, 0xa

    .line 51
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 54
    :cond_35
    :goto_35
    return-void
.end method
