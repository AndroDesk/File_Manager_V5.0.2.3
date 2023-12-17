.class Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;
.super Ljava/lang/Object;
.source "FileCommitResult.java"

# interfaces
.implements Ls1/a$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a$a$a<",
        "Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;",
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
.method public varargs parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;-><init>(Ljava/util/Map;Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;)V

    return-object p2
.end method

.method public bridge synthetic parserMap(Ljava/util/Map;[Ljava/lang/String;)Ls1/a$a;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;->parserMap(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    move-result-object p1

    return-object p1
.end method
