.class public Lcom/micloud/midrive/session/BaseSession$Result;
.super Ljava/lang/Object;
.source "BaseSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/BaseSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;,
        Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;
    }
.end annotation


# instance fields
.field public final failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

.field public final resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    .line 8
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Result{resultCode="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", failedReason="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const/16 v1, 0x7d

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
