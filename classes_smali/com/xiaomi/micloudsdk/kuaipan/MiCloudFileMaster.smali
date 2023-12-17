.class public Lcom/xiaomi/micloudsdk/kuaipan/MiCloudFileMaster;
.super Ljava/lang/Object;
.source "MiCloudFileMaster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lp1/g$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCloudFileMaster"


# instance fields
.field public kssMaster:Lp1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lp1/g;

    .line 6
    new-instance v1, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    .line 8
    invoke-direct {v1}, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;-><init>()V

    .line 11
    invoke-direct {v0, p1, p2, v1}, Lp1/g;-><init>(Landroid/content/Context;Lp1/d;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V

    .line 14
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/MiCloudFileMaster;->kssMaster:Lp1/g;

    .line 16
    return-void
.end method


# virtual methods
.method public download(Lp1/g$a;Ljava/io/File;Lm1/c;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lm1/c;",
            "Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/MiCloudFileMaster;->kssMaster:Lp1/g;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lp1/g;->a(Lp1/g$a;Ljava/io/File;Lm1/c;Z)V
    :try_end_5
    .catch Lcom/xiaomi/opensdk/exception/ServerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-void

    .line 7
    :catch_6
    move-exception p1

    .line 8
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/exception/ServerException;->getStatusCode()I

    .line 13
    move-result p3

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p3, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 21
    throw p2
.end method

.method public upload(Ljava/io/File;Lp1/g$a;Lm1/c;)V
    .registers 5
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
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/MiCloudFileMaster;->kssMaster:Lp1/g;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lp1/g;->b(Ljava/io/File;Lp1/g$a;Lm1/c;)V
    :try_end_5
    .catch Lcom/xiaomi/opensdk/exception/ServerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-void

    .line 7
    :catch_6
    move-exception p1

    .line 8
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/exception/ServerException;->getStatusCode()I

    .line 13
    move-result p3

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p3, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 21
    throw p2
.end method
