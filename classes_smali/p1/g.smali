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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp1/g;->b:Lp1/d;

    new-instance p2, Lr1/l;

    invoke-direct {p2, p1, p3}, Lr1/l;-><init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V

    iput-object p2, p0, Lp1/g;->c:Lr1/l;

    new-instance p3, Lm1/g;

    invoke-direct {p3, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ls1/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "0.9.0a"

    aput-object v2, v1, p1

    const-string p1, "KssRC4/1.0 %s/%s S3SDK/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lm1/g;->g(ILjava/lang/String;)V

    new-instance p1, Lr1/f;

    invoke-direct {p1, p3, p2}, Lr1/f;-><init>(Lm1/g;Lr1/l;)V

    iput-object p1, p0, Lp1/g;->d:Lr1/f;

    new-instance p1, Lcn/kuaipan/android/kss/download/a;

    invoke-direct {p1, p3}, Lcn/kuaipan/android/kss/download/a;-><init>(Lm1/g;)V

    iput-object p1, p0, Lp1/g;->e:Lcn/kuaipan/android/kss/download/a;

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

    if-eqz p2, :cond_4d

    iget-object v0, p0, Lp1/g;->b:Lp1/d;

    invoke-interface {v0, p1}, Lp1/d;->requestDownload(Lp1/g$a;)Lp1/c;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-interface {v6}, Lp1/c;->getStatus()I

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_26

    :cond_11
    iget-object v1, p0, Lp1/g;->e:Lcn/kuaipan/android/kss/download/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lq1/d;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4, p2}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    const/4 v5, 0x0

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcn/kuaipan/android/kss/download/a;->b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V

    return-void

    :cond_26
    :goto_26
    if-nez v6, :cond_2a

    const/4 p1, 0x0

    goto :goto_2e

    :cond_2a
    invoke-interface {v6}, Lp1/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_41

    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const p2, 0x7acd8

    sget-object p3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p4, "Unknow error when requestDownload."

    invoke-direct {p1, p2, p4, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :cond_41
    new-instance p2, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 p3, 0xc8

    sget-object p4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string v0, "Failed on requestDownload"

    invoke-direct {p2, p3, p1, v0, p4}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :cond_4d
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p2, 0x7a123

    const-string p3, "Save path can\'t be null."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    if-eqz v2, :cond_109

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_109

    const/4 v11, 0x0

    :try_start_21
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lr1/k;->b(Ljava/io/InputStream;Ljava/lang/String;)Lr1/k;

    move-result-object v12
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_101

    iget-object v0, v12, Lr1/k;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lp1/g$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_56
    move-object v0, v11

    :goto_57
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_fb

    if-eqz v0, :cond_63

    iget-boolean v4, v0, Lr1/e;->f:Z

    if-eqz v4, :cond_97

    :cond_63
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    if-nez v0, :cond_69

    move-object v0, v11

    goto :goto_6d

    :cond_69
    invoke-virtual {v0, v13}, Lr1/l;->a(I)Lr1/e;

    move-result-object v0

    :goto_6d
    if-nez v0, :cond_97

    iget-object v0, v1, Lp1/g;->b:Lp1/d;

    invoke-interface {v0, v2, v3, v12}, Lp1/d;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lp1/e;

    move-result-object v0

    new-instance v4, Lr1/e;

    invoke-direct {v4, v12, v0}, Lr1/e;-><init>(Lr1/k;Lp1/e;)V

    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    if-eqz v0, :cond_96

    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    aput-object v4, v5, v14

    new-instance v6, Lr1/i;

    invoke-direct {v6}, Lr1/i;-><init>()V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v0, v15, v5}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    move-object v0, v4

    :cond_97
    iget-object v4, v0, Lr1/e;->c:Lp1/e;

    if-eqz v4, :cond_a3

    invoke-interface {v4}, Lp1/e;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_a3

    move v4, v14

    goto :goto_a4

    :cond_a3
    move v4, v15

    :goto_a4
    if-eqz v4, :cond_e8

    :try_start_a6
    iget-object v4, v1, Lp1/g;->b:Lp1/d;

    invoke-interface {v4, v2, v3, v0}, Lp1/d;->commitUpload(Ljava/io/File;Lp1/g$a;Lr1/e;)V

    if-eqz v10, :cond_bb

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-interface {v10, v4, v5}, Lm1/c;->setSendTotal(J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-interface {v10, v4, v5}, Lm1/c;->setSendPos(J)V

    :cond_bb
    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    if-nez v0, :cond_c0

    goto :goto_cd

    :cond_c0
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-virtual {v0, v14, v4}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catch Lcom/xiaomi/opensdk/exception/ServerException; {:try_start_a6 .. :try_end_cd} :catch_ce

    :goto_cd
    return-void

    :catch_ce
    move-exception v0

    if-nez v16, :cond_e7

    iget-object v0, v1, Lp1/g;->c:Lr1/l;

    if-nez v0, :cond_d6

    goto :goto_e3

    :cond_d6
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-virtual {v0, v14, v4}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e3
    move/from16 v16, v14

    goto/16 :goto_56

    :cond_e7
    throw v0

    :cond_e8
    iget-object v4, v1, Lp1/g;->d:Lr1/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lr1/d;->a(Ljava/io/File;)Lr1/b;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p3

    move v8, v13

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lr1/f;->d(Lr1/d;Lm1/c;Lm1/j$a;ILr1/e;)V

    goto/16 :goto_57

    :cond_fb
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catch_101
    move-exception v0

    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v0, v11, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0

    :cond_109
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v3, 0x7a123

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a exist file."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
