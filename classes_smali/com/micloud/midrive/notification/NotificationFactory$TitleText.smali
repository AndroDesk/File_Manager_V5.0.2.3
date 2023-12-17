.class public Lcom/micloud/midrive/notification/NotificationFactory$TitleText;
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
    name = "TitleText"
.end annotation


# instance fields
.field private final mContentText:Lcom/micloud/midrive/notification/ContentText;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>(Lcom/micloud/midrive/notification/ContentText;)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/notification/ContentText;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;->mContentText:Lcom/micloud/midrive/notification/ContentText;

    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;->mContentText:Lcom/micloud/midrive/notification/ContentText;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string p1, "FileExplorer"

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-interface {v0, p1}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
