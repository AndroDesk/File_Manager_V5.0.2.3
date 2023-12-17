.class Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;
.super Ljava/lang/Object;
.source "FileDownloadRequestResult.java"

# interfaces
.implements Ls1/a$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a$a$a<",
        "Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method public bridge synthetic parserMap(Ljava/util/Map;[Ljava/lang/String;)Ls1/a$a;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;->parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    move-result-object p1

    return-object p1
.end method
