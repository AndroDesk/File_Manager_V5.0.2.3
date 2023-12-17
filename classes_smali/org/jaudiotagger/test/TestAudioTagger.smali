.class public Lorg/jaudiotagger/test/TestAudioTagger;
.super Ljava/lang/Object;
.source "TestAudioTagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/test/TestAudioTagger$DirFilter;
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

.method public static main([Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/test/TestAudioTagger;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/test/TestAudioTagger;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const-string v2, "usage TestAudioTagger Dirname"

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
    const-string v4, "      You must enter the root directory"

    .line 21
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 27
    goto :goto_2d

    .line 28
    :cond_1b
    array-length v1, p0

    .line 29
    if-le v1, v3, :cond_2d

    .line 31
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 33
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 38
    const-string v4, "      Only one parameter accepted"

    .line 40
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 46
    :cond_2d
    :goto_2d
    new-instance v1, Ljava/io/File;

    .line 48
    const/4 v4, 0x0

    .line 49
    aget-object v5, p0, v4

    .line 51
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_5c

    .line 60
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 62
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 67
    const-string v5, "      Directory "

    .line 69
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v5

    .line 73
    aget-object p0, p0, v4

    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string p0, " could not be found"

    .line 80
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 93
    :cond_5c
    new-instance p0, Ljava/util/Date;

    .line 95
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 98
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 100
    const-string v3, "Started to read from:"

    .line 102
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v5, " at "

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-direct {v0, v1}, Lorg/jaudiotagger/test/TestAudioTagger;->scanSingleDir(Ljava/io/File;)V

    .line 139
    new-instance v0, Ljava/util/Date;

    .line 141
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 144
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 146
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 180
    const-string v2, "Finished to read from:"

    .line 182
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 213
    const-string v0, "Attempted  to read:"

    .line 215
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    move-result-object v0

    .line 219
    sget v1, Lorg/jaudiotagger/test/TestAudioTagger;->count:I

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 233
    const-string v0, "Successful to read:"

    .line 235
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move-result-object v0

    .line 239
    sget v1, Lorg/jaudiotagger/test/TestAudioTagger;->count:I

    .line 241
    sget v2, Lorg/jaudiotagger/test/TestAudioTagger;->failed:I

    .line 243
    sub-int/2addr v1, v2

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 256
    const-string v0, "Failed     to read:"

    .line 258
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move-result-object v0

    .line 262
    sget v1, Lorg/jaudiotagger/test/TestAudioTagger;->failed:I

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private scanSingleDir(Ljava/io/File;)V
    .registers 11

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/AudioFileFilter;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/AudioFileFilter;-><init>(Z)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    array-length v2, v0

    .line 12
    if-lez v2, :cond_4a

    .line 14
    array-length v2, v0

    .line 15
    move v3, v1

    .line 16
    :goto_f
    if-ge v3, v2, :cond_4a

    .line 18
    aget-object v4, v0, v3

    .line 20
    sget v5, Lorg/jaudiotagger/test/TestAudioTagger;->count:I

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 24
    sput v5, Lorg/jaudiotagger/test/TestAudioTagger;->count:I

    .line 26
    :try_start_19
    invoke-static {v4}, Lorg/jaudiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 29
    goto :goto_47

    .line 30
    :catchall_1d
    move-exception v5

    .line 31
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 33
    const-string v7, "Unable to read record:"

    .line 35
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v7

    .line 39
    sget v8, Lorg/jaudiotagger/test/TestAudioTagger;->count:I

    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v8, ":"

    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget v4, Lorg/jaudiotagger/test/TestAudioTagger;->failed:I

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 67
    sput v4, Lorg/jaudiotagger/test/TestAudioTagger;->failed:I

    .line 69
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :goto_47
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_f

    .line 75
    :cond_4a
    new-instance v0, Lorg/jaudiotagger/test/TestAudioTagger$DirFilter;

    .line 77
    invoke-direct {v0, p0}, Lorg/jaudiotagger/test/TestAudioTagger$DirFilter;-><init>(Lorg/jaudiotagger/test/TestAudioTagger;)V

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 83
    move-result-object p1

    .line 84
    array-length v0, p1

    .line 85
    if-lez v0, :cond_61

    .line 87
    array-length v0, p1

    .line 88
    :goto_57
    if-ge v1, v0, :cond_61

    .line 90
    aget-object v2, p1, v1

    .line 92
    invoke-direct {p0, v2}, Lorg/jaudiotagger/test/TestAudioTagger;->scanSingleDir(Ljava/io/File;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_57

    .line 98
    :cond_61
    return-void
.end method
