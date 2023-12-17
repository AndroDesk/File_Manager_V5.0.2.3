.class Lmiuix/springback/trigger/CustomTrigger$2;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnSpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method public constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$2;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$2;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/springback/trigger/TriggerState;->handleSpringBack()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method
