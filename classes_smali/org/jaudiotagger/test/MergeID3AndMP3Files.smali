.class public Lorg/jaudiotagger/test/MergeID3AndMP3Files;
.super Ljava/lang/Object;
.source "MergeID3AndMP3Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/test/MergeID3AndMP3Files$DirFilter;,
        Lorg/jaudiotagger/test/MergeID3AndMP3Files$MP3FileFilter;
    }
.end annotation


# static fields
.field private static count:I

.field private static failed:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static append(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    new-instance v2, Ljava/io/FileInputStream;

    .line 9
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 19
    new-instance v3, Ljava/io/FileOutputStream;

    .line 21
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 24
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 26
    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 31
    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 36
    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    :goto_26
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    .line 42
    move-result v7

    .line 43
    const/4 v8, -0x1

    .line 44
    if-le v7, v8, :cond_31

    .line 46
    invoke-virtual {v6, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 49
    goto :goto_26

    .line 50
    :cond_31
    :goto_31
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    .line 53
    move-result v7

    .line 54
    if-le v7, v8, :cond_3b

    .line 56
    invoke-virtual {v6, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 59
    goto :goto_31

    .line 60
    :cond_3b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 63
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 66
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 72
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 85
    move-result-wide p0

    .line 86
    add-long/2addr v1, p0

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 90
    move-result-wide p0

    .line 91
    cmp-long p0, v1, p0

    .line 93
    if-eqz p0, :cond_62

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_61} :catch_64

    .line 98
    return v0

    .line 99
    :cond_62
    const/4 p0, 0x1

    .line 100
    return p0

    .line 101
    :catch_64
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    return v0
.end method

.method public static copyAudioToTmp(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->append(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z

    .line 17
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10

    .line 1
    new-instance v0, Lorg/jaudiotagger/test/MergeID3AndMP3Files;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/test/MergeID3AndMP3Files;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const-string v2, "usage MergeID3AndMP3Files FromDir ToDir mp3File"

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_1b

    .line 12
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 14
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 19
    const-string v4, "      You must enter the from dir,outputdir and the mp3file to append"

    .line 21
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 27
    goto :goto_2e

    .line 28
    :cond_1b
    array-length v1, p0

    .line 29
    const/4 v4, 0x3

    .line 30
    if-eq v1, v4, :cond_2e

    .line 32
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 34
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 39
    const-string v4, "      Only three parameters accepted"

    .line 41
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 47
    :cond_2e
    :goto_2e
    new-instance v1, Ljava/io/File;

    .line 49
    const/4 v4, 0x0

    .line 50
    aget-object v5, p0, v4

    .line 52
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 58
    move-result v5

    .line 59
    const-string v6, "      Directory "

    .line 61
    const-string v7, " could not be found"

    .line 63
    if-nez v5, :cond_5d

    .line 65
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 67
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 72
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v8

    .line 76
    aget-object v4, p0, v4

    .line 78
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 94
    :cond_5d
    new-instance v4, Ljava/io/File;

    .line 96
    aget-object v5, p0, v3

    .line 98
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_87

    .line 107
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 109
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 114
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v6

    .line 118
    aget-object v8, p0, v3

    .line 120
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 136
    :cond_87
    new-instance v5, Ljava/io/File;

    .line 138
    const/4 v6, 0x2

    .line 139
    aget-object v8, p0, v6

    .line 141
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 147
    move-result v8

    .line 148
    if-nez v8, :cond_b4

    .line 150
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 152
    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 157
    const-string v8, "      Mp3File "

    .line 159
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v8

    .line 163
    aget-object p0, p0, v6

    .line 165
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 181
    :cond_b4
    new-instance p0, Ljava/util/Date;

    .line 183
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 186
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 188
    const-string v3, "Started to merge from:"

    .line 190
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, " at "

    .line 203
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v6, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-direct {v0, v1, v4, v5}, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->scanSingleDir(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 227
    new-instance p0, Ljava/util/Date;

    .line 229
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 234
    const-string v2, "Finished to merge from:"

    .line 236
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 267
    const-string v0, "Attempted  to merge:"

    .line 269
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move-result-object v0

    .line 273
    sget v1, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->count:I

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 287
    const-string v0, "Successful to merge:"

    .line 289
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-result-object v0

    .line 293
    sget v1, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->count:I

    .line 295
    sget v2, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->failed:I

    .line 297
    sub-int/2addr v1, v2

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 310
    const-string v0, "Failed     to merge:"

    .line 312
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    move-result-object v0

    .line 316
    sget v1, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->failed:I

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private scanSingleDir(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 12

    .line 1
    new-instance v0, Lorg/jaudiotagger/test/MergeID3AndMP3Files$MP3FileFilter;

    .line 3
    invoke-direct {v0, p0}, Lorg/jaudiotagger/test/MergeID3AndMP3Files$MP3FileFilter;-><init>(Lorg/jaudiotagger/test/MergeID3AndMP3Files;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v1, :cond_4a

    .line 14
    array-length v1, v0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_4a

    .line 18
    aget-object v4, v0, v3

    .line 20
    sget v5, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->count:I

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 24
    sput v5, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->count:I

    .line 26
    :try_start_19
    invoke-static {p2, v4, p3}, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->copyAudioToTmp(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 29
    goto :goto_47

    .line 30
    :catchall_1d
    move-exception v4

    .line 31
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 33
    const-string v6, "Unable to merge record:"

    .line 35
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v6

    .line 39
    sget v7, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->count:I

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v7, ":"

    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget v5, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->failed:I

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 67
    sput v5, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->failed:I

    .line 69
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :goto_47
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_f

    .line 75
    :cond_4a
    new-instance v0, Lorg/jaudiotagger/test/MergeID3AndMP3Files$DirFilter;

    .line 77
    invoke-direct {v0, p0}, Lorg/jaudiotagger/test/MergeID3AndMP3Files$DirFilter;-><init>(Lorg/jaudiotagger/test/MergeID3AndMP3Files;)V

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 83
    move-result-object p1

    .line 84
    array-length v0, p1

    .line 85
    if-lez v0, :cond_6a

    .line 87
    array-length v0, p1

    .line 88
    :goto_57
    if-ge v2, v0, :cond_6a

    .line 90
    aget-object v1, p1, v2

    .line 92
    new-instance v3, Ljava/io/File;

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v1, v3, p3}, Lorg/jaudiotagger/test/MergeID3AndMP3Files;->scanSingleDir(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_57

    .line 107
    :cond_6a
    return-void
.end method
