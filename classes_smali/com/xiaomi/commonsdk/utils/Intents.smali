.class public Lcom/xiaomi/commonsdk/utils/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
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

.method public static getWipeDataConfirmActivityIntent()Landroid/content/Intent;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/IntentHelper;->getWipeDataConfirmActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
