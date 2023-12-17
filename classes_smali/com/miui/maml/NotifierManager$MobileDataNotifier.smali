.class public Lcom/miui/maml/NotifierManager$MobileDataNotifier;
.super Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataNotifier"
.end annotation


# instance fields
.field private mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5
    invoke-static {}, Lcom/miui/maml/util/MobileDataUtils;->getInstance()Lcom/miui/maml/util/MobileDataUtils;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 11
    return-void
.end method


# virtual methods
.method public onRegister()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/util/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 16
    return-void
.end method
