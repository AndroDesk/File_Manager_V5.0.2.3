.class public Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;
.super Lp1/a;
.source "FileDownloadRequestResult.java"

# interfaces
.implements Ls1/a$a;


# static fields
.field public static final PARSER:Ls1/a$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a$a$a<",
            "Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;->PARSER:Ls1/a$a$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lp1/a;-><init>(Ljava/util/Map;)V

    return-void
.end method
