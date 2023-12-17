.class public final Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;
.super Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.source "TransferBaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/TransferBaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferTaskStep"
.end annotation


# static fields
.field public static final PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

.field public static final PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

.field public static final PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

.field public static final TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 3
    const-string v1, "PERFORM_START"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 10
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 12
    const-string v1, "PREPARE"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 19
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 21
    const-string v1, "TRANSFER_FILE"

    .line 23
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 28
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 30
    const-string v1, "PERFORM_DONE"

    .line 32
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
