.class public Lcom/micloud/midrive/infos/ErrInfo;
.super Ljava/lang/Object;
.source "ErrInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/ErrInfo$Factory;
    }
.end annotation


# static fields
.field private static final JSON_INT_ERR_CODE:Ljava/lang/String; = "err_code"


# instance fields
.field public errCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 6
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget v1, p0, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 8
    const-string v2, "err_code"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "errInfo {errCode:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 9
    const-string v2, "}"

    .line 11
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
