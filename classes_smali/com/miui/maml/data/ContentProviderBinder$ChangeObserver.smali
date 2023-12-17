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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-static {p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

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

    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-virtual {p1}, Lcom/miui/maml/data/ContentProviderBinder;->onContentChanged()V

    return-void
.end method
