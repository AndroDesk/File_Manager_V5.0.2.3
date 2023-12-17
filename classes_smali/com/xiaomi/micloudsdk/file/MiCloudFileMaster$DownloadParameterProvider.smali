.class public interface abstract Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;
.super Ljava/lang/Object;
.source "MiCloudFileMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadParameterProvider"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getDownloadJSONObject()Lorg/json/JSONObject;
.end method
