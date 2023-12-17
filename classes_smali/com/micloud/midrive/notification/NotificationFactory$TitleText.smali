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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>(Lcom/micloud/midrive/notification/ContentText;)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/notification/ContentText;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;->mContentText:Lcom/micloud/midrive/notification/ContentText;

    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;->mContentText:Lcom/micloud/midrive/notification/ContentText;

    if-nez v0, :cond_7

    const-string p1, "FileExplorer"

    return-object p1

    :cond_7
    invoke-interface {v0, p1}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
