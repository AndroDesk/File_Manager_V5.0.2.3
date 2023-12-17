.class Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;
.super Ljava/lang/Object;
.source "FileUploadRequestResult.java"

# interfaces
.implements Ls1/a$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a$a$a<",
        "Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
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
            "Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;"
        }
    .end annotation

    new-instance p2, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method public bridge synthetic parserMap(Ljava/util/Map;[Ljava/lang/String;)Ls1/a$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;->parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    move-result-object p1

    return-object p1
.end method
