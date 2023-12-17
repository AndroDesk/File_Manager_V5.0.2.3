.class public Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;
.super Ljava/lang/Object;
.source "NotificationFactory.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/notification/NotificationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRunningText"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p1, "sync service running"

    return-object p1
.end method
