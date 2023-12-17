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
.field public static final ESTIMATE_CATEGORY_BIG:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESTIMATE_CATEGORY_SMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESTIMATE_CATEGORY_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSIVE_LAYOUT_BASE:I = 0x1000

.field public static final RESPONSIVE_LAYOUT_FREEMODE_16_9:I = 0x2001

.field public static final RESPONSIVE_LAYOUT_FREEMODE_3_4:I = 0x2002

.field public static final RESPONSIVE_LAYOUT_FREEMODE_4_3:I = 0x2003

.field public static final RESPONSIVE_LAYOUT_FREEMODE_BASE:I = 0x2000

.field public static final RESPONSIVE_LAYOUT_FREEMODE_NONE:I = 0x2000

.field public static final RESPONSIVE_LAYOUT_FREEMODE_OTHER:I = 0x2004

.field public static final RESPONSIVE_LAYOUT_FULL:I = 0x1007

.field public static final RESPONSIVE_LAYOUT_HALF:I = 0x1002

.field public static final RESPONSIVE_LAYOUT_ONE_THIRD:I = 0x1001

.field public static final RESPONSIVE_LAYOUT_TWO_THIRD:I = 0x1004

.field public static final RESPONSIVE_WINDOW_TYPE_COMPACT:I = 0x1

.field public static final RESPONSIVE_WINDOW_TYPE_LARGE:I = 0x3

.field public static final RESPONSIVE_WINDOW_TYPE_REGULAR:I = 0x2

.field public static final RESPONSIVE_WINDOW_TYPE_TINY:I = 0x0

.field public static final RESPONSIVE_WINDOW_TYPE_UNKNOWN:I = -0x1


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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    .line 8
    const/16 v0, 0x1007

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    .line 20
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    .line 23
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    .line 26
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/responsive/map/ResponsiveState;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_20

    .line 6
    check-cast p1, Lmiuix/responsive/map/ResponsiveState;

    .line 8
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 10
    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 12
    if-ne v0, v2, :cond_20

    .line 14
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 16
    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 18
    if-ne v0, v2, :cond_20

    .line 20
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 22
    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 24
    if-ne v0, v2, :cond_20

    .line 26
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 28
    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 30
    if-ne v0, p1, :cond_20

    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_20
    return v1
.end method

.method public getActualWindowHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 3
    return v0
.end method

.method public getActualWindowWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 3
    return v0
.end method

.method public getCategory()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 3
    return v0
.end method

.method public getScreenMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 3
    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 3
    return v0
.end method

.method public getWindowHeightDp()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    .line 3
    return v0
.end method

.method public getWindowWidthDp()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    .line 3
    return v0
.end method

.method public setActualWindowHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 3
    return-void
.end method

.method public setActualWindowWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 3
    return-void
.end method

.method public setCategory(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 3
    return-void
.end method

.method public setScreenMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 3
    return-void
.end method

.method public setTo(Lmiuix/responsive/map/ResponsiveState;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 5
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 7
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 9
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 11
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    .line 13
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    .line 15
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    .line 17
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    .line 19
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 21
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 23
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 25
    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 27
    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 29
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    .line 31
    :cond_1e
    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 3
    return-void
.end method

.method public setWindowHeightDp(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    .line 3
    return-void
.end method

.method public setWindowWidthDp(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    .line 3
    return-void
.end method

.method public toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    .line 4
    move-result v0

    .line 5
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->type:I

    .line 7
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getCategory()I

    .line 10
    move-result v0

    .line 11
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->category:I

    .line 13
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getScreenMode()I

    .line 16
    move-result v0

    .line 17
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 19
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowWidthDp()I

    .line 22
    move-result v0

    .line 23
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->widthDp:I

    .line 25
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowHeightDp()I

    .line 28
    move-result v0

    .line 29
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->heightDp:I

    .line 31
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowWidth()I

    .line 34
    move-result v0

    .line 35
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->width:I

    .line 37
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowHeight()I

    .line 40
    move-result v0

    .line 41
    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->height:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ResponsiveState@"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "( type = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", mode = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", wWidth "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", wHeight "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 51
    const-string v2, " )"

    .line 53
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V
    .registers 3

    .line 1
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    .line 6
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    .line 11
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    .line 13
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    .line 16
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    .line 18
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    .line 21
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    .line 23
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    .line 26
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    .line 31
    iget p1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowCategory:I

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    .line 36
    return-void
.end method
