.class public Ljcifs/netbios/Lmhosts;
.super Ljava/lang/Object;
.source "Lmhosts.java"


# static fields
.field private static final FILENAME:Ljava/lang/String;

.field private static final TAB:Ljava/util/Hashtable;

.field private static alt:I

.field private static lastModified:J

.field private static log:Ljcifs/util/LogStream;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.netbios.lmhosts"

    .line 3
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    .line 11
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 14
    sput-object v0, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    .line 16
    const-wide/16 v0, 0x1

    .line 18
    sput-wide v0, Ljcifs/netbios/Lmhosts;->lastModified:J

    .line 20
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 5

    const-class v0, Ljcifs/netbios/Lmhosts;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Ljcifs/netbios/Name;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .registers 8

    const-class v0, Ljcifs/netbios/Lmhosts;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Ljcifs/netbios/Lmhosts;->lastModified:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_28

    .line 5
    sput-wide v3, Ljcifs/netbios/Lmhosts;->lastModified:J

    .line 6
    sget-object v1, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    const/4 v1, 0x0

    .line 7
    sput v1, Ljcifs/netbios/Lmhosts;->alt:I

    .line 8
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    .line 9
    :cond_28
    sget-object v1, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljcifs/netbios/NbtAddress;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_30} :catch_3e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_30} :catch_33
    .catchall {:try_start_3 .. :try_end_30} :catchall_31

    goto :goto_5f

    :catchall_31
    move-exception p0

    goto :goto_61

    :catch_33
    move-exception p0

    .line 10
    :try_start_34
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_5e

    .line 11
    sget-object v1, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5e

    :catch_3e
    move-exception p0

    .line 12
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5e

    .line 13
    sget-object v1, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lmhosts file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object v1, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_31

    :cond_5e
    :goto_5e
    const/4 p0, 0x0

    .line 15
    :goto_5f
    monitor-exit v0

    return-object p0

    :goto_61
    monitor-exit v0

    throw p0
.end method

.method public static populate(Ljava/io/Reader;)V
    .registers 18

    .line 1
    new-instance v1, Ljava/io/BufferedReader;

    .line 3
    move-object/from16 v0, p0

    .line 5
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    :cond_7
    :goto_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1d

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v3

    .line 35
    const/16 v4, 0x23

    .line 37
    if-ne v3, v4, :cond_cd

    .line 39
    const-string v2, "#INCLUDE "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v2

    .line 45
    const-string v3, "#END_ALTERNATE"

    .line 47
    if-eqz v2, :cond_a5

    .line 49
    const/16 v2, 0x5c

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 54
    move-result v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    const-string v5, "smb:"

    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    const/16 v5, 0x2f

    .line 68
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    sget v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 81
    if-lez v0, :cond_96

    .line 83
    :try_start_52
    new-instance v0, Ljava/io/InputStreamReader;

    .line 85
    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    .line 87
    invoke-direct {v4, v2}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    invoke-static {v0}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_7b

    .line 96
    sget v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 100
    sput v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 102
    :cond_65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_6c

    .line 108
    goto :goto_7

    .line 109
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_65

    .line 123
    goto :goto_7

    .line 124
    :catch_7b
    move-exception v0

    .line 125
    sget-object v3, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    const-string v5, "lmhosts URL: "

    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    goto/16 :goto_7

    .line 151
    :cond_96
    new-instance v0, Ljava/io/InputStreamReader;

    .line 153
    new-instance v3, Ljcifs/smb/SmbFileInputStream;

    .line 155
    invoke-direct {v3, v2}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 161
    invoke-static {v0}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    .line 164
    goto/16 :goto_7

    .line 166
    :cond_a5
    const-string v2, "#BEGIN_ALTERNATE"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_b5

    .line 174
    sget v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    sput v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 180
    goto/16 :goto_7

    .line 182
    :cond_b5
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_7

    .line 188
    sget v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 190
    if-gtz v0, :cond_c1

    .line 192
    goto/16 :goto_7

    .line 194
    :cond_c1
    add-int/lit8 v0, v0, -0x1

    .line 196
    sput v0, Ljcifs/netbios/Lmhosts;->alt:I

    .line 198
    new-instance v0, Ljava/io/IOException;

    .line 200
    const-string v1, "no lmhosts alternate includes loaded"

    .line 202
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    throw v0

    .line 206
    :cond_cd
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 209
    move-result v3

    .line 210
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_7

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 219
    move-result-object v3

    .line 220
    const/16 v4, 0x2e

    .line 222
    move v5, v2

    .line 223
    move v9, v5

    .line 224
    move v6, v4

    .line 225
    :goto_e0
    array-length v7, v3

    .line 226
    if-ge v5, v7, :cond_103

    .line 228
    if-eq v6, v4, :cond_e6

    .line 230
    goto :goto_103

    .line 231
    :cond_e6
    move v7, v2

    .line 232
    :goto_e7
    array-length v8, v3

    .line 233
    if-ge v5, v8, :cond_fc

    .line 235
    aget-char v6, v3, v5

    .line 237
    const/16 v8, 0x30

    .line 239
    if-lt v6, v8, :cond_fc

    .line 241
    const/16 v10, 0x39

    .line 243
    if-le v6, v10, :cond_f5

    .line 245
    goto :goto_fc

    .line 246
    :cond_f5
    mul-int/lit8 v7, v7, 0xa

    .line 248
    add-int/2addr v7, v6

    .line 249
    sub-int/2addr v7, v8

    .line 250
    add-int/lit8 v5, v5, 0x1

    .line 252
    goto :goto_e7

    .line 253
    :cond_fc
    :goto_fc
    shl-int/lit8 v8, v9, 0x8

    .line 255
    add-int v9, v8, v7

    .line 257
    add-int/lit8 v5, v5, 0x1

    .line 259
    goto :goto_e0

    .line 260
    :cond_103
    :goto_103
    array-length v2, v3

    .line 261
    if-ge v5, v2, :cond_112

    .line 263
    aget-char v2, v3, v5

    .line 265
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_10f

    .line 271
    goto :goto_112

    .line 272
    :cond_10f
    add-int/lit8 v5, v5, 0x1

    .line 274
    goto :goto_103

    .line 275
    :cond_112
    :goto_112
    move v2, v5

    .line 276
    :goto_113
    array-length v4, v3

    .line 277
    if-ge v2, v4, :cond_122

    .line 279
    aget-char v4, v3, v2

    .line 281
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_11f

    .line 287
    goto :goto_122

    .line 288
    :cond_11f
    add-int/lit8 v2, v2, 0x1

    .line 290
    goto :goto_113

    .line 291
    :cond_122
    :goto_122
    new-instance v3, Ljcifs/netbios/Name;

    .line 293
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    const/16 v2, 0x20

    .line 299
    const/4 v4, 0x0

    .line 300
    invoke-direct {v3, v0, v2, v4}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    new-instance v0, Ljcifs/netbios/NbtAddress;

    .line 305
    const/4 v10, 0x0

    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    const/4 v13, 0x0

    .line 309
    const/4 v14, 0x1

    .line 310
    const/4 v15, 0x1

    .line 311
    sget-object v16, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 313
    move-object v7, v0

    .line 314
    move-object v8, v3

    .line 315
    invoke-direct/range {v7 .. v16}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 318
    sget-object v2, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    .line 320
    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    goto/16 :goto_7
.end method
