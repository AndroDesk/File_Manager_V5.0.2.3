.class public Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "AssetResult.java"


# instance fields
.field public code:I

.field public data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    .line 4
    iput p8, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    .line 6
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    .line 8
    return-void
.end method
