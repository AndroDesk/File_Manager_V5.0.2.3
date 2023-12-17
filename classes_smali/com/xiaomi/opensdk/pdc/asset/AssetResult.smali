.class public Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "AssetResult.java"


# instance fields
.field public code:I

.field public data:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    .registers 10

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    iput p8, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    return-void
.end method
