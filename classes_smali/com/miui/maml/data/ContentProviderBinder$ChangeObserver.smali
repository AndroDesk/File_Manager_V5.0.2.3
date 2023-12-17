.class public Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-static {p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/data/ContentProviderBinder;->onContentChanged()V

    .line 6
    return-void
.end method
