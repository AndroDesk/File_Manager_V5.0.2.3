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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Result{resultCode="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
