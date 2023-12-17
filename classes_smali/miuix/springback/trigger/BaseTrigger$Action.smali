.class public abstract Lmiuix/springback/trigger/BaseTrigger$Action;
.super Ljava/lang/Object;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/BaseTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation


# static fields
.field public static final DISTANCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnterPoint:I

.field public mTriggerPoint:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/springback/trigger/BaseTrigger$Action$1;

    .line 3
    invoke-direct {v0}, Lmiuix/springback/trigger/BaseTrigger$Action$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/springback/trigger/BaseTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-ltz p1, :cond_e

    .line 6
    if-ltz p2, :cond_e

    .line 8
    if-lt p2, p1, :cond_e

    .line 10
    iput p1, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 12
    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p2, "not allow enterPoint < 0 or triggerPoint < 0 or triggerPoint < enterPoint!"

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1
.end method


# virtual methods
.method public notifyActivated()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onActivated()V

    .line 4
    return-void
.end method

.method public notifyEntered()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onEntered()V

    .line 4
    return-void
.end method

.method public notifyExit()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onExit()V

    .line 4
    return-void
.end method

.method public notifyFinished()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onFinished()V

    .line 4
    return-void
.end method

.method public notifyTriggered()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onTriggered()V

    .line 4
    return-void
.end method

.method public abstract onActivated()V
.end method

.method public onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onEntered()V
.end method

.method public abstract onExit()V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onTriggered()V
.end method
