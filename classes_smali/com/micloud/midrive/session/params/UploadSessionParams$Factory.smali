.class public Lcom/micloud/midrive/session/params/UploadSessionParams$Factory;
.super Ljava/lang/Object;
.source "UploadSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/params/UploadSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/session/params/UploadSessionParams;
    .registers 4

    .line 1
    const-string v0, "account_name"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "account_type"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Lcom/micloud/midrive/session/params/UploadSessionParams;

    .line 15
    new-instance v2, Landroid/accounts/Account;

    .line 17
    invoke-direct {v2, v0, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {v1, v2}, Lcom/micloud/midrive/session/params/UploadSessionParams;-><init>(Landroid/accounts/Account;)V

    .line 23
    return-object v1
.end method
