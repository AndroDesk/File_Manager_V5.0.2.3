.class public Lmiuix/responsive/map/ResponsiveState;
.super Ljava/lang/Object;
.source "ResponsiveState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    }
.end annotation


# static fields
.field public static final ESTIMATE_CATEGORY_BIG:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESTIMATE_CATEGORY_SMALL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESTIMATE_CATEGORY_UNKNOWN:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSIVE_LAYOUT_BASE:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_16_9:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_3_4:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_4_3:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_BASE:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_NONE:I

.field public static final RESPONSIVE_LAYOUT_FREEMODE_OTHER:I

.field public static final RESPONSIVE_LAYOUT_FULL:I

.field public static final RESPONSIVE_LAYOUT_HALF:I

.field public static final RESPONSIVE_LAYOUT_ONE_THIRD:I

.field public static final RESPONSIVE_LAYOUT_TWO_THIRD:I

.field public static final RESPONSIVE_WINDOW_TYPE_COMPACT:I

.field public static final RESPONSIVE_WINDOW_TYPE_LARGE:I

.field public static final RESPONSIVE_WINDOW_TYPE_REGULAR:I

.field public static final RESPONSIVE_WINDOW_TYPE_TINY:I

.field public static final RESPONSIVE_WINDOW_TYPE_UNKNOWN:I


# instance fields
.field private mActualWindowHeight:I

.field private mActualWindowWidth:I

.field private volatile mEstimateCategory:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private volatile mResponsiveWindowType:I

.field private volatile mScreenMode:I

.field private mWindowHeightDp:I

.field private mWindowWidthDp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->ESTIMATE_CATEGORY_BIG:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->ESTIMATE_CATEGORY_SMALL:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->ESTIMATE_CATEGORY_UNKNOWN:I

    const v0, 0x93d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_BASE:I

    const v0, 0x90d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_16_9:I

    const v0, 0x90d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_3_4:I

    const v0, 0x90d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_4_3:I

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_BASE:I

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_NONE:I

    const v0, 0x90d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FREEMODE_OTHER:I

    const v0, 0x93d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_FULL:I

    const v0, 0x93d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_HALF:I

    const v0, 0x93d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_ONE_THIRD:I

    const v0, 0x93d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_LAYOUT_TWO_THIRD:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_WINDOW_TYPE_COMPACT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_WINDOW_TYPE_LARGE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_WINDOW_TYPE_REGULAR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_WINDOW_TYPE_TINY:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveState;->RESPONSIVE_WINDOW_TYPE_UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    const/16 v0, 0x1007

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lmiuix/responsive/map/ResponsiveState;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    check-cast p1, Lmiuix/responsive/map/ResponsiveState;

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    if-ne v0, p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public getActualWindowHeight()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    return v0
.end method

.method public getActualWindowWidth()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    return v0
.end method

.method public getCategory()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    return v0
.end method

.method public getWindowHeightDp()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    return v0
.end method

.method public getWindowWidthDp()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    return v0
.end method

.method public setActualWindowHeight(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    return-void
.end method

.method public setActualWindowWidth(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    return-void
.end method

.method public setCategory(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    return-void
.end method

.method public setScreenMode(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    return-void
.end method

.method public setTo(Lmiuix/responsive/map/ResponsiveState;)V
    .registers 3

    if-eqz p1, :cond_1e

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    :cond_1e
    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    return-void
.end method

.method public setWindowHeightDp(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    return-void
.end method

.method public setWindowWidthDp(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    return-void
.end method

.method public toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->type:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getCategory()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->category:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getScreenMode()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowWidthDp()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->widthDp:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowHeightDp()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->heightDp:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowWidth()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->width:I

    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowHeight()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->height:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ResponsiveState@"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "( type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    const-string v2, " )"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V
    .registers 3

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    iget p1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowCategory:I

    invoke-virtual {p0, p1}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    return-void
.end method
