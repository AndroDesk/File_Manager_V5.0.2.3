.class public interface abstract Lcom/xiaomi/opensdk/pdc/UploadOperation;
.super Ljava/lang/Object;
.source "UploadOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getOperationJson()Lorg/json/JSONObject;
.end method
