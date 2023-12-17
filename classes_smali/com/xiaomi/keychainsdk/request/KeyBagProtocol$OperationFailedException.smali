.class public Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;
.super Ljava/lang/Exception;
.source "KeyBagProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationFailedException"
.end annotation


# instance fields
.field public final errCode:I

.field public final errMessage:Ljava/lang/String;

.field public final retryAfter:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errCode:I

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errMessage:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->retryAfter:J

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "errorCode: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errCode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " errMessage: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errMessage:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " retryAfter: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->retryAfter:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
