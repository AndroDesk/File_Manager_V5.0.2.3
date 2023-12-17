.class public Lmiuix/appcompat/app/strategy/ActionBarConfig;
.super Ljava/lang/Object;
.source "ActionBarConfig.java"


# instance fields
.field public endMenuMaxItemCount:I

.field public expandState:I

.field public overrideUserEndMenuConfig:Z

.field public overrideUserExpandStateConfig:Z

.field public resizable:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 10
    iput-boolean v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 12
    iput-boolean v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserEndMenuConfig:Z

    .line 14
    const/4 v0, 0x6

    .line 15
    iput v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 17
    return-void
.end method
