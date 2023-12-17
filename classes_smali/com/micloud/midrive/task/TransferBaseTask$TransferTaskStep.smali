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

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    const-string v1, "PERFORM_START"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    const-string v1, "TRANSFER_FILE"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    const-string v1, "PERFORM_DONE"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;-><init>(Ljava/lang/String;)V

    return-void
.end method
