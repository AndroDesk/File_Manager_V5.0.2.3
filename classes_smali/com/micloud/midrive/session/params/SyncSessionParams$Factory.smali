.class public Lcom/micloud/midrive/session/params/SyncSessionParams$Factory;
.super Ljava/lang/Object;
.source "SyncSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/params/SyncSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
