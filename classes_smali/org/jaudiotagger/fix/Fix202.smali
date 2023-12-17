.class public Lorg/jaudiotagger/fix/Fix202;
.super Ljava/lang/Object;
.source "Fix202.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/fix/Fix202$OggFileFilter;
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "$Id: Fix202.java 792 2009-05-05 15:59:19Z paultaylor $"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v0, Lorg/jaudiotagger/fix/Fix202;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/fix/Fix202;-><init>()V

    .line 6
    array-length v0, p0

    .line 7
    const-string v1, "usage Fix202 Folder"

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_1a

    .line 12
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 19
    const-string v3, "      You must enter the folder containing the corrupted files"

    .line 21
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 27
    :cond_1a
    new-instance v0, Ljava/io/File;

    .line 29
    const/4 v3, 0x0

    .line 30
    aget-object v4, p0, v3

    .line 32
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    move-result v4

    .line 39
    const-string v5, "      File "

    .line 41
    if-nez v4, :cond_49

    .line 43
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 45
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 50
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v6

    .line 54
    aget-object v7, p0, v3

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v7, " does not exist"

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 74
    :cond_49
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_6e

    .line 80
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 82
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 87
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object v4

    .line 91
    aget-object p0, p0, v3

    .line 93
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string p0, " is not a folder"

    .line 98
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 111
    :cond_6e
    :try_start_6e
    new-instance p0, Lorg/jaudiotagger/fix/Fix202$OggFileFilter;

    .line 113
    invoke-direct {p0}, Lorg/jaudiotagger/fix/Fix202$OggFileFilter;-><init>()V

    .line 116
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 119
    move-result-object p0

    .line 120
    array-length v0, p0

    .line 121
    if-lez v0, :cond_e4

    .line 123
    array-length v0, p0

    .line 124
    :goto_7b
    if-ge v3, v0, :cond_e4

    .line 126
    aget-object v1, p0, v3

    .line 128
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v6, "Processing "

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v6, " "

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9e} :catch_da

    .line 159
    :try_start_9e
    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    .line 161
    invoke-direct {v4}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>()V

    .line 164
    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 167
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 169
    const-string v5, ":Not Broken"

    .line 171
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_ae

    .line 174
    goto :goto_d7

    .line 175
    :catchall_ae
    :try_start_ae
    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    .line 177
    sget-object v5, Lorg/jaudiotagger/fix/Fix;->FIX_OGG_VORBIS_COMMENT_NOT_COUNTING_EMPTY_COLUMNS:Lorg/jaudiotagger/fix/Fix;

    .line 179
    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>(Lorg/jaudiotagger/fix/Fix;)V

    .line 182
    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    .line 189
    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    .line 191
    invoke-direct {v4}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>()V

    .line 194
    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    .line 201
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 203
    const-string v4, ":********Fixed*************"

    .line 205
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_ae .. :try_end_cf} :catchall_d0

    .line 208
    goto :goto_d7

    .line 209
    :catchall_d0
    :try_start_d0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 211
    const-string v4, "Unable to fix"

    .line 213
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d7} :catch_da

    .line 216
    :goto_d7
    add-int/lit8 v3, v3, 0x1

    .line 218
    goto :goto_7b

    .line 219
    :catch_da
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 221
    const-string v0, "Unable to extract tag"

    .line 223
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 229
    :cond_e4
    return-void
.end method
