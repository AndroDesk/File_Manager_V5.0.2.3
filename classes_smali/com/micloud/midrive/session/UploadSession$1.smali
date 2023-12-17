.class Lcom/micloud/midrive/session/UploadSession$1;
.super Ljava/lang/Object;
.source "UploadSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/UploadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/UploadSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/UploadSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession$1;->this$0:Lcom/micloud/midrive/session/UploadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession$1;->this$0:Lcom/micloud/midrive/session/UploadSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/UploadSession;->access$000(Lcom/micloud/midrive/session/UploadSession;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession$1;->this$0:Lcom/micloud/midrive/session/UploadSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/session/UploadSession;->access$102(Lcom/micloud/midrive/session/UploadSession;J)J

    :cond_11
    return-void
.end method
