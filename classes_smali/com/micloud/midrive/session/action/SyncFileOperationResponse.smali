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
.method private constructor <init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess:Z

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public static buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;-><init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    .line 7
    return-object v0
.end method

.method public static buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;-><init>(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public addError(Ljava/lang/String;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->errorMap:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess:Z

    .line 3
    return v0
.end method
