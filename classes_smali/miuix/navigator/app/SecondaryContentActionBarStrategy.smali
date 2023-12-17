.class public Lmiuix/navigator/app/SecondaryContentActionBarStrategy;
.super Ljava/lang/Object;
.source "SecondaryContentActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .registers 3

    .line 1
    if-eqz p1, :cond_12

    .line 3
    if-eqz p2, :cond_12

    .line 5
    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    .line 7
    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    .line 10
    const/4 p2, 0x0

    .line 11
    iput p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 13
    iput-boolean p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 15
    const/4 p2, 0x3

    .line 16
    iput p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return-object p1
.end method
