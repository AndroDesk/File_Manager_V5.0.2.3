.class public Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
.super Ljava/lang/Object;
.source "ResponsiveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/map/ResponsiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowInfoWrapper"
.end annotation


# instance fields
.field public windowCategory:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public windowHeight:I

.field public windowHeightDp:I

.field public windowMode:I

.field public windowType:I

.field public windowWidth:I

.field public windowWidthDp:I


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
