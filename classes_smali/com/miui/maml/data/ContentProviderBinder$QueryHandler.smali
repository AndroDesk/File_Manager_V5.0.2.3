.class final Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler;-><init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V

    .line 14
    return-void
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    .line 6
    return-object v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-static {p1, p3}, Lcom/miui/maml/data/ContentProviderBinder;->access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    .line 6
    return-void
.end method
