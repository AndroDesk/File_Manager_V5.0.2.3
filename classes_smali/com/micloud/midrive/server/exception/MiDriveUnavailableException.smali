.class public Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;
.super Lcom/micloud/midrive/server/exception/OperationFailedException;
.source "MiDriveUnavailableException.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
