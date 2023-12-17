.class public Lmiuix/responsive/map/ScreenSpec;
.super Ljava/lang/Object;
.source "ScreenSpec.java"


# instance fields
.field public category:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public height:I

.field public heightDp:I

.field public screenMode:I

.field public type:I

.field public width:I

.field public widthDp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->category:I

    const/16 v1, 0x1007

    iput v1, p0, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->widthDp:I

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->heightDp:I

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->width:I

    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->height:I

    return-void
.end method
