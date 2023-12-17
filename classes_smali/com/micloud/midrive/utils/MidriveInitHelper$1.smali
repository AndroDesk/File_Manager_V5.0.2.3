.class Lcom/micloud/midrive/utils/MidriveInitHelper$1;
.super Ljava/lang/Object;
.source "MidriveInitHelper.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/utils/MidriveInitHelper;->createSimpleLogSender()Lmiui/cloud/common/XLogger$LogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    return-void
.end method
