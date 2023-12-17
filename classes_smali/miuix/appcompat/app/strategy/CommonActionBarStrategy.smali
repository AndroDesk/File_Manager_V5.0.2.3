.class public Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;
.super Ljava/lang/Object;
.source "CommonActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .registers 11

    if-eqz p1, :cond_8b

    if-eqz p2, :cond_8b

    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    const/16 v1, 0x3c0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v0, v1, :cond_19

    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto/16 :goto_8c

    :cond_19
    int-to-float v1, v0

    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float v5, v4

    const v6, 0x3f4ccccd  # 0.8f

    mul-float/2addr v5, v6

    cmpg-float v1, v1, v5

    const/16 v5, 0x29e

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-gez v1, :cond_44

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    const/16 v1, 0x19a

    if-ne p2, v7, :cond_31

    if-gt v4, v5, :cond_33

    :cond_31
    if-le v0, v1, :cond_3f

    :cond_33
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-ge v0, v1, :cond_3c

    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_8c

    :cond_3c
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_8c

    :cond_3f
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_8c

    :cond_44
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne v0, v7, :cond_4a

    if-gt v4, v5, :cond_62

    :cond_4a
    if-ne v0, v6, :cond_50

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v4, v1, :cond_62

    :cond_50
    if-ne v0, v2, :cond_67

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x226

    if-gt v0, v1, :cond_67

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-le v0, v1, :cond_67

    :cond_62
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_88

    :cond_67
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    invoke-static {v0}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_86

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-eq v0, v7, :cond_86

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    int-to-float v0, v0

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    const p2, 0x3fd9999a  # 1.7f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_88

    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_88

    :cond_86
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    :cond_88
    :goto_88
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_8c

    :cond_8b
    const/4 p1, 0x0

    :goto_8c
    return-object p1
.end method
