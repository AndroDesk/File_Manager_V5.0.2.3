.class public final Lp1/g;
.super Ljava/lang/Object;
.source "KssMaster.java"

# interfaces
.implements Lp1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lp1/g$a;",
        ">",
        "Ljava/lang/Object;",
        "Lp1/f;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Lp1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lr1/l;

.field public final d:Lr1/f;

.field public final e:Lcn/kuaipan/android/kss/download/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp1/d;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lp1/d<",
            "-TT;>;",
            "Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lp1/g;->b:Lp1/d;

    .line 6
    new-instance p2, Lr1/l;

    .line 8
    invoke-direct {p2, p1, p3}, Lr1/l;-><init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V

    .line 11
    iput-object p2, p0, Lp1/g;->c:Lr1/l;

    .line 13
    new-instance p3, Lm1/g;

    .line 15
    invoke-direct {p3, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x4

    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v2, v1, v3

    .line 29
    invoke-static {p1}, Ls1/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    aput-object p1, v1, v2

    .line 36
    const/4 p1, 0x2

    .line 37
    const-string v2, "0.9.0a"

    .line 39
    aput-object v2, v1, p1

    .line 41
    const-string p1, "KssRC4/1.0 %s/%s S3SDK/%s"

    .line 43
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3, v0, p1}, Lm1/g;->g(ILjava/lang/String;)V

    .line 50
    new-instance p1, Lr1/f;

    .line 52
    invoke-direct {p1, p3, p2}, Lr1/f;-><init>(Lm1/g;Lr1/l;)V

    .line 55
    iput-object p1, p0, Lp1/g;->d:Lr1/f;

    .line 57
    new-instance p1, Lcn/kuaipan/android/kss/download/a;

    .line 59
    invoke-direct {p1, p3}, Lcn/kuaipan/android/kss/download/a;-><init>(Lm1/g;)V

    .line 62
    iput-object p1, p0, Lp1/g;->e:Lcn/kuaipan/android/kss/download/a;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Lp1/g$a;Ljava/io/File;Lm1/c;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lm1/c;",
            "Z)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_4d

    .line 3
    iget-object v0, p0, Lp1/g;->b:Lp1/d;

    .line 5
    invoke-interface {v0, p1}, Lp1/d;->requestDownload(Lp1/g$a;)Lp1/c;

    .line 8
    move-result-object v6

    .line 9
    if-eqz v6, :cond_26

    .line 11
    invoke-interface {v6}, Lp1/c;->getStatus()I

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    iget-object v1, p0, Lp1/g;->e:Lcn/kuaipan/android/kss/download/a;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v2, Lq1/d;

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 28
    move-result-wide v3

    .line 29
    invoke-direct {v2, p2, v3, v4, p2}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    .line 32
    const/4 v5, 0x0

    .line 33
    move v3, p4

    .line 34
    move-object v4, p3

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcn/kuaipan/android/kss/download/a;->b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V

    .line 38
    return-void

    .line 39
    :cond_26
    :goto_26
    if-nez v6, :cond_2a

    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-interface {v6}, Lp1/c;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    :goto_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_41

    .line 53
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    .line 55
    const p2, 0x7acd8

    .line 58
    sget-object p3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 60
    const-string p4, "Unknow error when requestDownload."

    .line 62
    invoke-direct {p1, p2, p4, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 65
    throw p1

    .line 66
    :cond_41
    new-instance p2, Lcn/kuaipan/android/exception/ServerMsgException;

    .line 68
    const/16 p3, 0xc8

    .line 70
    sget-object p4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 72
    const-string v0, "Failed on requestDownload"

    .line 74
    invoke-direct {p2, p3, p1, v0, p4}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 77
    throw p2

    .line 78
    :cond_4d
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 80
    const p2, 0x7a123

    .line 83
    const-string p3, "Save path can\'t be null."

    .line 85
    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 88
    throw p1
.end method

.method public final b(Ljava/io/File;Lp1/g$a;Lm1/c;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lm1/c;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move-object/from16 v10, p3

    .line 9
    if-eqz v2, :cond_109

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_109

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_109

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x0

    .line 29
    cmp-long v0, v4, v6

    .line 31
    if-lez v0, :cond_109

    .line 33
    const/4 v11, 0x0

    .line 34
    :try_start_21
    new-instance v0, Ljava/io/FileInputStream;

    .line 36
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-static {v0, v4}, Lr1/k;->b(Ljava/io/InputStream;Ljava/lang/String;)Lr1/k;

    .line 46
    move-result-object v12
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_101

    .line 47
    iget-object v0, v12, Lr1/k;->b:Ljava/lang/String;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v5, ":"

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface/range {p2 .. p2}, Lp1/g$a;->a()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 82
    move-result v13

    .line 83
    const/4 v14, 0x1

    .line 84
    const/4 v15, 0x0

    .line 85
    move/from16 v16, v15

    .line 87
    :goto_56
    move-object v0, v11

    .line 88
    :goto_57
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_fb

    .line 94
    if-eqz v0, :cond_63

    .line 96
    iget-boolean v4, v0, Lr1/e;->f:Z

    .line 98
    if-eqz v4, :cond_97

    .line 100
    :cond_63
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    .line 102
    if-nez v0, :cond_69

    .line 104
    move-object v0, v11

    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    invoke-virtual {v0, v13}, Lr1/l;->a(I)Lr1/e;

    .line 109
    move-result-object v0

    .line 110
    :goto_6d
    if-nez v0, :cond_97

    .line 112
    iget-object v0, v1, Lp1/g;->b:Lp1/d;

    .line 114
    invoke-interface {v0, v2, v3, v12}, Lp1/d;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lp1/e;

    .line 117
    move-result-object v0

    .line 118
    new-instance v4, Lr1/e;

    .line 120
    invoke-direct {v4, v12, v0}, Lr1/e;-><init>(Lr1/k;Lp1/e;)V

    .line 123
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    .line 125
    if-eqz v0, :cond_96

    .line 127
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    .line 129
    const/4 v5, 0x3

    .line 130
    new-array v5, v5, [Ljava/lang/Object;

    .line 132
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v6

    .line 136
    aput-object v6, v5, v15

    .line 138
    aput-object v4, v5, v14

    .line 140
    new-instance v6, Lr1/i;

    .line 142
    invoke-direct {v6}, Lr1/i;-><init>()V

    .line 145
    const/4 v7, 0x2

    .line 146
    aput-object v6, v5, v7

    .line 148
    invoke-virtual {v0, v15, v5}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_96
    move-object v0, v4

    .line 152
    :cond_97
    iget-object v4, v0, Lr1/e;->c:Lp1/e;

    .line 154
    if-eqz v4, :cond_a3

    .line 156
    invoke-interface {v4}, Lp1/e;->isCompleted()Z

    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_a3

    .line 162
    move v4, v14

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move v4, v15

    .line 165
    :goto_a4
    if-eqz v4, :cond_e8

    .line 167
    :try_start_a6
    iget-object v4, v1, Lp1/g;->b:Lp1/d;

    .line 169
    invoke-interface {v4, v2, v3, v0}, Lp1/d;->commitUpload(Ljava/io/File;Lp1/g$a;Lr1/e;)V

    .line 172
    if-eqz v10, :cond_bb

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 177
    move-result-wide v4

    .line 178
    invoke-interface {v10, v4, v5}, Lm1/c;->setSendTotal(J)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 184
    move-result-wide v4

    .line 185
    invoke-interface {v10, v4, v5}, Lm1/c;->setSendPos(J)V

    .line 188
    :cond_bb
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    .line 190
    if-nez v0, :cond_c0

    .line 192
    goto :goto_cd

    .line 193
    :cond_c0
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    .line 195
    new-array v4, v14, [Ljava/lang/Object;

    .line 197
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v5

    .line 201
    aput-object v5, v4, v15

    .line 203
    invoke-virtual {v0, v14, v4}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catch Lcom/xiaomi/opensdk/exception/ServerException; {:try_start_a6 .. :try_end_cd} :catch_ce

    .line 206
    :goto_cd
    return-void

    .line 207
    :catch_ce
    move-exception v0

    .line 208
    if-nez v16, :cond_e7

    .line 210
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    .line 212
    if-nez v0, :cond_d6

    .line 214
    goto :goto_e3

    .line 215
    :cond_d6
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    .line 217
    new-array v4, v14, [Ljava/lang/Object;

    .line 219
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v5

    .line 223
    aput-object v5, v4, v15

    .line 225
    invoke-virtual {v0, v14, v4}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_e3
    move/from16 v16, v14

    .line 230
    goto/16 :goto_56

    .line 232
    :cond_e7
    throw v0

    .line 233
    :cond_e8
    iget-object v4, v1, Lp1/g;->d:Lr1/f;

    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    invoke-static/range {p1 .. p1}, Lr1/d;->a(Ljava/io/File;)Lr1/b;

    .line 241
    move-result-object v5

    .line 242
    const/4 v7, 0x0

    .line 243
    move-object/from16 v6, p3

    .line 245
    move v8, v13

    .line 246
    move-object v9, v0

    .line 247
    invoke-virtual/range {v4 .. v9}, Lr1/f;->d(Lr1/d;Lm1/c;Lm1/j$a;ILr1/e;)V

    .line 250
    goto/16 :goto_57

    .line 252
    :cond_fb
    new-instance v0, Ljava/lang/InterruptedException;

    .line 254
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 257
    throw v0

    .line 258
    :catch_101
    move-exception v0

    .line 259
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    .line 261
    invoke-static {v0, v11, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 264
    move-result-object v0

    .line 265
    throw v0

    .line 266
    :cond_109
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 268
    const v3, 0x7a123

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    const-string v2, " is not a exist file."

    .line 281
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 288
    invoke-direct {v0, v3, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 291
    throw v0
.end method
