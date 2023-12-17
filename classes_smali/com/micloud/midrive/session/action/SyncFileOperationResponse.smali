.class public Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.super Ljava/lang/Object;
.source "SyncFileOperationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    }
.end annotation


# instance fields
.field private final errorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;",
            ">;"
        }
    .end annotation
.end field

.field private final errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field private final isSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess:Z

    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    return-void
.end method

.method public static buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3

    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;-><init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    return-object v0
.end method

.method public static buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3

    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;-><init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    return-object v0
.end method


# virtual methods
.method public addError(Ljava/lang/String;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    return-object v0
.end method

.method public getErrorMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess:Z

    return v0
.end method
