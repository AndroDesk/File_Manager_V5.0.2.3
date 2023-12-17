.class public Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;
.super Ljava/lang/Exception;
.source "PrivacyPolicyProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationCallFrequentException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "request called too frequent. "

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
