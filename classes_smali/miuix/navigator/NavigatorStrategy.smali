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

    .line 1
    new-instance v0, Lmiuix/navigator/NavigatorStrategy$1;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/navigator/NavigatorStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 16
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 17
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 18
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 19
    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 20
    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 3
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 4
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 5
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    iput-object v2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 6
    iput-object v1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 7
    iput-object v2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 9
    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 10
    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 11
    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 12
    invoke-static {}, Lmiuix/navigator/Navigator$Mode;->values()[Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 13
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

    .line 1
    new-instance v0, Lmiuix/navigator/NavigatorStrategy;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lmiuix/navigator/NavigatorStrategy;->setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 9
    invoke-virtual {v0, p0, p0}, Lmiuix/navigator/NavigatorStrategy;->setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 12
    invoke-virtual {v0, p0, p0}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 15
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

    .line 1
    invoke-virtual {p1}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq p1, v0, :cond_15

    .line 9
    if-eq p1, v1, :cond_d

    .line 11
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 13
    return-object p1

    .line 14
    :cond_d
    if-ne p2, v1, :cond_12

    .line 16
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 18
    return-object p1

    .line 19
    :cond_12
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 21
    return-object p1

    .line 22
    :cond_15
    if-ne p2, v1, :cond_1a

    .line 24
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 29
    return-object p1
.end method

.method public isIgnoreSaveInstance()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 3
    return v0
.end method

.method public setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    return-object p0
.end method

.method public setIgnoreSaveInstance(Z)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 3
    return-object p0
.end method

.method public setLargeMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    .line 1
    invoke-virtual {p0, p1, p1}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    move-result-object p1

    return-object p1
.end method

.method public setLargeMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 3

    .line 2
    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method public setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 5
    return-object p0
.end method

.method public updateStrategyOnNavigationModeChanged(Lmiuix/responsive/map/ResponsiveState;ILmiuix/navigator/Navigator$Mode;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq p1, v0, :cond_20

    .line 9
    if-eq p1, v1, :cond_d

    .line 11
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 13
    goto :goto_32

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 16
    iget-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 18
    if-ne p1, v0, :cond_18

    .line 20
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 22
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 24
    goto :goto_32

    .line 25
    :cond_18
    if-ne p2, v1, :cond_1d

    .line 27
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 29
    goto :goto_32

    .line 30
    :cond_1d
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 32
    goto :goto_32

    .line 33
    :cond_20
    iget-object p1, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 35
    iget-object v0, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 37
    if-ne p1, v0, :cond_2b

    .line 39
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 41
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    if-ne p2, v1, :cond_30

    .line 46
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    iput-object p3, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 51
    :goto_32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-boolean p2, p0, Lmiuix/navigator/NavigatorStrategy;->mIgnoreSaveInstance:Z

    .line 3
    int-to-byte p2, p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mCompactMode:Lmiuix/navigator/Navigator$Mode;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularMode:Lmiuix/navigator/Navigator$Mode;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mRegularModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeMode:Lmiuix/navigator/Navigator$Mode;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lmiuix/navigator/NavigatorStrategy;->mLargeModeInFold:Lmiuix/navigator/Navigator$Mode;

    .line 45
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
