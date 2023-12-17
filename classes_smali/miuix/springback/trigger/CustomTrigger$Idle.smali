.class Lmiuix/springback/trigger/CustomTrigger$Idle;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Idle"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Idle;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$Idle;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method public handleScrollStateChange(II)V
    .registers 3

    .line 1
    if-nez p1, :cond_f

    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p2, p1, :cond_8

    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p2, p1, :cond_f

    .line 9
    :cond_8
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Idle;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 11
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 13
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 16
    :cond_f
    return-void
.end method
