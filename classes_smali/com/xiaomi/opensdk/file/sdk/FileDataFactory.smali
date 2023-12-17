.class public Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;
.super Ljava/lang/Object;
.source "FileDataFactory.java"


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
.method public createUploadRequestResult(Ljava/lang/String;)Lp1/e;
    .registers 2

    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->create(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    move-result-object p1

    return-object p1
.end method
