.class public Lcom/micloud/midrive/session/TransferSession$TransferStage;
.super Lcom/micloud/midrive/session/BaseSession$Stage;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/TransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferStage"
.end annotation


# static fields
.field public static final FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

.field public static final INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

.field public static final RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 3
    const-string v1, "INIT"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/TransferSession$TransferStage;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 10
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 12
    const-string v1, "RUNNING"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/TransferSession$TransferStage;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 19
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 21
    const-string v1, "FINISH"

    .line 23
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/TransferSession$TransferStage;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
