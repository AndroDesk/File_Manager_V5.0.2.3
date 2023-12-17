.class Lcom/miui/maml/ScreenElementRoot$1;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->tick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field public final synthetic val$currentTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    iput-wide p2, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    iget-wide v1, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->reset(J)V

    .line 8
    return-void
.end method
