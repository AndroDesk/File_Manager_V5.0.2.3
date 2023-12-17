.class public abstract Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.super Ljava/lang/Object;
.source "NavigatorInfo.java"


# static fields
.field public static final NO_ID:I


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->NO_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-eqz v1, :cond_26

    check-cast p1, Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_26

    :cond_19
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v1

    if-ne p1, v1, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v2
.end method

.method public getNavigationId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->mId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public isStable()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
