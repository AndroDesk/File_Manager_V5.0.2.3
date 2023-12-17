.class public abstract Lcom/xiaomi/opensdk/pdc/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


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


# virtual methods
.method public abstract toJsonObject()Lorg/json/JSONObject;
.end method
