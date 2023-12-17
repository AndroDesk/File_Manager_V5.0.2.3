.class public abstract Ln4/a;
.super Ln4/h;
.source "AbstractAddFileToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lm4/n;

.field public final e:[C

.field public final f:Lj4/a;


# direct methods
.method public constructor <init>(Lm4/n;[CLj4/a;Ln4/h$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p4}, Ln4/h;-><init>(Ln4/h$a;)V

    .line 4
    iput-object p1, p0, Ln4/a;->d:Lm4/n;

    .line 6
    iput-object p2, p0, Ln4/a;->e:[C

    .line 8
    iput-object p3, p0, Ln4/a;->f:Lj4/a;

    .line 10
    return-void
.end method

.method public static j(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;
    .registers 11

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    .line 3
    invoke-direct {v0, p0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 9
    move-result v1

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    if-eqz v1, :cond_10

    .line 14
    iput-wide v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 16
    goto :goto_16

    .line 17
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 20
    move-result-wide v4

    .line 21
    iput-wide v4, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 23
    :goto_16
    iget-wide v4, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 25
    cmp-long v1, v4, v2

    .line 27
    if-gtz v1, :cond_29

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 32
    move-result-wide v4

    .line 33
    cmp-long v1, v4, v2

    .line 35
    if-gez v1, :cond_27

    .line 37
    iput-wide v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iput-wide v4, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 42
    :cond_29
    :goto_29
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 45
    iget-object v4, p0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 47
    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3a

    .line 53
    invoke-static {p1, p0}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 59
    :cond_3a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_4c

    .line 65
    sget-object p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 67
    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 69
    sget-object p0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 71
    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 73
    iput-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 75
    goto/16 :goto_ba

    .line 77
    :cond_4c
    iget-boolean p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 79
    if-eqz p0, :cond_ae

    .line 81
    iget-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 83
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 85
    if-ne p0, v4, :cond_ae

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_a6

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_a6

    .line 102
    const/16 p0, 0x4000

    .line 104
    new-array p0, p0, [B

    .line 106
    new-instance v4, Ljava/util/zip/CRC32;

    .line 108
    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 111
    new-instance v5, Ljava/io/FileInputStream;

    .line 113
    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    :cond_73
    :try_start_73
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    .line 119
    move-result v6

    .line 120
    const/4 v7, -0x1

    .line 121
    if-eq v6, v7, :cond_92

    .line 123
    invoke-virtual {v4, p0, v1, v6}, Ljava/util/zip/CRC32;->update([BII)V

    .line 126
    int-to-long v6, v6

    .line 127
    invoke-virtual {p2, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    .line 130
    iget-boolean v6, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 132
    if-eqz v6, :cond_73

    .line 134
    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 136
    iput-object p0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 138
    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 140
    iput-object p0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_9c

    .line 142
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 145
    move-wide v6, v2

    .line 146
    goto :goto_99

    .line 147
    :cond_92
    :try_start_92
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 150
    move-result-wide v6
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_9c

    .line 151
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 154
    :goto_99
    iput-wide v6, v0, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    .line 156
    goto :goto_ae

    .line 157
    :catchall_9c
    move-exception p0

    .line 158
    :try_start_9d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    .line 161
    goto :goto_a5

    .line 162
    :catchall_a1
    move-exception p1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 166
    :goto_a5
    throw p0

    .line 167
    :cond_a6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 169
    const-string p1, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    .line 171
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0

    .line 175
    :cond_ae
    :goto_ae
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 178
    move-result-wide p0

    .line 179
    cmp-long p0, p0, v2

    .line 181
    if-nez p0, :cond_ba

    .line 183
    sget-object p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 185
    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 187
    :cond_ba
    :goto_ba
    return-object v0
.end method


# virtual methods
.method public d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 3
    return-object v0
.end method

.method public final g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 13

    .line 1
    iget-object v0, p3, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v1

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_71

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/io/File;

    .line 19
    invoke-static {v2}, Lo4/a;->k(Ljava/io/File;)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_53

    .line 25
    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_28

    .line 33
    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_6

    .line 41
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2f

    .line 47
    goto :goto_6

    .line 48
    :cond_2f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 50
    const-string p2, "Symlink target \'"

    .line 52
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object p2

    .line 56
    invoke-static {v2}, Lo4/a;->o(Ljava/io/File;)Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p3, "\' does not exist for link \'"

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p3, "\'"

    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    :cond_53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5a

    .line 90
    goto :goto_6

    .line 91
    :cond_5a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string p3, "File does not exist: "

    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1

    .line 114
    :cond_71
    iget v0, p2, Lm4/i;->b:I

    .line 116
    new-array v0, v0, [B

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .line 120
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    .line 125
    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 130
    move-result v2

    .line 131
    const/4 v3, 0x0

    .line 132
    if-nez v2, :cond_86

    .line 134
    goto :goto_db

    .line 135
    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object p1

    .line 139
    :cond_8a
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_db

    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/io/File;

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_a3

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_a3
    invoke-static {v2, p3}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    iget-object v5, p0, Ln4/a;->d:Lm4/n;

    .line 170
    invoke-static {v5, v4}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_8a

    .line 176
    iget-boolean v5, p3, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    .line 178
    if-eqz v5, :cond_d7

    .line 180
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    new-instance v2, Ln4/h$a;

    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-direct {v2, v5, p4}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 189
    new-instance v5, Ln4/j;

    .line 191
    iget-object v6, p0, Ln4/a;->d:Lm4/n;

    .line 193
    iget-object v7, p0, Ln4/a;->f:Lj4/a;

    .line 195
    invoke-direct {v5, v6, v7, v2}, Ln4/j;-><init>(Lm4/n;Lj4/a;Ln4/h$a;)V

    .line 198
    new-instance v2, Ln4/j$a;

    .line 200
    iget-object v4, v4, Lm4/b;->k:Ljava/lang/String;

    .line 202
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 205
    move-result-object v4

    .line 206
    invoke-direct {v2, v4, p2}, Ln4/j$a;-><init>(Ljava/util/List;Lm4/i;)V

    .line 209
    invoke-virtual {v5, v2}, Ln4/h;->b(Lm4/m;)V

    .line 212
    invoke-virtual {p0}, Ln4/h;->f()V

    .line 215
    goto :goto_8a

    .line 216
    :cond_d7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    goto :goto_8a

    .line 220
    :cond_db
    :goto_db
    new-instance p1, Ll4/h;

    .line 222
    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    .line 224
    iget-object v4, v2, Lm4/n;->h:Ljava/io/File;

    .line 226
    iget-wide v5, v2, Lm4/n;->g:J

    .line 228
    invoke-direct {p1, v4, v5, v6}, Ll4/h;-><init>(Ljava/io/File;J)V

    .line 231
    :try_start_e6
    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    .line 233
    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_104

    .line 241
    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    .line 243
    iget-boolean v4, v2, Lm4/n;->i:Z

    .line 245
    if-eqz v4, :cond_fb

    .line 247
    iget-object v2, v2, Lm4/n;->e:Lm4/k;

    .line 249
    iget-wide v4, v2, Lm4/k;->j:J

    .line 251
    goto :goto_ff

    .line 252
    :cond_fb
    iget-object v2, v2, Lm4/n;->c:Lm4/d;

    .line 254
    iget-wide v4, v2, Lm4/d;->f:J

    .line 256
    :goto_ff
    iget-object v2, p1, Ll4/h;->a:Ljava/io/RandomAccessFile;

    .line 258
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 261
    :cond_104
    new-instance v2, Ll4/k;

    .line 263
    iget-object v4, p0, Ln4/a;->e:[C

    .line 265
    iget-object v5, p0, Ln4/a;->d:Lm4/n;

    .line 267
    invoke-direct {v2, p1, v4, p2, v5}, Ll4/k;-><init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    :try_end_10d
    .catchall {:try_start_e6 .. :try_end_10d} :catchall_19f

    .line 270
    :try_start_10d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 273
    move-result-object p2

    .line 274
    :goto_111
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_18e

    .line 280
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Ljava/io/File;

    .line 286
    invoke-virtual {p0}, Ln4/h;->f()V

    .line 289
    invoke-static {p3, v1, p4}, Ln4/a;->j(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;

    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 296
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    invoke-static {v1}, Lo4/a;->k(Ljava/io/File;)Z

    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_156

    .line 305
    sget-object v5, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 307
    iget-object v6, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 309
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result v6

    .line 313
    if-nez v6, :cond_147

    .line 315
    sget-object v6, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 317
    iget-object v7, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_145

    .line 325
    goto :goto_147

    .line 326
    :cond_145
    move v6, v3

    .line 327
    goto :goto_148

    .line 328
    :cond_147
    :goto_147
    const/4 v6, 0x1

    .line 329
    :goto_148
    if-eqz v6, :cond_156

    .line 331
    invoke-virtual {p0, v1, v2, v4, p1}, Ln4/a;->h(Ljava/io/File;Ll4/k;Lnet/lingala/zip4j/model/ZipParameters;Ll4/h;)V

    .line 334
    iget-object v6, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 336
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_156

    .line 342
    goto :goto_111

    .line 343
    :cond_156
    invoke-virtual {v2, v4}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_18a

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_18a

    .line 358
    new-instance v4, Ljava/io/FileInputStream;

    .line 360
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16a
    .catchall {:try_start_10d .. :try_end_16a} :catchall_195

    .line 363
    :goto_16a
    :try_start_16a
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 366
    move-result v5

    .line 367
    const/4 v6, -0x1

    .line 368
    if-eq v5, v6, :cond_17c

    .line 370
    invoke-virtual {v2, v0, v3, v5}, Ll4/k;->write([BII)V

    .line 373
    int-to-long v5, v5

    .line 374
    invoke-virtual {p4, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    .line 377
    invoke-virtual {p0}, Ln4/h;->f()V
    :try_end_17b
    .catchall {:try_start_16a .. :try_end_17b} :catchall_180

    .line 380
    goto :goto_16a

    .line 381
    :cond_17c
    :try_start_17c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_195

    .line 384
    goto :goto_18a

    .line 385
    :catchall_180
    move-exception p2

    .line 386
    :try_start_181
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_185

    .line 389
    goto :goto_189

    .line 390
    :catchall_185
    move-exception p3

    .line 391
    :try_start_186
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 394
    :goto_189
    throw p2

    .line 395
    :cond_18a
    :goto_18a
    invoke-virtual {p0, v2, p1, v1, v3}, Ln4/a;->k(Ll4/k;Ll4/h;Ljava/io/File;Z)V
    :try_end_18d
    .catchall {:try_start_186 .. :try_end_18d} :catchall_195

    .line 398
    goto :goto_111

    .line 399
    :cond_18e
    :try_start_18e
    invoke-virtual {v2}, Ll4/k;->close()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_19f

    .line 402
    invoke-virtual {p1}, Ll4/h;->close()V

    .line 405
    return-void

    .line 406
    :catchall_195
    move-exception p2

    .line 407
    :try_start_196
    invoke-virtual {v2}, Ll4/k;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    .line 410
    goto :goto_19e

    .line 411
    :catchall_19a
    move-exception p3

    .line 412
    :try_start_19b
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 415
    :goto_19e
    throw p2
    :try_end_19f
    .catchall {:try_start_19b .. :try_end_19f} :catchall_19f

    .line 416
    :catchall_19f
    move-exception p2

    .line 417
    :try_start_1a0
    invoke-virtual {p1}, Ll4/h;->close()V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_1a4

    .line 420
    goto :goto_1a8

    .line 421
    :catchall_1a4
    move-exception p1

    .line 422
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 425
    :goto_1a8
    throw p2
.end method

.method public final h(Ljava/io/File;Ll4/k;Lnet/lingala/zip4j/model/ZipParameters;Ll4/h;)V
    .registers 11

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    .line 3
    invoke-direct {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 6
    iget-object p3, p3, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "/"

    .line 14
    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v3, :cond_2d

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v4

    .line 32
    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    :cond_2d
    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 48
    iput-boolean v5, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 50
    sget-object p3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 52
    iput-object p3, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 54
    invoke-virtual {p2, v0}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 57
    invoke-static {p1}, Lo4/a;->o(Ljava/io/File;)Ljava/lang/String;

    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Ll4/k;->write([B)V

    .line 68
    invoke-virtual {p0, p2, p4, p1, v4}, Ln4/a;->k(Ll4/k;Ll4/h;Ljava/io/File;Z)V

    .line 71
    return-void
.end method

.method public final i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_4c

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/io/File;

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_19

    .line 25
    goto :goto_6

    .line 26
    :cond_19
    iget-boolean v3, p2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 28
    if-eqz v3, :cond_2b

    .line 30
    iget-object v3, p2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 32
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 34
    if-ne v3, v4, :cond_2b

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 39
    move-result-wide v3

    .line 40
    const-wide/16 v5, 0x2

    .line 42
    mul-long/2addr v3, v5

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 47
    move-result-wide v3

    .line 48
    :goto_2f
    add-long/2addr v3, v0

    .line 49
    invoke-static {v2, p2}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Ln4/a;->d:Lm4/n;

    .line 55
    invoke-static {v1, v0}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_4a

    .line 61
    iget-object v1, p0, Ln4/a;->d:Lm4/n;

    .line 63
    iget-object v1, v1, Lm4/n;->h:Ljava/io/File;

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 68
    move-result-wide v1

    .line 69
    iget-wide v5, v0, Lm4/b;->g:J

    .line 71
    sub-long/2addr v1, v5

    .line 72
    add-long/2addr v1, v3

    .line 73
    move-wide v0, v1

    .line 74
    goto :goto_6

    .line 75
    :cond_4a
    move-wide v0, v3

    .line 76
    goto :goto_6

    .line 77
    :cond_4c
    return-wide v0
.end method

.method public final k(Ll4/k;Ll4/h;Ljava/io/File;Z)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Ll4/k;->a()Lm4/g;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p3}, Lo4/a;->c(Ljava/io/File;)[B

    .line 8
    move-result-object p3

    .line 9
    if-nez p4, :cond_14

    .line 11
    const/4 p4, 0x3

    .line 12
    aget-byte v0, p3, p4

    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-static {v1, v0}, La/b;->f0(IB)B

    .line 18
    move-result v0

    .line 19
    aput-byte v0, p3, p4

    .line 21
    :cond_14
    iput-object p3, p1, Lm4/g;->v:[B

    .line 23
    iget-object p3, p0, Ln4/a;->f:Lj4/a;

    .line 25
    iget-object p4, p0, Ln4/a;->d:Lm4/n;

    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    if-eqz p4, :cond_126

    .line 32
    iget v0, p1, Lm4/g;->u:I

    .line 34
    iget v1, p2, Ll4/h;->d:I

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eq v0, v1, :cond_7f

    .line 40
    iget-object v0, p4, Lm4/n;->h:Ljava/io/File;

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    iget-object p4, p4, Lm4/n;->h:Ljava/io/File;

    .line 48
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    move-result-object p4

    .line 52
    invoke-static {p4}, Lo4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p4

    .line 56
    if-eqz v0, :cond_4b

    .line 58
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v0

    .line 62
    const-string v1, "file.separator"

    .line 64
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    goto :goto_4d

    .line 76
    :cond_4b
    const-string v0, ""

    .line 78
    :goto_4d
    iget v1, p1, Lm4/g;->u:I

    .line 80
    const/16 v4, 0x9

    .line 82
    if-ge v1, v4, :cond_64

    .line 84
    const-string v1, ".z0"

    .line 86
    invoke-static {v0, p4, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object p4

    .line 90
    iget v0, p1, Lm4/g;->u:I

    .line 92
    add-int/2addr v0, v2

    .line 93
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p4

    .line 100
    goto :goto_74

    .line 101
    :cond_64
    const-string v1, ".z"

    .line 103
    invoke-static {v0, p4, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object p4

    .line 107
    iget v0, p1, Lm4/g;->u:I

    .line 109
    add-int/2addr v0, v2

    .line 110
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p4

    .line 117
    :goto_74
    new-instance v0, Ll4/h;

    .line 119
    new-instance v1, Ljava/io/File;

    .line 121
    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-direct {v0, v1}, Ll4/h;-><init>(Ljava/io/File;)V

    .line 127
    goto :goto_81

    .line 128
    :cond_7f
    move-object v0, p2

    .line 129
    move v2, v3

    .line 130
    :goto_81
    invoke-virtual {v0}, Ll4/h;->getFilePointer()J

    .line 133
    move-result-wide v4

    .line 134
    iget-wide v6, p1, Lm4/g;->w:J

    .line 136
    const-wide/16 v8, 0xe

    .line 138
    add-long/2addr v6, v8

    .line 139
    iget-object p4, v0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    .line 141
    invoke-virtual {p4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 146
    check-cast p4, Lj4/a;

    .line 148
    iget-object v1, p3, Lj4/a;->b:[B

    .line 150
    iget-wide v6, p1, Lm4/b;->f:J

    .line 152
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {v6, v7, v1}, Lj4/a;->x(J[B)V

    .line 158
    iget-object p4, p3, Lj4/a;->b:[B

    .line 160
    const/4 v1, 0x4

    .line 161
    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    .line 164
    iget-wide v6, p1, Lm4/b;->h:J

    .line 166
    const-wide v8, 0xffffffffL

    .line 171
    cmp-long p4, v6, v8

    .line 173
    if-ltz p4, :cond_f4

    .line 175
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 177
    check-cast p4, Lj4/a;

    .line 179
    iget-object v6, p3, Lj4/a;->b:[B

    .line 181
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-static {v8, v9, v6}, Lj4/a;->x(J[B)V

    .line 187
    iget-object p4, p3, Lj4/a;->b:[B

    .line 189
    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    .line 192
    iget-object p4, p3, Lj4/a;->b:[B

    .line 194
    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    .line 197
    iget p4, p1, Lm4/b;->i:I

    .line 199
    add-int/2addr p4, v1

    .line 200
    add-int/lit8 p4, p4, 0x2

    .line 202
    add-int/lit8 p4, p4, 0x2

    .line 204
    iget-object v1, v0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    .line 206
    invoke-virtual {v1, p4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 209
    move-result v1

    .line 210
    if-ne v1, p4, :cond_e6

    .line 212
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 214
    check-cast p4, Lj4/a;

    .line 216
    iget-wide v6, p1, Lm4/b;->h:J

    .line 218
    invoke-virtual {p4, v6, v7, v0}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 221
    iget-object p3, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 223
    check-cast p3, Lj4/a;

    .line 225
    iget-wide v6, p1, Lm4/b;->g:J

    .line 227
    invoke-virtual {p3, v6, v7, v0}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 230
    goto :goto_11a

    .line 231
    :cond_e6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 233
    const-string p2, "Unable to skip "

    .line 235
    const-string p3, " bytes to update LFH"

    .line 237
    invoke-static {p2, p4, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 241
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 244
    throw p1

    .line 245
    :cond_f4
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 247
    check-cast p4, Lj4/a;

    .line 249
    iget-object v6, p3, Lj4/a;->b:[B

    .line 251
    iget-wide v7, p1, Lm4/b;->g:J

    .line 253
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    invoke-static {v7, v8, v6}, Lj4/a;->x(J[B)V

    .line 259
    iget-object p4, p3, Lj4/a;->b:[B

    .line 261
    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    .line 264
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    .line 266
    check-cast p4, Lj4/a;

    .line 268
    iget-object v6, p3, Lj4/a;->b:[B

    .line 270
    iget-wide v7, p1, Lm4/b;->h:J

    .line 272
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    invoke-static {v7, v8, v6}, Lj4/a;->x(J[B)V

    .line 278
    iget-object p1, p3, Lj4/a;->b:[B

    .line 280
    invoke-virtual {v0, p1, v3, v1}, Ll4/h;->write([BII)V

    .line 283
    :goto_11a
    if-eqz v2, :cond_120

    .line 285
    invoke-virtual {v0}, Ll4/h;->close()V

    .line 288
    goto :goto_125

    .line 289
    :cond_120
    iget-object p1, p2, Ll4/h;->a:Ljava/io/RandomAccessFile;

    .line 291
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    :goto_125
    return-void

    .line 295
    :cond_126
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 297
    const-string p2, "invalid input parameters, cannot update local file header"

    .line 299
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 302
    throw p1
.end method
