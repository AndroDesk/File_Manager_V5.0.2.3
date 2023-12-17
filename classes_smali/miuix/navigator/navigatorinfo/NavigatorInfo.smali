.class public abstract Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.super Ljava/lang/Object;
.source "NavigatorInfo.java"


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_26

    .line 17
    check-cast p1, Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 19
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_19

    .line 25
    goto :goto_26

    .line 26
    :cond_19
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 33
    move-result v1

    .line 34
    if-ne p1, v1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v0, v2

    .line 38
    :goto_25
    return v0

    .line 39
    :cond_26
    :goto_26
    return v2
.end method

.method public getNavigationId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->mId:I

    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isStable()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public abstract onNavigate(Lmiuix/navigator/Navigator;)Z
.end method

.method public shouldCloseOverlay()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "{"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "}"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
