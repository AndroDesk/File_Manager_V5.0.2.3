.class public Lmiuix/navigator/NavigatorStrategy;
.super Ljava/lang/Object;
.source "NavigatorStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/navigator/NavigatorStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompactMode:Lmiuix/navigator/Navigator$Mode;

.field private mIgnoreSaveInstance:Z

.field private mLargeMode:Lmiuix/navigator/Navigator$Mode;

.field private mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

.field private mRegularMode:Lmiuix/navigator/Navigator$Mode;

.field private mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/navigator/NavigatorStrategy$1;

    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy$1;-><init>()V

    sput-object v0, Lmiuix/navigator/NavigatorStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    iput-object v2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    iput-object v2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-void
.end method

.method public static createSimpleStrategy(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    new-instance v0, Lmiuix/navigator/NavigatorStrategy;

    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    invoke-virtual {v0, p0}, Lmiuix/navigator/NavigatorStrategy;->setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    invoke-virtual {v0, p0, p0}, Lmiuix/navigator/NavigatorStrategy;->setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    invoke-virtual {v0, p0, p0}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMode(Lmiuix/responsive/map/ResponsiveState;I)Lmiuix/navigator/Navigator$Mode;
    .registers 5

    invoke-virtual {p1}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_15

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    return-object p1

    :cond_d
    if-ne p2, v1, :cond_12

    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-object p1

    :cond_12
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    return-object p1

    :cond_15
    if-ne p2, v1, :cond_1a

    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-object p1

    :cond_1a
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    return-object p1
.end method

.method public isIgnoreSaveInstance()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    return v0
.end method

.method public setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method public setIgnoreSaveInstance(Z)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    return-object p0
.end method

.method public setLargeMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    invoke-virtual {p0, p1, p1}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    move-result-object p1

    return-object p1
.end method

.method public setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    iput-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method public setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    iput-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method public updateStrategyOnNavigationModeChanged(Lmiuix/responsive/map/ResponsiveState;ILmiuix/navigator/Navigator$Mode;)V
    .registers 6

    invoke-virtual {p1}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_20

    if-eq p1, v1, :cond_d

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_d
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    iget-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    if-ne p1, v0, :cond_18

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_18
    if-ne p2, v1, :cond_1d

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_1d
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_20
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    iget-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    if-ne p1, v0, :cond_2b

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_2b
    if-ne p2, v1, :cond_30

    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    goto :goto_32

    :cond_30
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    :goto_32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-boolean p2, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
