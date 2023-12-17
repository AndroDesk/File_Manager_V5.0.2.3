.class Lcom/micloud/midrive/session/SyncSession$4;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/SyncSession;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$4;->this$0:Lcom/micloud/midrive/session/SyncSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$4;->this$0:Lcom/micloud/midrive/session/SyncSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/SyncSession;->access$500(Lcom/micloud/midrive/session/SyncSession;)V

    return-void
.end method
