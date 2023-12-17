.class public Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;
.super Ljava/lang/Exception;
.source "PrivacyPolicyProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadResponseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method
